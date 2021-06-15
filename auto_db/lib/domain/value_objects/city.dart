import 'package:auto_db/domain/validators.dart';

class City {
  String value;
  String errorMessage;

  City._({this.value, this.errorMessage});
  
  factory City.initial() => City._(
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