// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLoginResponseModel _$_$_UserLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_UserLoginResponseModel(
    user: json['user'] == null
        ? null
        : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] == null
        ? null
        : TokenModel.fromJson(json['token'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserLoginResponseModelToJson(
        _$_UserLoginResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    inserts: json['inserts'] as String,
    accountType: json['account_type'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    company: json['company'] as String,
    roles: (json['roles'] as List)
        ?.map((e) => e == null
            ? null
            : UserRoleModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'inserts': instance.inserts,
      'account_type': instance.accountType,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'roles': instance.roles,
    };

_$_UserRoleModel _$_$_UserRoleModelFromJson(Map<String, dynamic> json) {
  return _$_UserRoleModel(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_UserRoleModelToJson(_$_UserRoleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_TokenModel _$_$_TokenModelFromJson(Map<String, dynamic> json) {
  return _$_TokenModel(
    tokenType: json['token_type'] as String,
    expiresIn: json['expires_in'] as int,
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
