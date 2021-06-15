import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_ad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_vehicle_search_response.freezed.dart';

@freezed
abstract class PublicUserVehicleSearchResponse with _$PublicUserVehicleSearchResponse {
  const factory PublicUserVehicleSearchResponse({
    int count,
    List<PublicUserVehicleAd> data
  }) = _PublicUserVehicleSearchResponse;
}