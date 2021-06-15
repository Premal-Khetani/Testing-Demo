// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ads_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAdsResponseModel _$_$_GetAdsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_GetAdsResponseModel(
    count: json['count'] as int,
    data: (json['carData'] as List)
        ?.map((e) => e == null
            ? null
            : InventoryAdModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GetAdsResponseModelToJson(
        _$_GetAdsResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'carData': instance.data,
    };
