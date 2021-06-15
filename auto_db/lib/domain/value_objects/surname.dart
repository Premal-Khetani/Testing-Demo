import 'package:auto_db/domain/validators.dart';

class Surname {
  String value;
  String errorMessage;

  Surname._({this.value, this.errorMessage});
  
  factory Surname.initial() => Surname._(
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