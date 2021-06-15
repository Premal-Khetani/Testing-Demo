import 'dart:convert';

import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/public_user/vehicle_search/public_user_vehicle_search_response_model.dart';
import 'package:auto_db/data/models/trader/inventory/get_ads_post_body_model.dart';
import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_search_response.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/repositories/public_user_repository.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';

const String _searchVehiclesPath = '/passport/get-public-ads';

class PublicUserRepositoryImplementation implements PublicUserRepository {
  MainDioClient dioClient;

  PublicUserRepositoryImplementation(){
    _resolveDependencies();
  }

  void _resolveDependencies(){
    dioClient =  getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<PublicUserVehicleSearchResponse>> searchVehicles({GetAdsPostBody getAdsPostBody}) async {
    ResponseWrapper<PublicUserVehicleSearchResponse> _responseWrapper = ResponseWrapper<PublicUserVehicleSearchResponse>();

    try{
      final _body = GetAdsPostBodyModel.fromDomain(getAdsPostBody).toJson();
      print('Search vehicles body: ' + _body.toString());
      final _response = await dioClient.post(
        _searchVehiclesPath,
        data: jsonEncode(_body),
        options: Options(
          headers: {'Accept' : 'application/json'},
          responseType: ResponseType.json
        ),
        logTag: 'Search vehicles'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Search vehicles response:' + _response.response.data.toString());
          _responseWrapper.body = PublicUserVehicleSearchResponseModel.fromJson(_response.response.data).toDomain();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Search vehicles error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }
  
}