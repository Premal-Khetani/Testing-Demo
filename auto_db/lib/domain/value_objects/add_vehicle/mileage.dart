import 'package:auto_db/domain/validators.dart';

class Mileage {
  String value;
  String errorMessage;

  Mileage._({this.value, this.errorMessage});
  
  factory Mileage.initial() => Mileage._(
    value: '',
    errorMessage: ''
  );

  int get allowedLenght => 7;

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = validateInteger(value);
    return !isError;
  }

  void validateWhenTyping(){
    if(value.isEmpty){
      errorMessage = '';
      return;
    }

    errorMessage = validateInteger(value);
  }
}