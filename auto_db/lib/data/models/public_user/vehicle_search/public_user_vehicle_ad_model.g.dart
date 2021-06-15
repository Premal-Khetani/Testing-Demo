// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_vehicle_ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicUserVehicleAdModel _$_$_PublicUserVehicleAdModelFromJson(
    Map<String, dynamic> json) {
  return _$_PublicUserVehicleAdModel(
    id: json['id'] as int,
    title: json['title'] as String,
    price: json['price'] as String,
    photo: json['photos'] as String,
    priceType: json['price_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['price_type'] as Map<String, dynamic>),
    year: json['year'] as int,
    mileage: json['mileage'] as int,
    mileageUnit: json['mileage_options'] as String,
    fuelType: json['fuel_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['fuel_type'] as Map<String, dynamic>),
    engineSize: json['engine_size'] as int,
    vehicleTransmissionType: json['transmission_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['transmission_type'] as Map<String, dynamic>),
    kw: json['engine_power_kw'] as String,
    hp: json['engine_power_hp'] as String,
    traderLogo: json['traderLogo'] as String,
    user: json['users'] == null
        ? null
        : UserInfoModel.fromJson(json['users'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PublicUserVehicleAdModelToJson(
        _$_PublicUserVehicleAdModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'photos': instance.photo,
      'price_type': instance.priceType,
      'year': instance.year,
      'mileage': instance.mileage,
      'mileage_options': instance.mileageUnit,
      'fuel_type': instance.fuelType,
      'engine_size': instance.engineSize,
      'transmission_type': instance.vehicleTransmissionType,
      'engine_power_kw': instance.kw,
      'engine_power_hp': instance.hp,
      'traderLogo': instance.traderLogo,
      'users': instance.user,
    };

_$_UserInfoModel _$_$_UserInfoModelFromJson(Map<String, dynamic> json) {
  return _$_UserInfoModel(
    id: json['id'] as int,
    accountType: json['account_type'] as String,
  );
}

Map<String, dynamic> _$_$_UserInfoModelToJson(_$_UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_type': instance.accountType,
    };
