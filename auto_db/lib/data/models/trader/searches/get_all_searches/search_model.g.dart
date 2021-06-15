// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchModel _$_$_SearchModelFromJson(Map<String, dynamic> json) {
  return _$_SearchModel(
    id: json['id'] as int,
    vehicleType: json['vehicle_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['vehicle_types'] as Map<String, dynamic>),
    dateFrom: json['search_from'] as String,
    dateTo: json['search_to'] as String,
    searchName: json['search_name'] as String,
    vehicleBrand: json['brands'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['brands'] as Map<String, dynamic>),
    vehicleModel: json['car_models'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['car_models'] as Map<String, dynamic>),
    vehicleTransmissionType: json['transmission_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['transmission_types'] as Map<String, dynamic>),
    vehcileBodyWorkType: json['bodywork_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['bodywork_types'] as Map<String, dynamic>),
    fuelType: json['fuel_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['fuel_types'] as Map<String, dynamic>),
    yearFrom: json['year_from'] as String,
    yeraTo: json['year_to'] as String,
    priceFrom: json['price_from'] as String,
    priceTo: json['price_to'] as String,
    mileageFrom: json['mileage_from'] as String,
    mileageTo: json['mileage_to'] as String,
  );
}

Map<String, dynamic> _$_$_SearchModelToJson(_$_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_types': instance.vehicleType,
      'search_from': instance.dateFrom,
      'search_to': instance.dateTo,
      'search_name': instance.searchName,
      'brands': instance.vehicleBrand,
      'car_models': instance.vehicleModel,
      'transmission_types': instance.vehicleTransmissionType,
      'bodywork_types': instance.vehcileBodyWorkType,
      'fuel_types': instance.fuelType,
      'year_from': instance.yearFrom,
      'year_to': instance.yeraTo,
      'price_from': instance.priceFrom,
      'price_to': instance.priceTo,
      'mileage_from': instance.mileageFrom,
      'mileage_to': instance.mileageTo,
    };
