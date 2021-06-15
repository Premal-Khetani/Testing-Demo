import 'dart:async';
import 'dart:io';

import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/isolates/isolate_holder.dart';
import 'package:auto_db/core/utils/file_utils.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_vehicle_id_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/vehicle_photos_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

part 'photos_event.dart';
part 'photos_state.dart';

part 'photos_bloc.freezed.dart';

class PhotosBloc {
  BuildContext _context;
  int _vehicleId = 0;
  List<Asset> images = List<Asset>();
  List<Photo> _deletedPhotos = [];
  AddVehicleResponse _addVehicleResponse;
  VehiclePhotosUsecase _addVehiclePhotosUsecase;
  GetVehicleIdUsecase _getVehicleIdUsecase;
  AddPhotosIsolateHolder _holder;

  static final int _maxImages = 41;

  PhotosState _state;

  FileUtils _fileUtils;

  PhotosBloc(
      {@required BuildContext context,
      @required AddVehicleResponse addVehicleResponse}) {
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    if (_addVehicleResponse != null && _addVehicleResponse.id != null) {
      _vehicleId = _addVehicleResponse.id;
    }
    if (_state == null) {
      _state = PhotosState.initial();
    }
    _eventsController.stream.listen(_mapEventToState);

    _resolveDependenciesAndInit();
  }

  Future<void> _resolveDependenciesAndInit() async {
    await _resolveDependencies();
    await _initialise();
  }

  PhotosState get photosInitialState {
    if (_state == null) {
      _state = PhotosState.initial();
    }

    return _state;
  }

  var _eventsController = StreamController<PhotosEvent>();
  StreamSink<PhotosEvent> get _inEventsControler => _eventsController.sink;

  var _photosStateController = StreamController<PhotosState>.broadcast();
  StreamSink<PhotosState> get _inPhotosStateController =>
      _photosStateController.sink;
  Stream<PhotosState> get outPhotosStateController =>
      _photosStateController.stream;

  void _mapEventToState(PhotosEvent event) {
    event.map(close: (_) async {
      await close();
    }, onReorder: (value) {
      _state.photos
          .insert(value.newIndex, _state.photos.removeAt(value.oldIndex));
      _emitNewState();
    }, photoFromCamera: (_) async {
      _emitSubmittingState(true);
      await _loadAssets();
      _emitSubmittingState(false);
    }, save: (_) async {
      await _save();
    }, onDeletePhotoTapped: (e) {
      if (e.photo.asset != null) {
        images.remove(e.photo.asset);
      }
      if (_state.photos.remove(e.photo)) {
        if (e.photo.name != null) {
          _deletedPhotos.add(e.photo);
        }
        print('Delete photo ' + e.toString());
        _emitNewState();
      } else {
        print("Photo could not be deleted");
      }
    });
  }

  Future<void> _getCreateHolder() async {
    if (_holder == null) {
      if (photosHolder.containsKey(_vehicleId)) {
        _holder = photosHolder[_vehicleId];
      } else {
        _holder = await AddPhotosIsolateHolder.createIsolate();
        photosHolder[_vehicleId] = _holder;
      }
      _holder.onGlobalProgress = _onGlobalProgress;
      _holder.onProgress = _onProgress;
    }
  }

  void _onGlobalProgress(
      {VehiclePhotosParams params, int complete, int total}) {
    print("Photos bloc_onProgress: ${complete / total}");
    _state = _state.copyWith(
      photos: params.photos,
    );
    _emitNewState();
  }

  void _onProgress({Photo photo, VehiclePhotosParams params}) {
    print("Photos bloc_onProgress: ${photo.progress}");
    _state = _state.copyWith(
      photos: params.photos,
    );
    _emitNewState();
  }

  void _emitSubmittingState(bool isSubmitting) {
    _state = _state.copyWith(
      isSubmitting: isSubmitting,
    );
    _emitNewState();
  }

  Future<void> _save() async {
    int id = _vehicleId;
    if (_checkIsDataChanged()) {
      _emitSubmittingState(true);
      if (_addVehicleResponse.id == null) {
        final response = await _getVehicleIdUsecase(GetVehicleIdParams(
            addVehicleInitialPostBody:
                AddVehicleInitialPostBody(isMobile: true)));
        if (response.error != null) {
          String errorMessage = '';

          response.error.map(
              serverError: (e) {
                errorMessage = e.massage;
              },
              noInternerError: (_) {
                errorMessage = StringConstants.noInternet;
              },
              genericError: (_) {
                errorMessage = StringConstants.generalError;
              },
              noOperationError: (_) {});

          _state = _state.copyWith(isSubmitting: false);
          _emitNewState();

          CustomToastUtils.showCustomToast(
              context: _context,
              message: errorMessage,
              customToastType: CustomToastType.Error);
          return;
        }

        if (response.body != null) {
          id = response.body.id;
          _addVehicleResponse = _addVehicleResponse.copyWith(id: id);
          _vehicleId = id;
        }
      }
      String saveDir = await (await FileUtils.instance)
          .getCreateSavePhotosDirPath(_vehicleId.toString());
      VehiclePhotosParams p = VehiclePhotosParams(
        userId: appBloc.user.id,
        photos: _state.photos,
        deletedPhotos: _deletedPhotos,
        id: id,
        saveDir: saveDir,
      );
      if (_deletedPhotos.isNotEmpty) {
        final del = await _addVehiclePhotosUsecase.deletePhotos(p);

        if (del.body != null) {
          _deletedPhotos = del.body.deletedPhotos;
        }

        if (del.error != null) {
          String errorMessage = '';

          del.error.map(
              serverError: (e) {
                errorMessage = e.massage;
              },
              noInternerError: (_) {
                errorMessage = StringConstants.noInternet;
              },
              genericError: (_) {
                errorMessage = StringConstants.generalError;
              },
              noOperationError: (_) {});

          _state = _state.copyWith(isSubmitting: false);
          _emitNewState();

          CustomToastUtils.showCustomToast(
              context: _context,
              message: errorMessage,
              customToastType: CustomToastType.Error);
          return;
        }
      }

      if (_checkIsDataChanged()) {
        _emitSubmittingState(false);
        await _getCreateHolder();
        _holder.authorization =
            appBloc.userToken.tokenType + ' ' + appBloc.userToken.accessToken;
        await _holder.addOrderPhotos(p);
        images.clear();
      }
      _popAndReturnState(_addVehicleResponse);
      /*var resp = await _uploadPhotos();
      if (resp.error != null && !(resp.error is NoOperationError)) {
        //do nothing popup shown in _uploadPhotos
      } else {
        _popAndReturnState(_addVehicleResponse);
      }*/
    } else {
      _popAndReturnState(null);
    }
  }

  Future<void> _loadAssets() async {
    List<Asset> resultList = List<Asset>();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: _maxImages - _state.photos.length,
        enableCamera: true,
        selectedAssets: images,
        //cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: ColorConstants.redColor.hexString,
          actionBarTitle: StringConstants.multiImagePickerTitle,
          allViewTitle: StringConstants.allPhotos,
          useDetailsView: false,
          selectCircleStrokeColor: ColorConstants.whiteColor.hexString,
          statusBarColor: ColorConstants.bottomBarColor.hexString,
        ),
      );

      await Future.forEach(resultList, (asset) async {
        if (!images.contains(asset)) {
          try {
            Photo ph = Photo();
            ph.asset = asset;
            /*ph.local = await _fileUtils.saveAssetToPhotos(
                asset: asset, subFolder: _vehicleId.toString());*/
            ph.local = await _fileUtils.copyAssetToPhotos(
              asset: asset,
              subFolder: _vehicleId.toString(),
            );
            _state.photos.add(ph);
          } catch (e) {
            print(e.toString());
          }
        }
      });

      /*resultList.forEach((asset) async{
        if(!images.contains(asset)){
          Photo ph = Photo();
          ph.asset = asset;
          //ph.local = await _fileUtils.saveAssetToPhotos(asset: asset, subFolder: _vehicleId.toString());
          _getLocalImage(ph, asset);
          _state.photos.add(ph);
        }
      });*/
      images = resultList;
      _state.photos.retainWhere((ph) {
        if (ph.asset != null && !images.contains(ph.asset)) {
          return false;
        }
        if (ph.local == null && ph.urlPath == null) {
          return false;
        }
        return true;
      });
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  Future<void> close() async {
    if (_checkIsDataChanged()) {
      final userResponse =
          await DataChangedPopUpUtil.showDataChangedPopUp(_context);
      switch (userResponse) {
        case DataChangedPopupResponse.SaveAndClose:
          _save();
          break;
        case DataChangedPopupResponse.Close:
          _popAndReturnState(null);
          break;
        default:
          break;
      }
    } else {
      _popAndReturnState(null);
    }
  }

  bool _checkIsDataChanged() {
    if (_deletedPhotos.isNotEmpty) {
      return true;
    }
    if (_addVehicleResponse != null) {
      if (_holder != null) {
        if (_holder.uploadPhotos.length != _state.photos.length) {
          return true;
        }
        for (var i = 0; i < _holder.uploadPhotos.length; i++) {
          if (_holder.uploadPhotos[i].name != _state.photos[i].name) {
            File h = _holder.uploadPhotos[i].local;
            File s = _state.photos[i].local;
            if (h != null && s != null && h.path == s.path) {
              _holder.uploadPhotos[i].name = _state.photos[i].name;
            } else {
              return true;
            }
          }
        }
      } else {
        if (_addVehicleResponse.allImages == null && _state.photos.isNotEmpty) {
          return true;
        }
        if (_addVehicleResponse.allImages != null &&
            _addVehicleResponse.allImages.length != _state.photos.length) {
          return true;
        }
        if (_addVehicleResponse.allImages != null &&
            _addVehicleResponse.allImages.isNotEmpty &&
            _addVehicleResponse.allImages.length == _state.photos.length) {
          for (var i = 0; i < _addVehicleResponse.allImages.length; i++) {
            if (_addVehicleResponse.allImages[i] != _state.photos[i].name) {
              return true;
            }
          }
        }
      }
    } else if (_state.photos.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> _resolveDependencies() async {
    _fileUtils = await FileUtils.instance;
    _addVehiclePhotosUsecase =
        VehiclePhotosUsecase(getIt.get<AddVehicleRepository>());
    _getVehicleIdUsecase =
        GetVehicleIdUsecase(getIt.get<AddVehicleRepository>());
  }

  Future<void> _initialise() async {
    if (_addVehicleResponse != null) {
      _emitSubmittingState(true);
      if (_addVehicleResponse.id != null) {
        _vehicleId = _addVehicleResponse.id;
        if (photosHolder.containsKey(_vehicleId)) {
          _holder = photosHolder[_vehicleId];
          _holder.onGlobalProgress = _onGlobalProgress;
          _holder.onProgress = _onProgress;
          _state = _state.copyWith(photos: _holder.state.photos);
        } else if (_addVehicleResponse.allImages != null &&
            _addVehicleResponse.allImages.isNotEmpty) {
          var phots = _addVehicleResponse.allImages.map((name) {
            Photo ph = Photo();
            ph.name = name;
            ph.urlPath =
                'https://autodb-static-resources.s3.eu-west-1.amazonaws.com/images/ads/$_vehicleId/$name';
            return ph;
          }).toList();
          _state = _state.copyWith(photos: phots);
        }
      }
      _state = _state.copyWith(isSubmitting: false);
      _emitSubmittingState(false);
    }
  }

  void addEvent(PhotosEvent event) {
    _inEventsControler.add(event);
  }

  void _popAndReturnState(AddVehicleResponse response) {
    Navigator.of(_context).pop(response);
  }

  void _emitNewState() {
    _inPhotosStateController.add(_state);
  }

  dispose() {
    if (_holder != null) {
      if (_holder.onGlobalProgress == _onGlobalProgress) {
        _holder.onGlobalProgress = null;
      }
      _holder.onProgress = null;
      _holder = null; //Derefernce variable?
      print('dispose photos bloc');
    }
    _eventsController.close();
    _photosStateController.close();
  }
}
