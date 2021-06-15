part of 'vehicle_details_description_bloc.dart';

@freezed
abstract class VehicleDetailsDescriptionEvent with _$VehicleDetailsDescriptionEvent {
  const factory VehicleDetailsDescriptionEvent.onCloseTapped() = OnCloseTapped;
}