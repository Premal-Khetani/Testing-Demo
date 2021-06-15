import 'package:auto_db/data/datasources/local/shared_preferences_data.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/repositories/shared_preferences_repository.dart';

import '../../main.dart';

class SharedPreferencesRepositoryImplementation implements SharedPreferencesRepository{
  SharedPreferencesData _sharedPreferencesData;

  SharedPreferencesRepositoryImplementation(){
    _resolveDependencies();
  }

  void _resolveDependencies(){
    _sharedPreferencesData =  getIt.get<SharedPreferencesData>();
  }
  
  @override
  Future<ResponseWrapper<bool>> saveUser({UserLoginResponse user}) async {
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();

    _responseWrapper.body = await _sharedPreferencesData.saveUser(user: user);

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<UserLoginResponse>> getLogedUser() async {
    ResponseWrapper<UserLoginResponse> _responseWrapper = ResponseWrapper<UserLoginResponse>();

    _responseWrapper.body = await _sharedPreferencesData.getLogedUser();

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<bool>> deleteUser() async{
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();

    _responseWrapper.body = await _sharedPreferencesData.deleteUser();

    return _responseWrapper;
  }
}