import 'package:auto_db/domain/validators.dart';

class LicensePlate {
  String value;
  String errorMessage;

  LicensePlate._({this.value, this.errorMessage});
  
  factory LicensePlate.initial() => LicensePlate._(
    value: '',
    errorMessage: ''
  );

  int get allowedLenght => 8;

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = validateLicencePlate(value, allowedLenght);
    return !isError;
  }

  bool validateRDW(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }
    
    errorMessage = validateLicencePlate(value, allowedLenght);
    return !isError;
  }
}