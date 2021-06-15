// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeadFilterModel _$_$_LeadFilterModelFromJson(Map<String, dynamic> json) {
  return _$_LeadFilterModel(
    id: json['id'] as int,
    vehicleType: json['vehicle_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['vehicle_types'] as Map<String, dynamic>),
    brand: json['brands'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['brands'] as Map<String, dynamic>),
    carModel: json['car_models'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['car_models'] as Map<String, dynamic>),
    fuelType: json['fuel_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['fuel_type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LeadFilterModelToJson(_$_LeadFilterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_types': instance.vehicleType,
      'brands': instance.brand,
      'car_models': instance.carModel,
      'fuel_type': instance.fuelType,
    };
