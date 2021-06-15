import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_search_response.dart';
import 'package:flutter/foundation.dart';

abstract class PublicUserRepository {
  Future<ResponseWrapper<PublicUserVehicleSearchResponse>> searchVehicles({@required GetAdsPostBody getAdsPostBody});
}