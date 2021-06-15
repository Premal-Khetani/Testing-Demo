import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:flutter/foundation.dart';

class InventoryFilter {
  List<AddVehicleLookup> options;
  AddVehicleLookup value;

  InventoryFilter({
    @required this.options, 
    @required this.value,
  });

  factory InventoryFilter.initial() => InventoryFilter(
    options : List<AddVehicleLookup>(),
    value: null,
  );
}