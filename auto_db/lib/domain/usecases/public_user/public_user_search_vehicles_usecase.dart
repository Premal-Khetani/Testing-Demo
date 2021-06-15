import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_search_response.dart';
import 'package:auto_db/domain/repositories/public_user_repository.dart';
import 'package:flutter/foundation.dart';

class PublicUserSearchVehiclesUsecase extends BaseUsecase<PublicUserVehicleSearchResponse,PublicUserSearchVehiclesParams> {
  PublicUserRepository _repository;

  PublicUserSearchVehiclesUsecase(PublicUserRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<PublicUserVehicleSearchResponse>> call(PublicUserSearchVehiclesParams params) async {
    return await _repository.searchVehicles(getAdsPostBody: params.getAdsPostBody);
  }
}

class PublicUserSearchVehiclesParams{
  final GetAdsPostBody getAdsPostBody;

  PublicUserSearchVehiclesParams({@required this.getAdsPostBody});
}