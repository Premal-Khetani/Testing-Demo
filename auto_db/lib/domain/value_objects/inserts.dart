import 'package:auto_db/domain/validators.dart';

class Inserts {
  String value;
  String errorMessage;

  Inserts._({this.value, this.errorMessage});
  
  factory Inserts.initial() => Inserts._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = alfanumericalValidation(value);
    return !isError;
  }
}