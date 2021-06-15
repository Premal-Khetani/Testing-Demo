import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/repositories/shared_preferences_repository.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:flutter/foundation.dart';

class SaveLogedUserUsecase extends BaseUsecase<bool,SaveLogedUserParams> {
  SharedPreferencesRepository _repository;

  SaveLogedUserUsecase(SharedPreferencesRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<bool>> call(SaveLogedUserParams params) async {
    return await _repository.saveUser(user: params.user);
  }
}

class SaveLogedUserParams {
  final UserLoginResponse user;

  SaveLogedUserParams({@required this.user});
}