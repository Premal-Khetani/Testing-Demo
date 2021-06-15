part of 'vehicle_details_accessories_bloc.dart';

@freezed
abstract class VehicleDetailsAccessoriesEvent with _$VehicleDetailsAccessoriesEvent {
  const factory VehicleDetailsAccessoriesEvent.onCloseTapped() = OnCloseTapped;
  const factory VehicleDetailsAccessoriesEvent.onRetryTapped() = OnRetryTapped;
}