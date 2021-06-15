import 'dart:io';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/core/utils/file_utils.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:flutter/foundation.dart';

class VehiclePhotosUsecase
    extends BaseUsecase<VehiclePhotosParams, VehiclePhotosParams> {
  AddVehicleRepository _repository;

  VehiclePhotosUsecase(AddVehicleRepository repository) {
    this._repository = repository;
  }

  Future<ResponseWrapper<PhotosResponse>> callOld(
      AddVehiclePhotosParams params) async {
    ResponseWrapper<PhotosResponse> _responseWrapper =
        ResponseWrapper<PhotosResponse>();
    int id = params.id;
    if (id == null) {
      ResponseWrapper<AddVehicleInitialResponse> _re =
          await _repository.getVehicleId(
              addVehicleInitialPostBody:
                  AddVehicleInitialPostBody(isMobile: true));
      if (_re.error != null) {
        return ResponseWrapper(error: _re.error);
      }
      id = _re.body.id;
    }
    final List<Photo> _photos = [];
    final photoList = params.photos;
    final _ret = await _repository.addVehiclePhotos(photos: photoList, id: id);
    if (_ret.error != null) {
      _responseWrapper.error = _ret.error;
    } else {
      for (var element in _ret.body.newUploadPhotos) {
        var _oldName = element.substring(element.lastIndexOf("-") + 1);
        var _p = photoList.firstWhere((p) => p.local.path.endsWith(_oldName));
        _p?.name = element;
      }

      for (var name in _ret.body.photos) {
        var _index = photoList.indexWhere((e) => e.name == name);
        if (_index != -1) {
          var p = photoList.removeAt(_index);
          p.name = name;
          _photos.add(p);
        } else {
          var _r =
              await _downloadPhoto(name: name, userId: params.userId, id: id);
          if (_r.body != null) {
            var p = Photo();
            p.name = name;
            p.local = _r.body;
            _photos.add(p);
          }
        }
      }
      _responseWrapper.body = PhotosResponse(photos: _photos, id: id);
    }

    return _responseWrapper;
  }

  Future<ResponseWrapper<VehiclePhotosParams>> deletePhotos(
      VehiclePhotosParams params) async {
    ResponseWrapper<VehiclePhotosParams> _rW =
        ResponseWrapper<VehiclePhotosParams>();
    _rW.body = params;
    final id = params.id;
    final userId = params.userId;
    List<String> serverPhotoOrder = [];
    if (params.deletedPhotos.isNotEmpty) {
      final _d = await _repository.deleteVehiclePhotos(
          photos: params.deletedPhotos.map((e) => e.name).toList(), id: id);
      if (_d.error != null) {
        _rW.error = _d.error;
        return _rW;
      } else {
        if (_d.body.success &&
            _d.body.photos != null &&
            _d.body.deletedPhotos != null) {
          serverPhotoOrder = _d.body.photos;
          for (var name in _d.body.deletedPhotos) {
            var _idx = _rW.body.deletedPhotos.indexWhere((p) => p.name == name);
            if (_idx != -1) {
              _rW.body.deletedPhotos.removeAt(_idx);
            }
          }
          await addRemoveServerPhotosNoDownload(
              photos: _rW.body.photos,
              server: _d.body.photos,
              userId: userId,
              id: id);
        }
      }
    }
    return _rW;
  }

  @override
  Future<ResponseWrapper<VehiclePhotosParams>> call(
      VehiclePhotosParams params) async {
    ResponseWrapper<VehiclePhotosParams> _rW =
        ResponseWrapper<VehiclePhotosParams>();
    _rW.body = params;
    List<String> serverPhotoOrder = [];
    int userId = params.userId;
    //Check for post id
    int id = params.id;
    if (id == null) {
      ResponseWrapper<AddVehicleInitialResponse> _re =
          await _repository.getVehicleId(
              addVehicleInitialPostBody:
                  AddVehicleInitialPostBody(isMobile: true));
      if (_re.error != null) {
        return ResponseWrapper(error: _re.error);
      }
      id = _re.body.id;
      _rW.body.id = id;
    }
    final uploadPhotos = params.photos.where((p) => p.name == null).toList();
    //final photos = _rW.body.photos;
    //Delete photos
    if (params.deletedPhotos.isNotEmpty) {
      final _d = await _repository.deleteVehiclePhotos(
          photos: params.deletedPhotos.map((e) => e.name).toList(), id: id);
      if (_d.error != null) {
        _rW.error = _d.error;
        return _rW;
      } else {
        if (_d.body.success &&
            _d.body.photos != null &&
            _d.body.deletedPhotos != null) {
          serverPhotoOrder = _d.body.photos;
          for (var name in _d.body.deletedPhotos) {
            var _idx = _rW.body.deletedPhotos.indexWhere((p) => p.name == name);
            if (_idx != -1) {
              _rW.body.deletedPhotos.removeAt(_idx);
            }
          }
          await _addRemoveServerPhotos(
              photos: _rW.body.photos,
              server: _d.body.photos,
              userId: userId,
              id: id);
        }
      }
    }
    //Add photos
    final saveDir = await (await FileUtils.instance)
        .getCreateSavePhotosDirPath(id.toString());
    if (uploadPhotos.isNotEmpty) {
      for (var uploadPhoto in uploadPhotos) {
        final _u =
            await _repository.addVehiclePhotos(photos: [uploadPhoto], id: id);
        if (_u.error != null) {
          _rW.error = _u.error;
          return _rW;
        } else {
          if (_u.body.success &&
              _u.body.photos != null &&
              _u.body.newUploadPhotos != null) {
            serverPhotoOrder = _u.body.photos;

            for (var element in _u.body.newUploadPhotos) {
              var _oldName = element.substring(element.lastIndexOf("-") + 1);
              var _p = _rW.body.photos
                  .firstWhere((p) => p.local.path.endsWith(_oldName));
              _p?.name = element;
              var to = '$saveDir/$element';
              _p.local = await FileUtils.copyFileTo(_p.local.path, to);
            }
            await _addRemoveServerPhotos(
                photos: _rW.body.photos,
                server: _u.body.photos,
                userId: userId,
                id: id);
          }
        }
      }
    }
    //Order photos
    var shouldOrder = true;
    if (_rW.body.photos.length == serverPhotoOrder.length) {
      shouldOrder = false;
      for (var i = 0; i < serverPhotoOrder.length; i++) {
        if (_rW.body.photos[i].name != serverPhotoOrder[i]) {
          shouldOrder = true;
          break;
        }
      }
    }
    if (shouldOrder) {
      final _o = await _repository.orderVehiclePhotos(
          photos: _rW.body.photos.map((e) => e.name).toList(), id: id);
      if (_o.error != null) {
        _rW.error = _o.error;
        return _rW;
      } else {
        if (_o.body.success && _o.body.photos != null) {
          serverPhotoOrder = _o.body.photos;
          await _addRemoveServerPhotos(
              photos: _rW.body.photos,
              server: _o.body.photos,
              userId: userId,
              id: id);
          List<Photo> _ph = [];
          for (var name in serverPhotoOrder) {
            var _idx = _rW.body.photos.indexWhere((p) => p.name == name);
            if (_idx != -1) {
              _ph.add(_rW.body.photos.removeAt(_idx));
            }
          }
          VehiclePhotosParams _vp = VehiclePhotosParams(
              userId: _rW.body.userId,
              photos: _ph,
              deletedPhotos: _rW.body.deletedPhotos,
              id: id);
          _rW.body = _vp;
        }
      }
    }

    return _rW;
  }

  static Future<void> addRemoveServerPhotosNoDownload(
      {List<Photo> photos, List<String> server, int userId, int id}) async {
    //Remove server photos that are already deleted
    List<int> _removeIdx = [];
    for (var i = 0; i < photos.length; i++) {
      var p = photos[i];
      //p is server && removed from server
      if (p.name != null && server.indexOf(p.name) == -1) {
        _removeIdx.add(i);
      }
    }
    //remove from the highest index
    for (var i in _removeIdx.reversed) {
      photos.removeAt(i);
    }
    //Get new server photos
    for (var name in server) {
      var _index = photos.indexWhere((e) => e.name != null && e.name == name);
      if (_index == -1) {
        var urlPath =
            'https://autodb-static-resources.s3.eu-west-1.amazonaws.com/images/ads/$id/$name';
        var p = Photo();
        p.name = name;
        p.urlPath = urlPath;
        photos.add(p);
      }
    }
  }

  Future<void> _addRemoveServerPhotos(
      {List<Photo> photos, List<String> server, int userId, int id}) async {
    //Remove server photos that are already deleted
    List<int> _removeIdx = [];
    for (var i = 0; i < photos.length; i++) {
      var p = photos[i];
      //p is server && removed from server
      if (p.name != null && server.indexOf(p.name) == -1) {
        _removeIdx.add(i);
      }
    }
    //remove from the highest index
    for (var i in _removeIdx.reversed) {
      photos.removeAt(i);
    }
    //Get new server photos
    for (var name in server) {
      var _index = photos.indexWhere((e) => e.name == name);
      if (_index == -1) {
        var _r = await _downloadPhoto(name: name, userId: userId, id: id);
        if (_r.body != null) {
          var p = Photo();
          p.name = name;
          p.local = _r.body;
          photos.add(p);
        }
      }
    }
  }

  Future<ResponseWrapper<File>> _downloadPhoto(
      {String name, int userId, int id}) async {
    final savePath = await (await FileUtils.instance)
        .getCreateSavePhotosDirPath(id.toString());
    return await _repository.downloadVehiclePhoto(
        name: name, userId: userId, savePath: savePath);
  }

  Future<ResponseWrapper<List<Photo>>> downloadPhotos(
      {List<String> names, int userId, int id}) async {
    ResponseWrapper<List<Photo>> _rw = ResponseWrapper();
    _rw.body = List<Photo>();
    for (var name in names) {
      var _p = Photo();
      _p.name = name;
      var _r = await _downloadPhoto(name: name, userId: userId, id: id);
      if (_r.error != null) {
        _rw.error = _r.error;
      } else if (_r.body != null) {
        _p.local = _r.body;
        _rw.body.add(_p);
      }
    }
    return _rw;
  }
}

class VehiclePhotosParams {
  final List<Photo> photos;
  final List<Photo> deletedPhotos;
  final int userId;
  int id;
  String saveDir;

  VehiclePhotosParams({
    @required this.userId,
    this.photos = const [],
    this.deletedPhotos = const [],
    this.id,
    this.saveDir,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'saveDir': saveDir,
      'photos': photos.map((e) => e.toMap()).toList(),
      'deletedPhotos': deletedPhotos.map((e) => e.toMap()).toList(),
    };
  }

  static VehiclePhotosParams fromMap(Map<String, dynamic> map) {
    int id = map['id'] as int;
    int userId = map['userId'] as int;
    String saveDir = map['saveDir'] as String;
    List<Photo> photos =
        map['photos'].map<Photo>((m) => Photo.fromMap(m)).toList();
    List<Photo> deletedPhotos =
        map['deletedPhotos'].map<Photo>((m) => Photo.fromMap(m)).toList();

    return VehiclePhotosParams(
      id: id,
      userId: userId,
      photos: photos,
      deletedPhotos: deletedPhotos,
      saveDir: saveDir,
    );
  }
}

class AddVehiclePhotosParams {
  final List<Photo> photos;
  final int userId;
  final int id;

  AddVehiclePhotosParams(
      {@required this.photos, @required this.userId, this.id});
}

class PhotosResponse {
  final List<Photo> photos;
  final int id;

  PhotosResponse({@required this.photos, this.id});
}
