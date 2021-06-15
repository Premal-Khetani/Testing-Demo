import 'dart:io';

import 'package:auto_db/data/datasources/remote/dio_response_wrapper.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/utills/error_mesages.dart';
import 'package:auto_db/data/utills/network_information.dart';
import 'package:auto_db/main.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class MainDioClient{
  final Dio dio;

  MainDioClient._({@required this.dio});

  factory MainDioClient.create(){
    final _dio = Dio();
    _dio.options.baseUrl =
        "https://awseb-awseb-t1v760htq8jc-1843078344.eu-west-1.elb.amazonaws.com/api";
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    return MainDioClient._(
      dio: _dio
    ); 
  }

  String _getAutorizationToken(){
    String _autorization = '';
    if (appBloc.userToken != null) {
      _autorization = appBloc.userToken.tokenType + ' ' + appBloc.userToken.accessToken;
    }

    return _autorization;
  }

  Future<DioResponseWrapper> post(
    String path, 
    {dynamic data, 
    Map<String, dynamic> queryParameters, 
    Options options, 
    CancelToken cancelToken, 
    void Function(int, int) onSendProgress, 
    void Function(int, int) onReceiveProgress,
    String logTag = 'Api request',
    bool haveAutorization = false
  }) async {
    try {
      if(haveAutorization){
        final _autorization = _getAutorizationToken();
        options.headers.addAll({'Authorization': _autorization});
      }

      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
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

  Future<Response<dynamic>> postWithoutHandlingError(
    String path, 
    {dynamic data, 
    Map<String, dynamic> queryParameters, 
    Options options, 
    CancelToken cancelToken, 
    void Function(int, int) onSendProgress, 
    void Function(int, int) onReceiveProgress,
    bool haveAutorization = false
  }) async {
    if(haveAutorization){
      final _autorization = _getAutorizationToken();
      options.headers.addAll({'Authorization': _autorization});
    }

    return await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress
    );
  }

  Future<DioResponseWrapper> get(
    String path,
    {Map<String, dynamic> queryParameters, 
    Options options, 
    CancelToken cancelToken, 
    void Function(int, int) onReceiveProgress,
    String logTag = 'Api request',
    bool haveAutorization = false
  }) async {
    try {
      if(haveAutorization){
        final _autorization = _getAutorizationToken();
        options.headers.addAll({'Authorization': _autorization});
      }

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