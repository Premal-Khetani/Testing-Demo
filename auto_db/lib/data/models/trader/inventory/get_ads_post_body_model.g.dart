// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ads_post_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAdsPostBodyModel _$_$_GetAdsPostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _$_GetAdsPostBodyModel(
    offset: json['offset'] as int,
    getCarData: json['getCarData'] as bool,
    incompleateData: json['incompleate'] as bool,
    sort: json['sort'] == null
        ? null
        : AddVehicleLookupModel.fromJson(json['sort'] as Map<String, dynamic>),
    vehicleTypeId: json['vehicle_type'] as int,
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
    isMobile: json['mobile'] as bool,
  );
}

Map<String, dynamic> _$_$_GetAdsPostBodyModelToJson(
        _$_GetAdsPostBodyModel instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'getCarData': instance.getCarData,
      'incompleate': instance.incompleateData,
      'sort': instance.sort,
      'vehicle_type': instance.vehicleTypeId,
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
      'mobile': instance.isMobile,
    };
