import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/user_register/user_register_post_body.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';
import 'package:flutter/foundation.dart';

class UserRegisterUsecase extends BaseUsecase<bool,UserRegistrationParams> {
  AuthenticationRepository _repository;

  UserRegisterUsecase(AuthenticationRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<bool>> call(UserRegistrationParams params) async {
    return await _repository.register(userRegisterPostBody: params.userRegisterPostBody);
  }
}

class UserRegistrationParams {
  final UserRegisterPostBody userRegisterPostBody;

  UserRegistrationParams({@required this.userRegisterPostBody});
}