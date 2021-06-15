// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryLookupModel _$_$_CountryLookupModelFromJson(
    Map<String, dynamic> json) {
  return _$_CountryLookupModel(
    coutryNameLookup: json['name'] == null
        ? null
        : CountryNameLookupModel.fromJson(json['name'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CountryLookupModelToJson(
        _$_CountryLookupModel instance) =>
    <String, dynamic>{
      'name': instance.coutryNameLookup,
    };

_$_CountryNameLookupModel _$_$_CountryNameLookupModelFromJson(
    Map<String, dynamic> json) {
  return _$_CountryNameLookupModel(
    en: json['en'] as String,
    nl: json['nl'] as String,
  );
}

Map<String, dynamic> _$_$_CountryNameLookupModelToJson(
        _$_CountryNameLookupModel instance) =>
    <String, dynamic>{
      'en': instance.en,
      'nl': instance.nl,
    };
