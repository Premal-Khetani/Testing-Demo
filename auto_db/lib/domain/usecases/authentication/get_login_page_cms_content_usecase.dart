import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/login_cms_content/login_cms_content.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';

class GetLoginPageCmsContentUsecase extends BaseUsecase<LoginCMSContent,NoParams> {
  AuthenticationRepository _repository;

  GetLoginPageCmsContentUsecase(AuthenticationRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<LoginCMSContent>> call(NoParams params) async {
    return await _repository.getLoginPageCmsContent();
  }
}