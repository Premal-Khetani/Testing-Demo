part of 'vehicle_details_specifications_bloc.dart';

@freezed
abstract class VehicleDetailsSpecificationsEvent with _$VehicleDetailsSpecificationsEvent {
  const factory VehicleDetailsSpecificationsEvent.onCloseTapped() = OnCloseTapped;
}
