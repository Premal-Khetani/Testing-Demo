import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class VehicleModel {
  List<AddVehicleLookup> options;
  AddVehicleLookup value;
  String errorMessage;
  bool isDisabled;

  VehicleModel({
    @required this.options, 
    @required this.value,
    @required this.errorMessage,
    @required this.isDisabled
  });

  factory VehicleModel.initial() => VehicleModel(
    options : null,
    value: null,
    errorMessage: '',
    isDisabled: false
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