import 'package:auto_db/domain/validators.dart';

class CoCNumber {
  String value;
  String errorMessage;

  CoCNumber._({this.value, this.errorMessage});
  
  factory CoCNumber.initial() => CoCNumber._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = alfanumericalValidation(value);
    return !isError;
  }
}