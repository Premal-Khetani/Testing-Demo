import 'package:auto_db/domain/validators.dart';

class EngineSize {
  String value;
  String errorMessage;
  bool isDisabled;

  EngineSize._({this.value, this.errorMessage, this.isDisabled});
  
  factory EngineSize.initial() => EngineSize._(
    value: '',
    errorMessage: '',
    isDisabled: false
  );

  int get allowedLenght => 5;

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