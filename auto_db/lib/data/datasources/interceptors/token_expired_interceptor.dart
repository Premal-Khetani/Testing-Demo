import 'package:dio/dio.dart';

class TokenExpiredInterceptor extends Interceptor {
  @override
  Future onError(DioError err) async {
    if(_shouldRefreshToken(err)){

    }

    return err;
  }

  bool _shouldRefreshToken(DioError err) {
    if(err.type == DioErrorType.DEFAULT && err.error != null){
      if(err.response != null && err.response.statusCode == 401){
        return true;
      }
    }
    return false;
  }
}