import 'package:auto_db/data/models/public_user/vehicle_search/public_user_vehicle_ad_model.dart';
import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_search_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_vehicle_search_response_model.freezed.dart';
part 'public_user_vehicle_search_response_model.g.dart';

@freezed
abstract class PublicUserVehicleSearchResponseModel with _$PublicUserVehicleSearchResponseModel {
  const PublicUserVehicleSearchResponseModel._();

  const factory PublicUserVehicleSearchResponseModel({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'carData') List<PublicUserVehicleAdModel> data,  
  }) = _PublicUserVehicleSearchResponseModel;

  PublicUserVehicleSearchResponse toDomain(){
    return PublicUserVehicleSearchResponse(
      count : count,
      data: data == null ? null : data.map((e) => e.toDomain()).toList()
    );
  }

  factory PublicUserVehicleSearchResponseModel.fromJson(Map<String, dynamic> json) =>_$PublicUserVehicleSearchResponseModelFromJson(json);
}