import 'package:auto_db/domain/validators.dart';

class FirstName {
  String value;
  String errorMessage;

  FirstName._({this.value, this.errorMessage});
  
  factory FirstName.initial() => FirstName._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = alfanumericalValidation(value, isOnlyNumbersAllowed: false);
    return !isError;
  }
}