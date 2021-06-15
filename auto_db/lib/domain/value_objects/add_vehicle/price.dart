import 'package:auto_db/domain/validators.dart';

class Price {
  String value;
  String errorMessage;

  Price._({this.value, this.errorMessage});
  
  factory Price.initial() => Price._(
    value: '',
    errorMessage: ''
  );

  // 1 euro sign, 
  // 9 numbers [0 - 9], 
  // 2 separators ',', 
  // 3 '.00'
  int get allowedLenght => 15;

  bool get isError => errorMessage.isNotEmpty;

  bool validate({bool isRequired = false}){
    if(isRequired){
      errorMessage = emptyFieldValidation(value);
      if(errorMessage.isNotEmpty){
        return !isError;
      }
    }

    // errorMessage = validateInteger(value);
    return !isError;
  }
}