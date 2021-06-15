// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_lead_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactLeadResponseModel _$_$_ContactLeadResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_ContactLeadResponseModel(
    success: json['success'] as bool,
    leadContact: json['leadContact'] == null
        ? null
        : LeadContactModel.fromJson(
            json['leadContact'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ContactLeadResponseModelToJson(
        _$_ContactLeadResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'leadContact': instance.leadContact,
    };
