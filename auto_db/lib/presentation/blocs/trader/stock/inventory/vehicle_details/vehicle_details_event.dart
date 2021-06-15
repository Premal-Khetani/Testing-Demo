part of 'vehicle_details_bloc.dart';

@freezed
abstract class VehicleDetailsEvent with _$VehicleDetailsEvent {
  const factory VehicleDetailsEvent.closeTapped() = CloseTapped;
  const factory VehicleDetailsEvent.onRetryTapped() = OnRetryTapped;
  const factory VehicleDetailsEvent.onViewTapped() = OnViewTapped;
  const factory VehicleDetailsEvent.onEditTapped() = OnEditTapped;
  const factory VehicleDetailsEvent.onReserveTapped() = OnReserveTapped;
  const factory VehicleDetailsEvent.onDeleteTapped() = OnDeleteTapped;
  const factory VehicleDetailsEvent.onPdfTapped() = OnPdfTapped;
}