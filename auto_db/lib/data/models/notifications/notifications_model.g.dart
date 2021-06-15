// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationsModel _$_$_NotificationsModelFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationsModel(
    email: json['email'] as int,
    smartphone: json['smartphone'] as int,
    everything: json['everything'] as int,
    ad_placed: json['ad_placed'] as int,
    reaction_potential_buyer: json['reaction_potential_buyer'] as int,
    search_posted: json['search_posted'] as int,
    lead_received: json['lead_received'] as int,
    inventory_share_request_received:
        json['inventory_share_request_received'] as int,
  );
}

Map<String, dynamic> _$_$_NotificationsModelToJson(
        _$_NotificationsModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'smartphone': instance.smartphone,
      'everything': instance.everything,
      'ad_placed': instance.ad_placed,
      'reaction_potential_buyer': instance.reaction_potential_buyer,
      'search_posted': instance.search_posted,
      'lead_received': instance.lead_received,
      'inventory_share_request_received':
          instance.inventory_share_request_received,
    };
