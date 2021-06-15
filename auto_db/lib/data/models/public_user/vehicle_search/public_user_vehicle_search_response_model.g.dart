// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_vehicle_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicUserVehicleSearchResponseModel
    _$_$_PublicUserVehicleSearchResponseModelFromJson(
        Map<String, dynamic> json) {
  return _$_PublicUserVehicleSearchResponseModel(
    count: json['count'] as int,
    data: (json['carData'] as List)
        ?.map((e) => e == null
            ? null
            : PublicUserVehicleAdModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PublicUserVehicleSearchResponseModelToJson(
        _$_PublicUserVehicleSearchResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'carData': instance.data,
    };
