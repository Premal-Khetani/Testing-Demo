import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_vehicle_response.freezed.dart';

@freezed
abstract class RemoveVehicleResponse with _$RemoveVehicleResponse {
  const factory RemoveVehicleResponse({
    @required bool success
  }) = _RemoveVehicleResponse;
}