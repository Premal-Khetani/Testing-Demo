import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';

@freezed
abstract class UserLogin with _$UserLogin {
  const factory UserLogin({
    @required String email, 
    @required String password,
  }) = _UserLogin;
}