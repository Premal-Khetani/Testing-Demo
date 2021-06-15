import 'package:auto_db/domain/validators.dart';

class Company {
  String value;
  String errorMessage;

  Company._({this.value, this.errorMessage});
  
  factory Company.initial() => Company._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    errorMessage = alfanumericalValidation(value);
    return !isError;
  }
}