part of 'vehicle_details_description_bloc.dart';

@freezed
abstract class VehicleDetailsDescriptionState with _$VehicleDetailsDescriptionState {
  const factory VehicleDetailsDescriptionState({
    String title,
    String description,
    bool isSubmitting,
  }) = _VehicleDetailsDescriptionState;

  factory VehicleDetailsDescriptionState.initial() => VehicleDetailsDescriptionState(
    title: '',
    description: '',
    isSubmitting: true
  );
}