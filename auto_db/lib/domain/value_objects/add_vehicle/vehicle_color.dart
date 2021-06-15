import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:flutter/foundation.dart';

class VehicleColor {
  List<AddVehicleLookup> options;
  AddVehicleLookup value;
  String errorMessage;
  bool isDisabled;

  VehicleColor({
    @required this.options, 
    @required this.value,
    @required this.errorMessage,
    @required this.isDisabled
  });

  factory VehicleColor.initial() => VehicleColor(
    options : List<AddVehicleLookup>(),
    value: null,
    errorMessage: '',
    isDisabled: false
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    return !isError;
  }
}