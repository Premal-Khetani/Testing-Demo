import 'package:auto_db/domain/validators.dart';

class Description {
  String value;
  String errorMessage;

  Description._({this.value, this.errorMessage});
  
  factory Description.initial() => Description._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}