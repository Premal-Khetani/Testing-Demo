import 'package:auto_db/domain/validators.dart';

class StreetNumber {
  String value;
  String errorMessage;

  StreetNumber._({this.value, this.errorMessage});
  
  factory StreetNumber.initial() => StreetNumber._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = validateInteger(value);
    return !isError;
  }

  bool validateWithoutErrorMessage(){
    var e = emptyFieldValidation(value);
    if(e.isNotEmpty){
      return false;
    }

    e = validateInteger(value);
    if(e.isNotEmpty){
      return false;
    }

    return true;
  }
}