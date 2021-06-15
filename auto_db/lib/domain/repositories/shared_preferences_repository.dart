import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:flutter/foundation.dart';

abstract class SharedPreferencesRepository {
  Future<ResponseWrapper<bool>> saveUser({@required UserLoginResponse user});
  Future<ResponseWrapper<UserLoginResponse>> getLogedUser();
  Future<ResponseWrapper<bool>> deleteUser();
}