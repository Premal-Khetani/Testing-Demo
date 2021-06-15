import 'package:flutter/foundation.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';

abstract class SharedPreferencesData {
  Future<bool> saveUser({@required UserLoginResponse user});
  Future<UserLoginResponse> getLogedUser();
  Future<bool> deleteUser();
}
