import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_response.freezed.dart';

@freezed
abstract class UserLoginResponse with _$UserLoginResponse {
  const factory UserLoginResponse({
    @required User user,
    @required Token token
  }) = _UserLoginResponse;
}

@freezed
abstract class User with _$User {
  const factory User({
    @required int id,
    @required String name,
    String firstName,
    String lastName,
    String inserts,
    @required String email,
    String accountType,
    String company,
    @required List<UserRole> roles
  }) = _User;
}

@freezed
abstract class UserRole with _$UserRole {
  const factory UserRole({
    @required String name
  }) = _UserRole;
}

@freezed
abstract class Token with _$Token {
  const factory Token({
    @required String tokenType,
    @required int expiresIn,
    @required String accessToken,
    @required String refreshToken,
  }) = _Token;
}