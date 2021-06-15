// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddVehicleResponseModel _$_$_AddVehicleResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_AddVehicleResponseModel(
    id: json['id'] as int,
    isLicensePlateSaved: json['step_11'] as bool,
    isSpecificationsSaved: json['step_12'] as bool,
    isDescriptionSaved: json['step_13'] as bool,
    isPhotosSaved: json['step_2'] as bool,
    isAccessoriesSaved: json['step_3'] as bool,
    isPriceSaved: json['step_4'] as bool,
    licensePlate: json['licence_plate'] as String,
    stockNumber: json['name'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    vehicleType: json['vehicle_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['vehicle_types'] as Map<String, dynamic>),
    vehicleBrend: json['brands'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['brands'] as Map<String, dynamic>),
    vehicleModel: json['car_models'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['car_models'] as Map<String, dynamic>),
    vehicleTransmissionType: json['transmission_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['transmission_type'] as Map<String, dynamic>),
    vehicleBodyWork: json['body_work_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['body_work_type'] as Map<String, dynamic>),
    year: json['year'] as int,
    fuelType: json['fuel_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['fuel_type'] as Map<String, dynamic>),
    mileage: json['mileage'] as int,
    mileageUnit: json['mileage_options'] as String,
    color: json['colors'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['colors'] as Map<String, dynamic>),
    interior: json['interior'] as String,
    engineSize: json['engine_size'] as int,
    accessories: (json['accesories'] as List)
        ?.map((e) => e == null
            ? null
            : AccessoryResponseModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    customAccessories: (json['custom_accesories'] as List)
        ?.map((e) => e == null
            ? null
            : CustomAccessoryResponseModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priceType: json['price_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['price_type'] as Map<String, dynamic>),
    price: json['price'] as String,
    bpm: json['bpm'] as String,
    vat: json['vat'] as String,
    tradePrice: json['trading_price'] as String,
    exportPrice: json['export_price'] as String,
    photo: json['photos'] as String,
    allImages: (json['allImages'] as List)?.map((e) => e as String)?.toList(),
    reserved: json['reserved'] as int,
  );
}

Map<String, dynamic> _$_$_AddVehicleResponseModelToJson(
        _$_AddVehicleResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'step_11': instance.isLicensePlateSaved,
      'step_12': instance.isSpecificationsSaved,
      'step_13': instance.isDescriptionSaved,
      'step_2': instance.isPhotosSaved,
      'step_3': instance.isAccessoriesSaved,
      'step_4': instance.isPriceSaved,
      'licence_plate': instance.licensePlate,
      'name': instance.stockNumber,
      'title': instance.title,
      'description': instance.description,
      'vehicle_types': instance.vehicleType,
      'brands': instance.vehicleBrend,
      'car_models': instance.vehicleModel,
      'transmission_type': instance.vehicleTransmissionType,
      'body_work_type': instance.vehicleBodyWork,
      'year': instance.year,
      'fuel_type': instance.fuelType,
      'mileage': instance.mileage,
      'mileage_options': instance.mileageUnit,
      'colors': instance.color,
      'interior': instance.interior,
      'engine_size': instance.engineSize,
      'accesories': instance.accessories,
      'custom_accesories': instance.customAccessories,
      'price_type': instance.priceType,
      'price': instance.price,
      'bpm': instance.bpm,
      'vat': instance.vat,
      'trading_price': instance.tradePrice,
      'export_price': instance.exportPrice,
      'photos': instance.photo,
      'allImages': instance.allImages,
      'reserved': instance.reserved,
    };

_$_AccessoryResponseModel _$_$_AccessoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_AccessoryResponseModel(
    accessoryId: json['option_id'] as int,
  );
}

Map<String, dynamic> _$_$_AccessoryResponseModelToJson(
        _$_AccessoryResponseModel instance) =>
    <String, dynamic>{
      'option_id': instance.accessoryId,
    };

_$_CustomAccessoryResponseModel _$_$_CustomAccessoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_CustomAccessoryResponseModel(
    name: json['accessory'] as String,
  );
}

Map<String, dynamic> _$_$_CustomAccessoryResponseModelToJson(
        _$_CustomAccessoryResponseModel instance) =>
    <String, dynamic>{
      'accessory': instance.name,
    };
