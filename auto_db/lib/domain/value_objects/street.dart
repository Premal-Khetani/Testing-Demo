import 'package:auto_db/domain/validators.dart';

class Street {
  String value;
  String errorMessage;

  Street._({this.value, this.errorMessage});
  
  factory Street.initial() => Street._(
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