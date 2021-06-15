// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationEntity _$_$_NotificationEntityFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationEntity(
    email: json['email'] as bool,
    smartphone: json['smartphone'] as bool,
    everything: json['everything'] as bool,
    adPlaced: json['adPlaced'] as bool,
    reactionPotentialBuyer: json['reactionPotentialBuyer'] as bool,
    searchPosted: json['searchPosted'] as bool,
    leadReceived: json['leadReceived'] as bool,
    inventoryShareRequestReceived:
        json['inventoryShareRequestReceived'] as bool,
  );
}

Map<String, dynamic> _$_$_NotificationEntityToJson(
        _$_NotificationEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'smartphone': instance.smartphone,
      'everything': instance.everything,
      'adPlaced': instance.adPlaced,
      'reactionPotentialBuyer': instance.reactionPotentialBuyer,
      'searchPosted': instance.searchPosted,
      'leadReceived': instance.leadReceived,
      'inventoryShareRequestReceived': instance.inventoryShareRequestReceived,
    };
