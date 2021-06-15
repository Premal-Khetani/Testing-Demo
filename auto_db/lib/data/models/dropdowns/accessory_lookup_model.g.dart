// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessory_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessoryLookupModel _$_$_AccessoryLookupModelFromJson(
    Map<String, dynamic> json) {
  return _$_AccessoryLookupModel(
    id: json['id'] as int,
    groupName: json['group'] as String,
    name: json['accessory'] as String,
    state: json['default_state'] as bool,
  );
}

Map<String, dynamic> _$_$_AccessoryLookupModelToJson(
        _$_AccessoryLookupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.groupName,
      'accessory': instance.name,
      'default_state': instance.state,
    };
