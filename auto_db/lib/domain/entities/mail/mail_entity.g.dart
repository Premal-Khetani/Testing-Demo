// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MailEntity _$_$_MailEntityFromJson(Map<String, dynamic> json) {
  return _$_MailEntity(
    email: json['email'] as String,
    name: json['name'] as String,
    subject: json['subject'] as String,
    question: json['question'] as String,
  );
}

Map<String, dynamic> _$_$_MailEntityToJson(_$_MailEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'subject': instance.subject,
      'question': instance.question,
    };
