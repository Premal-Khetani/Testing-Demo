import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_lookups.freezed.dart';

@freezed
abstract class AddVehicleLookup with _$AddVehicleLookup {
  const factory AddVehicleLookup({
    @required int id,
    @required String name 
  }) = _AddVehicleLookups;
}