import 'package:auto_db/data/datasources/remote/dio_response_wrapper.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/utills/error_mesages.dart';
import 'package:auto_db/data/utills/network_information.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class PostcodeNlDioClient{
  final Dio dio;

  PostcodeNlDioClient._({@required this.dio});

  factory PostcodeNlDioClient.create(){
    final _dio = Dio();
    _dio.options.baseUrl = "https://api.postcodeapi.nu/v3/lookup";

    return PostcodeNlDioClient._(
      dio: _dio
    ); 
  }

  Future<DioResponseWrapper> get(
    String path,
    {Map<String, dynamic> queryParameters, 
    Options options, 
    CancelToken cancelToken, 
    void Function(int, int) onReceiveProgress,
    String logTag = 'Api request',
  }) async {
    try {
      options.headers.addAll({'X-Api-Key': 'NfZpePk4nO5j18GqyziOG6MKXLje3ZQo29VgaLMj'});

      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress
      );

      return DioResponseWrapper(
        response: response
      );

    } on DioError catch (e) {
      final _error = await handleDioError(e:e, logTag:logTag);
      return DioResponseWrapper(
        error: _error
      ); 
    } catch (e){
      return DioResponseWrapper(
        error: Failure.genericError()
      );
    }
  }

  Future<Failure> handleDioError({@required DioError e, @required String logTag}) async {
    if (e.type == DioErrorType.CONNECT_TIMEOUT ||
        e.type == DioErrorType.SEND_TIMEOUT ||
        e.type == DioErrorType.RECEIVE_TIMEOUT
      ) {
      int _statusCode = 408; //request timed out
      print('$logTag: $_statusCode ');
      return Failure.serverError(
        statusCode: _statusCode,
        massage: ErrorMassages.getHttpErrorMassage(_statusCode)
      );
    } else if (e.response == null) {
      final haveInternet = await NetworkInformation.checkConnectivity();
      return haveInternet ? Failure.genericError() : Failure.noInternerError();
    } else {
      int _statusCode = e.response.statusCode;
      print('$logTag: $_statusCode ' + e.response.data.toString());
      return Failure.serverError(
        statusCode: _statusCode,
        massage: ErrorMassages.getHttpErrorMassage(_statusCode)
      );
    }
  }
}