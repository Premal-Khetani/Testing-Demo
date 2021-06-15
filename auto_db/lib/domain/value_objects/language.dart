import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class Language {
  List<String> options;
  String value;
  String errorMessage;

  Language({
    @required this.options, 
    @required this.value, 
    @required this.errorMessage
  });

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}