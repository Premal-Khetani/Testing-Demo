import 'package:auto_db/domain/validators.dart';

class SearchName {
  String value;
  String errorMessage;

  SearchName._({this.value, this.errorMessage});
  
  factory SearchName.initial() => SearchName._(
    value: '',
    errorMessage: ''
  );

  int get allowedLenght => 50;

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}