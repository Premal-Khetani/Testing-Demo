import 'package:auto_db/domain/entities/dropdowns/string_lookup.dart';
import 'package:flutter/foundation.dart';

class VehicleInterior {
  List<StringLookup> options;
  String value;
  String errorMessage;

  VehicleInterior({
    @required this.options, 
    @required this.value,
    @required this.errorMessage
  });

  factory VehicleInterior.initial() => VehicleInterior(
    options : List<StringLookup>(),
    value: null,
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    return !isError;
  }
}