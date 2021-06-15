import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/login_cms_content/login_cms_content.dart';
import 'package:auto_db/domain/entities/user_login/user_login.dart';
import 'package:auto_db/domain/entities/user_register/user_register_post_body.dart';
import 'package:flutter/foundation.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';

abstract class AuthenticationRepository {
  Future<ResponseWrapper<UserLoginResponse>> login({@required UserLogin userLogin});
  Future<ResponseWrapper<bool>> register({@required UserRegisterPostBody userRegisterPostBody});
  Future<ResponseWrapper<LoginCMSContent>> getLoginPageCmsContent();
  Future<ResponseWrapper<UserRegisterPostBody>> getUserProfile();
  Future<ResponseWrapper<UserRegisterPostBody>> updateProfile({UserRegisterPostBody userRegisterPostBody});
}