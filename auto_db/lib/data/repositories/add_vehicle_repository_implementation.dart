import 'dart:convert';
import 'dart:io';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_accessories/add_vehicle_accessories_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_description/add_vehicle_description_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_initial/add_vehicle_initial_response_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_license_plate/add_vehicle_license_plate_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_price/add_vehicle_price_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_photos/add_vehicle_photos_response_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_response_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_specifiactions/add_vehicle_specifications_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/rdw/rdw_post_body_model.dart';
import 'package:auto_db/data/models/trader/add_vehicle/rdw/rdw_response_model.dart';
import 'package:auto_db/data/repositories/dio_client.dart';
import 'package:auto_db/data/utills/error_mesages.dart';
import 'package:auto_db/data/utills/network_information.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_accessories/add_vehicle_accessories_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_license_plate/add_vehicle_license_plate_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_description/add_vehicle_description_post_body.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_price/add_vehicle_price_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_photos/add_vehicle_photos_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_specifications/add_vehicle_specifications_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_post_request.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const String _saveLicensePlatePath = '/passport/add-vehicle-licence-plate';
const String _saveDescriptionPath =
    '/passport/add-vehicle-title-and-description';
const String _getVehicleIdPath = '/passport/car-ad-create';
const String _saveSpecificationsPath = '/passport/add-vehicle-specification';
const String _saveAccessoriesPath = '/passport/add-options-accessories';
const String _saveVehiclePricePath = '/passport/add-vehicle-price';
const String _rdwPath = '/passport/rdw';

class AddVehicleRepositoryImplementation implements AddVehicleRepository {
  MainDioClient dioClient;

  AddVehicleRepositoryImplementation() {
    _resolveDependencies();
  }

  void _resolveDependencies() {
    dioClient = getIt.get<MainDioClient>();
  }

  static Future<void> handleDioError(
      {@required DioError e,
      @required ResponseWrapper responseWrapper,
      String logTag = 'Add Vehicle Repository'}) async {
    if (e.type == DioErrorType.CONNECT_TIMEOUT ||
        e.type == DioErrorType.SEND_TIMEOUT ||
        e.type == DioErrorType.RECEIVE_TIMEOUT) {
      int _statusCode = 408; //request timed out
      print('$logTag: $_statusCode ');
      responseWrapper.error = Failure.serverError(
          statusCode: _statusCode,
          massage: ErrorMassages.getHttpErrorMassage(_statusCode));
    } else if (e.response == null) {
      final haveInternet = await NetworkInformation.checkConnectivity();
      responseWrapper.error =
          haveInternet ? Failure.genericError() : Failure.noInternerError();
    } else {
      int _statusCode = e.response.statusCode;
      print('$logTag: $_statusCode ' + e.response.data.toString());
      responseWrapper.error = Failure.serverError(
          statusCode: _statusCode,
          massage: ErrorMassages.getHttpErrorMassage(_statusCode));
    }
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> saveLicensePlate(
      {AddVehicleLicensePlatePostBody addVehicleLicensePlatePostBody}) async {
    ResponseWrapper<AddVehicleResponse> _responseWrapper =
        ResponseWrapper<AddVehicleResponse>();

    try {
      final _body = AddVehicleLicensePlatePostBodyModel.fromDomain(
              addVehicleLicensePlatePostBody)
          .toJson();
      print('Add vehicle license plate body: ' + _body.toString());
      final _response = await dioClient.postWithoutHandlingError(_saveLicensePlatePath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          haveAutorization: true);

      if (_response.statusCode == 200) {
        print('Add vehicle license plate response:' + _response.data.toString());
        _responseWrapper.body = AddVehicleResponseModel.fromJson(_response.data).toDomain();
      }

    } on DioError catch (e) {
      if (e.response == null) {
        final haveInternet = await NetworkInformation.checkConnectivity();
        _responseWrapper.error =
            haveInternet ? Failure.genericError() : Failure.noInternerError();
      } else {
        print('Add vehicle license plate error: ' + e.message);
        if (e.response.statusCode == 409 &&
            e.response.data
                .toString()
                .contains('duplicateLicencePlate')) {
          _responseWrapper.error = Failure.serverError(
              statusCode: e.response.statusCode,
              massage: StringConstants.duplicateLicensePlateError);
        } else {
          _responseWrapper.error = Failure.serverError(
            statusCode: e.response.statusCode,
            massage: ErrorMassages.getHttpErrorMassage(e.response.statusCode));
        }
      }
    } catch (e) {
      print('Add vehicle license plate error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> saveDescription(
      {AddVehicleDescriptionPostBody addVehicleDescriptionPostBody}) async {
    ResponseWrapper<AddVehicleResponse> _responseWrapper =
        ResponseWrapper<AddVehicleResponse>();

    try {
      final _body = AddVehicleDescriptionPostBodyModel.fromDomain(
              addVehicleDescriptionPostBody)
          .toJson();
      print('Add vehicle description body: ' + _body.toString());
      final _response = await dioClient.post(_saveDescriptionPath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          logTag: 'Add vehicle description',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Add vehicle description response:' +
              _response.response.data.toString());
          _responseWrapper.body =
              AddVehicleResponseModel.fromJson(_response.response.data)
                  .toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Add vehicle description error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehicleInitialResponse>> getVehicleId(
      {AddVehicleInitialPostBody addVehicleInitialPostBody}) async {
    ResponseWrapper<AddVehicleInitialResponse> _responseWrapper =
        ResponseWrapper<AddVehicleInitialResponse>();

    try {
      final _body =
          AddVehicleInitialPostBodyModel.fromDomain(addVehicleInitialPostBody)
              .toJson();
      final _response = await dioClient.post(_getVehicleIdPath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          logTag: 'Add vehicle initial',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200 ||
            _response.response.statusCode == 201) {
          print('Add vehicle initial response:' +
              _response.response.data.toString());
          _responseWrapper.body =
              AddVehicleInitialResponseModel.fromJson(_response.response.data)
                  .toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Add vehicle initial error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> saveSpecifications(
      {AddVehicleSpecificationsPostBody specificationsPostBody}) async {
    ResponseWrapper<AddVehicleResponse> _responseWrapper =
        ResponseWrapper<AddVehicleResponse>();

    try {
      final _body = AddVehicleSpecificationsPostBodyModel.fromDomain(
              specificationsPostBody)
          .toJson();
      print('Add vehicle specifications body: ' + _body.toString());
      final _response = await dioClient.post(_saveSpecificationsPath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          logTag: 'Add vehicle specifications',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Add vehicle specifications response:' +
              _response.response.data.toString());
          _responseWrapper.body =
              AddVehicleResponseModel.fromJson(_response.response.data)
                  .toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Add vehicle specifications error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> saveAccessories(
      {AddVehicleAccessoriesPostBody addVehicleInitialPostBody}) async {
    ResponseWrapper<AddVehicleResponse> _responseWrapper =
        ResponseWrapper<AddVehicleResponse>();

    try {
      final _body = AddVehicleAccessoriesPostBodyModel.fromDomain(
              addVehicleInitialPostBody)
          .toJson();
      print('Add vehicle accessories body: ' + _body.toString());
      final _response = await dioClient.post(_saveAccessoriesPath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          logTag: 'Add vehicle accessories',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Add vehicle accessories response:' +
              _response.response.data.toString());
          _responseWrapper.body =
              AddVehicleResponseModel.fromJson(_response.response.data)
                  .toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Add vehicle accessories error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehiclePhotosResponse>> addVehiclePhotos(
      {List<Photo> photos, int id}) async {
    ResponseWrapper<AddVehiclePhotosResponse> _responseWrapper =
        ResponseWrapper<AddVehiclePhotosResponse>();

    String _authorization = '';
    if (appBloc.userToken != null) {
      _authorization =
          appBloc.userToken.tokenType + ' ' + appBloc.userToken.accessToken;
    }

    try {
      var photoList =
          photos.where((el) => el.name == null).map((e) => e.local.path);
      if (photoList.isNotEmpty) {
        List<MultipartFile> files = photoList.map((element) {
          return MultipartFile.fromFileSync(element,
              filename: element.substring(element.lastIndexOf("/") + 1));
        }).toList();
        FormData formData = FormData.fromMap({
          "id": id,
          "files": [...files],
        });

        final _response = await DioClient.dio.post("/upload-images",
            data: formData,
            options: Options(headers: {
              'Accept': 'application/json',
              'Authorization': _authorization
            }, responseType: ResponseType.json));
        if (_response.statusCode == 200) {
          _responseWrapper.body =
              AddVehiclePhotosResponseModel.fromJson(_response.data).toDomain();
          print(_responseWrapper.body);
        }
      } else {
        _responseWrapper.error = Failure.noOperationError();
      }
    } on DioError catch (e) {
      await handleDioError(
          e: e,
          responseWrapper: _responseWrapper,
          logTag: "Add vehicle photos error");
    } catch (e) {
      print('Add vehicle photos error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<File>> downloadVehiclePhoto(
      {String name, int userId, String savePath}) async {
    ResponseWrapper<File> _responseWrapper = ResponseWrapper<File>();
    final _savePath = '$savePath/$name';
    var saveFile = File(_savePath);
    if (await saveFile.exists()) {
      _responseWrapper.body = saveFile;
      return _responseWrapper;
    }
    try {
      final _response =
          await DioClient.dioS3.download('/$userId/$name', _savePath);
      if (_response.statusCode == 200) {
        _responseWrapper.body = saveFile;
      }
    } on DioError catch (e) {
      await handleDioError(
          e: e,
          responseWrapper: _responseWrapper,
          logTag: "Download vehicle photo error");
    } catch (e) {
      print('Download vehicle photo error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> savePrice(
      {AddVehiclePricePostBody addVehiclePricePostBody}) async {
    ResponseWrapper<AddVehicleResponse> _responseWrapper =
        ResponseWrapper<AddVehicleResponse>();

    try {
      final _body =
          AddVehiclePricePostBodyModel.fromDomain(addVehiclePricePostBody)
              .toJson();
      print('Add vehicle price body: ' + _body.toString());
      final _response = await dioClient.post(_saveVehiclePricePath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          logTag: 'Add vehicle price',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Add vehicle price response:' +
              _response.response.data.toString());
          _responseWrapper.body =
              AddVehicleResponseModel.fromJson(_response.response.data)
                  .toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Add vehicle price error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehiclePhotosResponse>> deleteVehiclePhotos(
      {List<String> photos, int id}) async {
    ResponseWrapper<AddVehiclePhotosResponse> _responseWrapper =
        ResponseWrapper<AddVehiclePhotosResponse>();

    String _authorization = '';
    if (appBloc.userToken != null) {
      _authorization =
          appBloc.userToken.tokenType + ' ' + appBloc.userToken.accessToken;
    }

    try {
      final _response = await DioClient.dio.post("/delete-images",
          data: {
            "id": id,
            "deletedImages": [...photos],
          },
          options: Options(headers: {
            'Accept': 'application/json',
            'Authorization': _authorization
          }, responseType: ResponseType.json));
      if (_response.statusCode == 200) {
        _responseWrapper.body =
            AddVehiclePhotosResponseModel.fromJson(_response.data).toDomain();
        print(_responseWrapper.body);
      }
    } on DioError catch (e) {
      await handleDioError(
          e: e,
          responseWrapper: _responseWrapper,
          logTag: "Delete vehicle photos error");
    } catch (e) {
      print('Delete vehicle photos error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehiclePhotosResponse>> orderVehiclePhotos({
    List<String> photos,
    int id,
    String authorization,
  }) async {
    String _authorization = authorization;
    if (_authorization == null && appBloc.userToken != null) {
      _authorization =
          appBloc.userToken.tokenType + ' ' + appBloc.userToken.accessToken;
    }
    return orderVehiclePhotosStatic(
        photos: photos, id: id, authorization: _authorization);
  }

  static Future<ResponseWrapper<AddVehiclePhotosResponse>> orderVehiclePhotosStatic({
    List<String> photos,
    int id,
    String authorization,
  }) async {
    ResponseWrapper<AddVehiclePhotosResponse> _responseWrapper =
        ResponseWrapper<AddVehiclePhotosResponse>();

    String _authorization = authorization;
    if (_authorization == null && appBloc.userToken != null) {
      _authorization =
          appBloc.userToken.tokenType + ' ' + appBloc.userToken.accessToken;
    }

    try {
      final _response = await DioClient.dio.post("/order-images",
          data: {
            "id": id,
            "photos": [...photos],
          },
          options: Options(headers: {
            'Accept': 'application/json',
            'Authorization': _authorization
          }, responseType: ResponseType.json));
      if (_response.statusCode == 200) {
        _responseWrapper.body =
            AddVehiclePhotosResponseModel.fromJson(_response.data).toDomain();
        print(_responseWrapper.body);
      }
    } on DioError catch (e) {
      await handleDioError(
          e: e,
          responseWrapper: _responseWrapper,
          logTag: "Order vehicle photos error");
    } catch (e) {
      print('Order vehicle photos error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehiclePhotosResponse>> addVehiclePhoto(
      {Photo photo,
      int id,
      String authorization,
      Function(int count, int total) onSendProgress}) async {
    return addVehiclePhotoStatic(
        photo: photo,
        id: id,
        authorization: authorization,
        onSendProgress: onSendProgress);
  }

  static Future<ResponseWrapper<AddVehiclePhotosResponse>>
      addVehiclePhotoStatic(
          {Photo photo,
          int id,
          String authorization,
          Function(int count, int total) onSendProgress}) async {
    ResponseWrapper<AddVehiclePhotosResponse> _responseWrapper =
        ResponseWrapper<AddVehiclePhotosResponse>();

    try {
      String element = photo.local.path;
      MultipartFile multipartFile = MultipartFile.fromFileSync(element,
          filename: element.substring(element.lastIndexOf("/") + 1));
      FormData formData = FormData.fromMap({
        "id": id,
        "files": [multipartFile],
      });

      final _response = await DioClient.dio.post("/upload-images",
          data: formData,
          options: Options(headers: {
            'Accept': 'application/json',
            'Authorization': authorization
          }, responseType: ResponseType.json),
          onSendProgress: onSendProgress);
      if (_response.statusCode == 200) {
        _responseWrapper.body =
            AddVehiclePhotosResponseModel.fromJson(_response.data).toDomain();
        print(_responseWrapper.body);
      }
    } on DioError catch (e) {
      await handleDioError(
          e: e,
          responseWrapper: _responseWrapper,
          logTag: "Add vehicle photos error");
    } catch (e) {
      print('Add vehicle photos error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }
    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<RDWResponse>> getRDWInformations({RDWPostRequest rdwPostRequest}) async {
    ResponseWrapper<RDWResponse> _responseWrapper =
        ResponseWrapper<RDWResponse>();

    try {
      final _body = RDWPostBodyModel.fromDomain(
              rdwPostRequest)
          .toJson();
      print('RDW body: ' + _body.toString());
      final _response = await dioClient.post(
          _rdwPath,
          data: jsonEncode(_body),
          options: Options(headers: {
            'Accept': 'application/json',
          }, responseType: ResponseType.json),
          logTag: 'RDW',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('RDW response:' + _response.response.data.toString());
          if(_response.response.data.toString().contains('No data available')){
            _responseWrapper.error = Failure.serverError(statusCode: 404, massage: StringConstants.rdwNotFoundErrorMessage);
          } else {
            _responseWrapper.body = RDWResponseModel.fromJson(_response.response.data).toDomain();
          }
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('RDW error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }
}
