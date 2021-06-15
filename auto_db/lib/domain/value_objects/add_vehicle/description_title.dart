import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class DescriptionTitle {
  String value;
  String errorMessage;
  int allowedLenght;

  DescriptionTitle._({
    @required this.value, 
    @required this.errorMessage, 
    @required this.allowedLenght
  });
  
  factory DescriptionTitle.initial() => DescriptionTitle._(
    value: '',
    errorMessage: '',
    allowedLenght: 100
  );

  int get freeLenght => allowedLenght - value.length; 

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = lenghtValidation(allowedLenght, value.length);
    return !isError;
  }
}