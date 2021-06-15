import 'package:auto_db/domain/validators.dart';

class Addition {
  String value;
  String errorMessage;

  Addition._({this.value, this.errorMessage});
  
  factory Addition.initial() => Addition._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = alfanumericalValidation(value);
    return !isError;
  }
}