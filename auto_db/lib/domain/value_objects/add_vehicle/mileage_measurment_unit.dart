import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class MileageMeasurmentUnit {
  List<String> options;
  String value;
  String errorMessage;

  MileageMeasurmentUnit({
    @required this.options, 
    @required this.value,
    @required this.errorMessage
  });

  factory MileageMeasurmentUnit.initial() => MileageMeasurmentUnit(
    options : [StringConstants.km, StringConstants.mls],
    value: StringConstants.km,
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}