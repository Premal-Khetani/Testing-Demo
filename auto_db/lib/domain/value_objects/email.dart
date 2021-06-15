import 'package:auto_db/domain/validators.dart';

class Email{
  String value;
  String errorMessage;

  Email._({this.value, this.errorMessage});
  
  factory Email.initial() => Email._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = validateEmail(value);
    return !isError;
  }
}