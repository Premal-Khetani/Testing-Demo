import 'package:auto_db/domain/validators.dart';

class PhoneNumber {
  String value;
  String errorMessage;

  PhoneNumber._({this.value, this.errorMessage});
  
  factory PhoneNumber.initial() => PhoneNumber._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = valdatePhoneNumber(value);
    return !isError;
  }
}