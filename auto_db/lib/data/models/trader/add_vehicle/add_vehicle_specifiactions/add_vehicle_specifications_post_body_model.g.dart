// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_specifications_post_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddVehicleSpecificationsPostBodyModel
    _$_$_AddVehicleSpecificationsPostBodyModelFromJson(
        Map<String, dynamic> json) {
  return _$_AddVehicleSpecificationsPostBodyModel(
    id: json['id'] as int,
    vehicleTypeId: json['vehicle'] as int,
    brandId: json['brand'] as int,
    modelId: json['model'] as int,
    transmissionTypeId: json['transmission'] as int,
    bodyworkTypeId: json['bodywork'] as int,
    year: json['year'] as int,
    fuelTypeId: json['fuel'] as int,
    mileage: json['mileage'] as int,
    mileageUnit: json['mileage_options'] as String,
    color: json['color'] as int,
    interior: json['interior'] as String,
    engineSize: json['engine_size'] as int,
  );
}

Map<String, dynamic> _$_$_AddVehicleSpecificationsPostBodyModelToJson(
        _$_AddVehicleSpecificationsPostBodyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle': instance.vehicleTypeId,
      'brand': instance.brandId,
      'model': instance.modelId,
      'transmission': instance.transmissionTypeId,
      'bodywork': instance.bodyworkTypeId,
      'year': instance.year,
      'fuel': instance.fuelTypeId,
      'mileage': instance.mileage,
      'mileage_options': instance.mileageUnit,
      'color': instance.color,
      'interior': instance.interior,
      'engine_size': instance.engineSize,
    };
