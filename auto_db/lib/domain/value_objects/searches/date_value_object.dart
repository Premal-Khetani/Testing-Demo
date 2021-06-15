import 'package:auto_db/core/constants/string_constants.dart';

class DateValueObject {
  DateTime value;
  String errorMessage;

  DateValueObject._({this.value, this.errorMessage});
  
  factory DateValueObject.initial() => DateValueObject._(
    value: null,
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = value == null ? StringConstants.emptyInputError : '';
    return !isError;
  }
}