import 'package:auto_db/data/models/trader/inventory/inventory_ad_model.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ads_response_model.freezed.dart';
part 'get_ads_response_model.g.dart';

@freezed
abstract class GetAdsResponseModel with _$GetAdsResponseModel {
  const GetAdsResponseModel._();

  const factory GetAdsResponseModel({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'carData') List<InventoryAdModel> data,  
  }) = _GetAdsResponseModel;

  GetAdsResponse toDomain(){
    return GetAdsResponse(
      count : count,
      data: data == null ? null : data.map((e) => e.toDomain()).toList()
    );
  }

  factory GetAdsResponseModel.fromJson(Map<String, dynamic> json) =>_$GetAdsResponseModelFromJson(json);
}