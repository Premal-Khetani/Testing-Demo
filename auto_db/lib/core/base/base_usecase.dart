import 'package:auto_db/core/base/response_wrapper.dart';

abstract class BaseUsecase<Type, Params> {
  Future<ResponseWrapper<Type>> call(Params params);
}

class NoParams{}