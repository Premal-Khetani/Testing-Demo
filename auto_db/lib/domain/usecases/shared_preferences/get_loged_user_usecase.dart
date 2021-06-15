import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/repositories/shared_preferences_repository.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';

class GetLogedUserUsecase extends BaseUsecase<UserLoginResponse,NoParams> {
  SharedPreferencesRepository _repository;

  GetLogedUserUsecase(SharedPreferencesRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<UserLoginResponse>> call(NoParams params) async {
    return await _repository.getLogedUser();
  }

  Future<ResponseWrapper<bool>> logout() async {
    return await _repository.deleteUser();
  }
}