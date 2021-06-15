// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rdw_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RDWResponseModel _$_$_RDWResponseModelFromJson(Map<String, dynamic> json) {
  return _$_RDWResponseModel(
    licensePlate: json['kenteken'] as String,
    vehicleTypeId: json['voertuigsoort'] as int,
    brandId: json['merk'] as int,
    modelId: json['handelsbenaming'] as int,
    transmissionTypeId: json['type_versnellingsbak'] as int,
    bodyworkTypeId: json['inrichting'] as int,
    fuelTypeId: json['brandstof_omschrijving'] as int,
    year: json['datum_eerste_toelating'] as String,
    color: json['color'] as int,
    engineSize: json['cilinderinhoud'] as String,
  );
}

Map<String, dynamic> _$_$_RDWResponseModelToJson(
        _$_RDWResponseModel instance) =>
    <String, dynamic>{
      'kenteken': instance.licensePlate,
      'voertuigsoort': instance.vehicleTypeId,
      'merk': instance.brandId,
      'handelsbenaming': instance.modelId,
      'type_versnellingsbak': instance.transmissionTypeId,
      'inrichting': instance.bodyworkTypeId,
      'brandstof_omschrijving': instance.fuelTypeId,
      'datum_eerste_toelating': instance.year,
      'color': instance.color,
      'cilinderinhoud': instance.engineSize,
    };
