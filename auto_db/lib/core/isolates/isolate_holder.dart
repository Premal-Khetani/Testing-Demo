import 'dart:isolate';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/data/repositories/add_vehicle_repository_implementation.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/vehicle_photos_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class IMessageListener {
  void messageListener(dynamic message);
}

class AddPhotosIsolateHolder {
  AddPhotosIsolateHolder(this._isolate, this._sendPort);
  SendPort _sendPort;
  Isolate _isolate;
  void Function({VehiclePhotosParams params, int complete, int total})
      onGlobalProgress;
  void Function({Photo photo, VehiclePhotosParams params}) onProgress;
  VehiclePhotosParams state;
  List<Photo> uploadPhotos;
  int totalCount;
  int completed = 0;
  String authorization = '';
  bool _working = false;

  static Future<AddPhotosIsolateHolder> createIsolate() async {
    ReceivePort receivePort = ReceivePort();
    Isolate _isolate =
        await Isolate.spawn(_callbackFunction, receivePort.sendPort);
    SendPort newIsolateSendPort = await receivePort.first;
    return AddPhotosIsolateHolder(_isolate, newIsolateSendPort);
  }

  Future<void> _recreateIsolate() async {
    _isolate?.kill(priority: Isolate.immediate);
    _isolate = null;
    ReceivePort receivePort = ReceivePort();
    _isolate = await Isolate.spawn(_callbackFunction, receivePort.sendPort);
    _sendPort = await receivePort.first;
  }

  /// The entry point of the new isolate it must be static or toplevel function
  static void _callbackFunction(SendPort callerSendPort) {
    // Instantiate a SendPort to receive message from the caller
    ReceivePort newIsolateReceivePort = ReceivePort();

    // Provide the caller with the reference of THIS isolate's SendPort
    callerSendPort.send(newIsolateReceivePort.sendPort);

    final api = AddPhotosIsolate();
    // Isolate main routine that listens to incoming messages,
    // processes it and provides an answer
    newIsolateReceivePort.listen(api.messageListener);
  }

  void dispose() {
    _isolate?.kill(priority: Isolate.immediate);
    _isolate = null;
  }

  Future<void> addOrderPhotos(VehiclePhotosParams params) async {
    if (_working) {
      await _recreateIsolate();
    }
    _working = true;
    state = params;
    uploadPhotos = params.photos.map((e) {
      e.asset = null;
      if (e.name == null) {
        e.progress = 0;
      }
      return e;
    }).toList();
    totalCount = params.photos.where((p) => p.name == null).length;
    completed = 0;
    // We create a temporary port to receive the answer
    ReceivePort port = ReceivePort();
    // We send the message to the Isolate, and also
    // tell the isolate which port to use to provide
    // any answer
    _sendPort.send(CrossIsolatesMessage<Map>(
        sender: port.sendPort,
        data: params.toMap(),
        extra: authorization,
        operation: CrossIsolatesMessageOperation.UploadPhotos));

    port.listen((message) {
      if (message != null) {
        CrossIsolatesMessageResponse mr =
            message as CrossIsolatesMessageResponse;
        if (mr.operation == CrossIsolatesMessageResponseOperation.Progress) {
          Photo ph = Photo.fromMap(mr.data['photo']);
          _handleProgress(
              mr.data['count'] as int, mr.data['total'] as int, ph);
        } else if (mr.operation ==
            CrossIsolatesMessageResponseOperation.GlobalProgress) {
          Photo ph = Photo.fromMap(mr.data['photo']);
          List<Photo> photos =
              mr.data['photos'].map<Photo>((m) => Photo.fromMap(m)).toList();
          _handleGlobalProgress(
              mr.data['count'] as int, mr.data['total'] as int, ph, photos);
        }
      }
    });
  }

  void _handleProgress(int count, int total, Photo ph) {
    var idx = state.photos
        .indexWhere((el) => el.local != null && el.local.path == ph.local.path);
    if (idx != -1) {
      //var p = state.photos[idx];
      //ph.asset = p.asset;
      state.photos[idx] = ph;
      if (onProgress != null) {
        onProgress(photo: ph, params: state);
      }
    }
  }

  void _handleGlobalProgress(
      int count, int total, Photo photo, List<Photo> photos) {
    completed = count;
    totalCount = total;
    state.photos.forEach((p) {
      if (p.local != null) {
        var idx = photos.indexWhere(
            (el) => el.local != null && el.local.path == p.local.path);
        if (idx != -1) {
          Photo ph = photos.removeAt(idx);
          p.name = ph.name;
          p.progress = ph.progress;
        }
      } else if (p.name != null) {
        var idx =
            photos.indexWhere((el) => el.name != null && el.name == p.name);
        if (idx != -1) {
          //Probably network photo - remove it so we don't add it again
          photos.removeAt(idx);
        }
      }
    });
    if (photos.isNotEmpty) {
      state.photos.addAll(photos);
    }
    if (onGlobalProgress != null) {
      onGlobalProgress(params: state, complete: count, total: total);
    }
  }
}

class AddPhotosIsolate {

  void messageListener(dynamic message) async {
    CrossIsolatesMessage incomingMessage = message as CrossIsolatesMessage;
    if (incomingMessage.operation ==
        CrossIsolatesMessageOperation.UploadPhotos) {
      VehiclePhotosParams params =
          VehiclePhotosParams.fromMap(incomingMessage.data);
      for (var i = 0; i < params.photos.length; i++) {
        params.photos[i].id = i;
      }
      var orderPhotos = params.photos;
      if (params.photos.indexWhere((p) => p.name == null) != -1) {
        ResponseWrapper<VehiclePhotosParams> _response;
        do {
          _response = await _uploadPhotos(
              params, incomingMessage.sender, incomingMessage.extra);
        } while (_response.error != null);
        _response.body.photos.sort((a, b) {
          if (a.id == null && b.id == null) {
            return 0;
          } else if (a.id == null) {
            return 1;
          } else if (b.id == null) {
            return -1;
          }
          return a.id.compareTo(b.id);
        });
        orderPhotos = _response.body.photos;
      }

      final _o = await AddVehicleRepositoryImplementation.orderVehiclePhotosStatic(
        photos: orderPhotos.map((e) => e.name).toList(),
        id: params.id,
        authorization: incomingMessage.extra,
      );
    }
  }

  Future<ResponseWrapper<VehiclePhotosParams>> _uploadPhotos(
      VehiclePhotosParams params, SendPort port, String auth) async {
    ResponseWrapper<VehiclePhotosParams> _rW =
        ResponseWrapper<VehiclePhotosParams>();
    _rW.body = params;
    int id = params.id;
    final uploadPhotos = params.photos.where((p) => p.name == null).toList();
    final int _total = uploadPhotos.length;
    int cnt = 0;
    if (uploadPhotos.isNotEmpty) {
      for (var uploadPhoto in uploadPhotos) {
        final _u = await AddVehicleRepositoryImplementation.addVehiclePhotoStatic(
            id: id,
            photo: uploadPhoto,
            authorization: auth,
            onSendProgress: (int count, int total) {
              uploadPhoto.progress = count / total;
              port.send(
                CrossIsolatesMessageResponse<Map>(
                  operation: CrossIsolatesMessageResponseOperation.Progress,
                  data: {
                    'count': count,
                    'total': total,
                    'photo': uploadPhoto.toMap(),
                  },
                ),
              );
            });
        if (_u.error != null) {
          _rW.error = _u.error;
          return _rW;
        } else {
          if (_u.body.success &&
              _u.body.photos != null &&
              _u.body.newUploadPhotos != null) {
            uploadPhoto.name = _u.body.newUploadPhotos.first;
            uploadPhoto.progress = 1;
            ++cnt;
            await VehiclePhotosUsecase.addRemoveServerPhotosNoDownload(
                photos: _rW.body.photos,
                server: _u.body.photos,
                userId: params.userId,
                id: id);

            port.send(
              CrossIsolatesMessageResponse<Map>(
                operation: CrossIsolatesMessageResponseOperation.GlobalProgress,
                data: {
                  'count': cnt,
                  'total': _total,
                  'photo': uploadPhoto.toMap(),
                  'photos': _rW.body.photos.map((e) => e.toMap()).toList(),
                },
              ),
            );
          }
        }
      }
    }
    return _rW;
  }
}

enum CrossIsolatesMessageOperation { UploadPhotos }
enum CrossIsolatesMessageResponseOperation { Progress, GlobalProgress }

class CrossIsolatesMessage<T> {
  final SendPort sender;
  final CrossIsolatesMessageOperation operation;
  final T data;
  String extra;

  CrossIsolatesMessage({
    @required this.sender,
    @required this.operation,
    @required this.data,
    this.extra,
  });
}

class CrossIsolatesMessageResponse<T> {
  final CrossIsolatesMessageResponseOperation operation;
  final T data;

  CrossIsolatesMessageResponse({@required this.operation, @required this.data});
}