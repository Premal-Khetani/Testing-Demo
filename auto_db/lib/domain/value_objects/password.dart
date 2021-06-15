import 'package:auto_db/domain/validators.dart';

class Password{
  String value;
  String errorMessage;

  Password._({this.value, this.errorMessage});
  
  factory Password.initial() => Password._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}