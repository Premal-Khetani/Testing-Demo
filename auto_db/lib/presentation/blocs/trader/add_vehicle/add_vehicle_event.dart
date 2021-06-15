part of 'add_vehicle_bloc.dart';

@freezed
abstract class AddVehicleEvent with _$AddVehicleEvent {
  const factory AddVehicleEvent.closeTapped() = CloseTapped;
  const factory AddVehicleEvent.onLicensePlateTapped() = OnLicensePlateTapped;
  const factory AddVehicleEvent.onSpecificationsTapped() = OnSpecificationsTapped;
  const factory AddVehicleEvent.onDescriptionTapped() = OnDescriptionTapped;
  const factory AddVehicleEvent.onPhotosTapped() = OnPhotosTapped;
  const factory AddVehicleEvent.onAccessoriesTapped() = OnAccessoriesTapped;
  const factory AddVehicleEvent.onPriceTapped() = OnPriceTapped;
}