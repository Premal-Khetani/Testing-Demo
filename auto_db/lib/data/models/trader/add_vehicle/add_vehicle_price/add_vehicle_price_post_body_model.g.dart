// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_price_post_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddVehiclePricePostBodyModel _$_$_AddVehiclePricePostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _$_AddVehiclePricePostBodyModel(
    id: json['id'] as int,
    priceTypeId: json['price_type_id'] as int,
    price: json['price'] as int,
    bpm: json['bpm'] as int,
    vat: json['vat'] as int,
    tradingPrice: json['trading_price'] as int,
    exportPrice: json['export_price'] as int,
  );
}

Map<String, dynamic> _$_$_AddVehiclePricePostBodyModelToJson(
        _$_AddVehiclePricePostBodyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price_type_id': instance.priceTypeId,
      'price': instance.price,
      'bpm': instance.bpm,
      'vat': instance.vat,
      'trading_price': instance.tradingPrice,
      'export_price': instance.exportPrice,
    };
