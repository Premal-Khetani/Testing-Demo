import 'package:auto_db/domain/entities/dropdowns/country_lookup.dart';
import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class Country {
  List<CountryLookup> options;
  String value;
  String errorMessage;

  Country({
    @required this.options, 
    @required this.value,
    @required this.errorMessage
  });

  factory Country.initial() => Country(
    options : List<CountryLookup>(),
    value: null,
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}