import 'package:auto_db/domain/validators.dart';

class ZipCode {
  String value;
  String errorMessage;

  ZipCode._({this.value, this.errorMessage});
  
  factory ZipCode.initial() => ZipCode._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = alfanumericalValidation(value);
    return !isError;
  }

  bool validateWithoutErrorMessage(){
    var e = emptyFieldValidation(value);
    if(e.isNotEmpty){
      return false;
    }

    e = alfanumericalValidation(value);
    if(e.isNotEmpty){
      return false;
    }

    return true;
  }
}