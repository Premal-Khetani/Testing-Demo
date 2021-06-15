import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_response.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:flutter/foundation.dart';

class GetAdsUsecase extends BaseUsecase<GetAdsResponse,GetAdsParams> {
  InventoryRepository _repository;

  GetAdsUsecase(InventoryRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<GetAdsResponse>> call(GetAdsParams params) async {
    return await _repository.getAds(getAdsPostBody: params.getAdsPostBody);
  }
}

class GetAdsParams{
  final GetAdsPostBody getAdsPostBody;

  GetAdsParams({@required this.getAdsPostBody});
}