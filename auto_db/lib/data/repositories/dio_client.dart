import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioClient {
  //static Dio _dio;
  //static Dio _dioS3;

  static Dio get dio {
    final _dio = Dio();
    _dio.options.baseUrl =
        "https://awseb-awseb-t1v760htq8jc-1843078344.eu-west-1.elb.amazonaws.com/api/passport";
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    return _dio;
  }

  static Dio get dioS3 {
    final _dioS3 = Dio();
    _dioS3.options.baseUrl =
        "https://autodb-static-resources.s3.eu-west-1.amazonaws.com/images/ads";
    (_dioS3.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    return _dioS3;
  }
}
