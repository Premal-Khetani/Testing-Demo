part of 'delete_vehicle_bloc.dart';

@freezed
abstract class DeleteVehicleEvent with _$DeleteVehicleEvent {
  const factory DeleteVehicleEvent.onCancelTapped() = OnCancelTapped;
  const factory DeleteVehicleEvent.onRemoveVehicleTapped() = OnRemoveVehicleTapped;
}