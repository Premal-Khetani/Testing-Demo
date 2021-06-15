part of 'vehicle_details_extended_bloc.dart';

@freezed
abstract class VehicleDetailsExtendedEvent with _$VehicleDetailsExtendedEvent {
  const factory VehicleDetailsExtendedEvent.onCloseTapped() = OnCloseTapped;
  const factory VehicleDetailsExtendedEvent.onSpecificationsTapped() = OnSpecificationsTapped;
  const factory VehicleDetailsExtendedEvent.onAccessoriesTapped() = OnAccessoriesTapped;
  const factory VehicleDetailsExtendedEvent.onDescriptionTapped() = OnDescriptionTapped;
  const factory VehicleDetailsExtendedEvent.onFullScreenGallery({@required Widget gallery}) = OnFullScreenGallery;
}