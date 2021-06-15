// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryAdModel _$_$_InventoryAdModelFromJson(Map<String, dynamic> json) {
  return _$_InventoryAdModel(
    id: json['id'] as int,
    licensePlate: json['licence_plate'] as String,
    stockNumber: json['name'] as String,
    price: json['price'] as String,
    photo: json['photos'] as String,
    priceType: json['price_type'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['price_type'] as Map<String, dynamic>),
    reserved: json['reserved'] as int,
  );
}

Map<String, dynamic> _$_$_InventoryAdModelToJson(
        _$_InventoryAdModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licence_plate': instance.licensePlate,
      'name': instance.stockNumber,
      'price': instance.price,
      'photos': instance.photo,
      'price_type': instance.priceType,
      'reserved': instance.reserved,
    };
