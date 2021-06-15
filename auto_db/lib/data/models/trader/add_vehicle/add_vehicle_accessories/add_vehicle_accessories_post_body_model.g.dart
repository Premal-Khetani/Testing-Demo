// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_accessories_post_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddVehicleAccessoriesPostBodyModel
    _$_$_AddVehicleAccessoriesPostBodyModelFromJson(Map<String, dynamic> json) {
  return _$_AddVehicleAccessoriesPostBodyModel(
    id: json['carId'] as int,
    accessories: (json['options'] as List)?.map((e) => e as int)?.toList(),
    customAccessories:
        (json['custom'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_AddVehicleAccessoriesPostBodyModelToJson(
        _$_AddVehicleAccessoriesPostBodyModel instance) =>
    <String, dynamic>{
      'carId': instance.id,
      'options': instance.accessories,
      'custom': instance.customAccessories,
    };
