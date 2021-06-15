import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_initial_response.freezed.dart';

@freezed
abstract class AddVehicleInitialResponse with _$AddVehicleInitialResponse {
  const factory AddVehicleInitialResponse({
    @required int id, 
  }) = _AddVehicleInitialResponse;
}