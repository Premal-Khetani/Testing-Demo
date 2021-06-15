// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nl_addreses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NlAddresesModel _$_$_NlAddresesModelFromJson(Map<String, dynamic> json) {
  return _$_NlAddresesModel(
    street: json['street'] as String,
    houseNumber: json['number'] as int,
    zipCode: json['postcode'] as String,
    city: json['city'] as String,
  );
}

Map<String, dynamic> _$_$_NlAddresesModelToJson(_$_NlAddresesModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'number': instance.houseNumber,
      'postcode': instance.zipCode,
      'city': instance.city,
    };
