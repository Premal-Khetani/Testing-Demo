import 'package:auto_db/data/errors/failure.dart';

class ResponseWrapper<T>{
    T body;
    Failure error;
    Map<String, dynamic> extra;

    ResponseWrapper({this.body, this.error});
}