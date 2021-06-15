import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/user_login/user_login.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:flutter/foundation.dart';

class UserLoginUsecase extends BaseUsecase<UserLoginResponse,UserLoginParams> {
  AuthenticationRepository _repository;

  UserLoginUsecase(AuthenticationRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<UserLoginResponse>> call(UserLoginParams params) async {
    return await _repository.login(userLogin: params.userLogin);
  }
}

class UserLoginParams {
  final UserLogin userLogin;

  UserLoginParams({@required this.userLogin});
}