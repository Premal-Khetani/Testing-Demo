// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_post_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegisterPostBodyModel _$_$_UserRegisterPostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _$_UserRegisterPostBodyModel(
    accountType: json['account_type'] as String,
    company: json['company'] as String,
    cocNumber: json['coc_number'] as String,
    sex: json['sex'] as String,
    firstName: json['first_name'] as String,
    inserts: json['inserts'] as String,
    surname: json['last_name'] as String,
    zipCode: json['zip_code'] as String,
    streetNumber: json['street_number'] as int,
    addition: json['addition'] as String,
    street: json['street'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    phoneNumber: json['phone_number'] as String,
    alternativePhoneNumber: json['alt_phone_number'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    confirmPassword: json['confirm_password'] as String,
  );
}

Map<String, dynamic> _$_$_UserRegisterPostBodyModelToJson(
        _$_UserRegisterPostBodyModel instance) =>
    <String, dynamic>{
      'account_type': instance.accountType,
      'company': instance.company,
      'coc_number': instance.cocNumber,
      'sex': instance.sex,
      'first_name': instance.firstName,
      'inserts': instance.inserts,
      'last_name': instance.surname,
      'zip_code': instance.zipCode,
      'street_number': instance.streetNumber,
      'addition': instance.addition,
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
      'phone_number': instance.phoneNumber,
      'alt_phone_number': instance.alternativePhoneNumber,
      'email': instance.email,
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
    };
