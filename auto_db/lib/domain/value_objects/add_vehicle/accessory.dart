import 'package:auto_db/domain/validators.dart';

class Accessory {
  String value;
  String errorMessage;

  Accessory._({this.value, this.errorMessage});
  
  factory Accessory.initial() => Accessory._(
    value: '',
    errorMessage: ''
  );

  int get allowedLenght => 60;

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}