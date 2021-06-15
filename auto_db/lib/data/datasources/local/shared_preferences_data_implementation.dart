import 'dart:convert';

import 'package:auto_db/data/datasources/local/shared_preferences_data.dart';
import 'package:auto_db/data/models/user_login_model/user_login_response_model.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDataImplementation implements SharedPreferencesData {
  @override
  Future<UserLoginResponse> getLogedUser() async {
    UserLoginResponse userLoginResponse;

    final prefs = await SharedPreferences.getInstance();
    try {
      String s = prefs.getString(SharedPreferencesConstants.logged_user);
      if (s.isNotEmpty) {
        final _map = jsonDecode(s);
        userLoginResponse = UserLoginResponseModel.fromJson(_map).toDomain();
      }
    } catch (e) {
      print(e.toString());
    }

    return userLoginResponse;
  }

  @override
  Future<bool> saveUser({UserLoginResponse user}) async {
    final prefs = await SharedPreferences.getInstance();

    return await prefs.setString(SharedPreferencesConstants.logged_user,
        jsonEncode(UserLoginResponseModel.fromDomain(user).toJson()));
  }

  @override
  Future<bool> deleteUser() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(SharedPreferencesConstants.logged_user)) {
      return await prefs.remove(SharedPreferencesConstants.logged_user);
    }
    return false;
  }
}

class SharedPreferencesConstants {
  static const String logged_user = 'logged_user';
}
