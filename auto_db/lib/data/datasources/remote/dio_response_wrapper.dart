import 'package:auto_db/data/errors/failure.dart';
import 'package:dio/dio.dart';

class DioResponseWrapper{
    Response<dynamic> response;
    Failure error;

    DioResponseWrapper({this.response, this.error});
}