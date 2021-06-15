import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities/dropdowns/add_vehicle_lookups.dart';

part 'lead_filter.freezed.dart';

@freezed
abstract class LeadFilter with _$LeadFilter {
  const factory LeadFilter({
    int id,
    AddVehicleLookup vehicleType,
    AddVehicleLookup brand,
    AddVehicleLookup carModel,
    AddVehicleLookup fuelType,
  }) = _LeadFilter;
}