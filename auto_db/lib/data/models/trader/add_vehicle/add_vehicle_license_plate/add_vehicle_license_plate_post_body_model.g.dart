// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_license_plate_post_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddVehicleLicensePlatePostBodyModel
    _$_$_AddVehicleLicensePlatePostBodyModelFromJson(
        Map<String, dynamic> json) {
  return _$_AddVehicleLicensePlatePostBodyModel(
    id: json['id'] as int,
    licensePlate: json['licence_plate'] as String,
    nameOrStockNumber: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_AddVehicleLicensePlatePostBodyModelToJson(
        _$_AddVehicleLicensePlatePostBodyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licence_plate': instance.licensePlate,
      'name': instance.nameOrStockNumber,
    };
