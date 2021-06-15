import 'dart:convert';

import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/trader/add_vehicle/add_vehicle_response_model.dart';
import 'package:auto_db/data/models/trader/inventory/get_ads_post_body_model.dart';
import 'package:auto_db/data/models/trader/inventory/get_ads_response_model.dart';
import 'package:auto_db/data/models/trader/inventory/remove_vehicle_response_model.dart';
import 'package:auto_db/data/models/trader/inventory/reserve_ad/reserve_vehicle_post_body_model.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_response.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/inventory/remove_vehicle_response.dart';
import 'package:auto_db/domain/entities/inventory/reserve_ad/reserve_vehicle_post_body.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';

const String _getAdsPath = '/passport/get-trader-inventory';
const String _getVehicleDetailsPath = '/passport/get-trader-ad';
const String _deleteVehiclePath = '/passport/delete-car';
const String _reserveVehiclePath = '/passport/reserve';

class InventoryRepositoryImplementation extends InventoryRepository{
  MainDioClient dioClient;

  InventoryRepositoryImplementation(){
    _resolveDependencies();
  }

  void _resolveDependencies(){
    dioClient =  getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<GetAdsResponse>> getAds({GetAdsPostBody getAdsPostBody}) async {
    ResponseWrapper<GetAdsResponse> _responseWrapper = ResponseWrapper<GetAdsResponse>();

    try{
      final _body = GetAdsPostBodyModel.fromDomain(getAdsPostBody).toJson();
      print('Get ads body: ' + _body.toString());
      final _response = await dioClient.post(
        _getAdsPath,
        data: jsonEncode(_body),
        options: Options(
          headers: {'Accept' : 'application/json'},
          responseType: ResponseType.json
        ),
        logTag: 'Get ads',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get ads response:' + _response.response.data.toString());
          _responseWrapper.body = GetAdsResponseModel.fromJson(_response.response.data).toDomain();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get ads error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> getVehicleDetails({int vehicleId}) async {
    ResponseWrapper<AddVehicleResponse> _responseWrapper = ResponseWrapper<AddVehicleResponse>();

    try{
      final _response = await dioClient.get(
        _getVehicleDetailsPath + '/$vehicleId',
        options: Options(
          responseType: ResponseType.json
        ),
        logTag: 'Get vehicle details',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle details response:' + _response.response.data.toString());
          _responseWrapper.body = AddVehicleResponseModel.fromJson(_response.response.data).toDomain();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle details error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<RemoveVehicleResponse>> removeVehicle({int vehicleId}) async {
    ResponseWrapper<RemoveVehicleResponse> _responseWrapper = ResponseWrapper<RemoveVehicleResponse>();

    try{
      final _response = await dioClient.get(
        _deleteVehiclePath + '/$vehicleId',
        options: Options(
          responseType: ResponseType.json
        ),
        logTag: 'Remove vehicle',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Remove vehicle response:' + _response.response.data.toString());
          _responseWrapper.body = RemoveVehicleResponseModel.fromJson(_response.response.data).toDomain();
        }
      }

    } catch (e) {
      print('Remove vehicle error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<bool>> reserveVehicle({int vehicleId, ReserveVehiclePostBody reserveVehiclePostBody}) async {
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();

    try{
      final _body = ReserveVehiclePostBodyModel.fromDomain(reserveVehiclePostBody).toJson();
      print('Reserve vehicle body: ' + _body.toString());
      final _response = await dioClient.post(
        _reserveVehiclePath + '/$vehicleId',
        data: jsonEncode(_body),
        options: Options(
          headers: {'Accept' : 'application/json'},
          responseType: ResponseType.json
        ),
        logTag: 'Reserve vehicle',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Reserve vehicle:' + _response.response.data.toString());
          _responseWrapper.body = true;
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Reserve vehicle error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }
  
}