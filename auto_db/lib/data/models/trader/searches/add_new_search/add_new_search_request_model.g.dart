// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_new_search_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddNewSearchRequestModel _$_$_AddNewSearchRequestModelFromJson(
    Map<String, dynamic> json) {
  return _$_AddNewSearchRequestModel(
    id: json['search_id'] as int,
    vehicleTypeId: json['vehicle'] as int,
    dateFrom: json['search_from'] as String,
    dateTo: json['search_to'] as String,
    searchName: json['search_name'] as String,
    vehicleBrandId: json['brand'] as int,
    vehicleModelId: json['model'] as int,
    vehicleTransmissionTypeId: json['transmission_type'] as int,
    vehcileBodyWorkTypeId: json['bodywork_type'] as int,
    fuelTypeId: json['fuel_type'] as int,
    yearFrom: json['year_from'] as int,
    yeraTo: json['year_to'] as int,
    priceFrom: json['price_from'] as int,
    priceTo: json['price_to'] as int,
    mileageFrom: json['mileage_from'] as int,
    mileageTo: json['mileage_to'] as int,
  );
}

Map<String, dynamic> _$_$_AddNewSearchRequestModelToJson(
        _$_AddNewSearchRequestModel instance) =>
    <String, dynamic>{
      'search_id': instance.id,
      'vehicle': instance.vehicleTypeId,
      'search_from': instance.dateFrom,
      'search_to': instance.dateTo,
      'search_name': instance.searchName,
      'brand': instance.vehicleBrandId,
      'model': instance.vehicleModelId,
      'transmission_type': instance.vehicleTransmissionTypeId,
      'bodywork_type': instance.vehcileBodyWorkTypeId,
      'fuel_type': instance.fuelTypeId,
      'year_from': instance.yearFrom,
      'year_to': instance.yeraTo,
      'price_from': instance.priceFrom,
      'price_to': instance.priceTo,
      'mileage_from': instance.mileageFrom,
      'mileage_to': instance.mileageTo,
    };
