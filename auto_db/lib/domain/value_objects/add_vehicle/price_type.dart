import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class PriceType {
  List<AddVehicleLookup> options;
  AddVehicleLookup value;
  String errorMessage;

  PriceType({
    @required this.options, 
    @required this.value,
    @required this.errorMessage
  });

  factory PriceType.initial() => PriceType(
    options : List<AddVehicleLookup>(),
    value: null,
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    if(value == null){
      errorMessage = StringConstants.emptyInputError;
      return !isError;
    }
    
    errorMessage = emptyFieldValidation(value.name);
    return !isError;
  }
}