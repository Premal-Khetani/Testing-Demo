import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_response.dart';
import 'package:auto_db/domain/entities/inventory/remove_vehicle_response.dart';
import 'package:auto_db/domain/entities/inventory/reserve_ad/reserve_vehicle_post_body.dart';
import 'package:flutter/foundation.dart';

abstract class InventoryRepository{
  Future<ResponseWrapper<GetAdsResponse>> getAds({@required GetAdsPostBody getAdsPostBody});
  Future<ResponseWrapper<AddVehicleResponse>> getVehicleDetails({@required int vehicleId});
  Future<ResponseWrapper<RemoveVehicleResponse>> removeVehicle({@required int vehicleId});
  Future<ResponseWrapper<bool>> reserveVehicle({@required int vehicleId, @required ReserveVehiclePostBody reserveVehiclePostBody});
}