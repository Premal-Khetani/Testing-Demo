part of 'vehicle_search_bloc.dart';

@freezed
abstract class VehicleSearchEvent with _$VehicleSearchEvent {
  const factory VehicleSearchEvent.onCloseTapped() = OnCloseTapped;
  const factory VehicleSearchEvent.onRetryTapped() = OnRetryTapped;
  const factory VehicleSearchEvent.onSearchTapped() = OnSearchTapped;
  const factory VehicleSearchEvent.onClearTapped() = OnClearTapped;
  const factory VehicleSearchEvent.vehicleTypeChanged({@required AddVehicleLookup value}) = VehicleTypeChanged;
  const factory VehicleSearchEvent.vehicleBrandChanged({@required AddVehicleLookup value}) = VehicleBrandChanged;
  const factory VehicleSearchEvent.vehicleModelChanged({@required AddVehicleLookup value}) = VehicleModelChanged;
  const factory VehicleSearchEvent.vehicleTransmissionChanged({@required AddVehicleLookup value}) = VehicleTransmissionChanged;
  const factory VehicleSearchEvent.vehicleBodyWorkChanged({@required AddVehicleLookup value}) = VehicleBodyWorkChanged;
  const factory VehicleSearchEvent.vehicleFuelTypeChanged({@required AddVehicleLookup value}) = VehicleFuelTypeChanged;
  const factory VehicleSearchEvent.yearFromChanged({@required String value}) = YearFromChanged;
  const factory VehicleSearchEvent.yearToChanged({@required String value}) = YearToChanged;
  const factory VehicleSearchEvent.priceFromChanged({@required String value}) = PriceFromChanged;
  const factory VehicleSearchEvent.priceToChanged({@required String value}) = PriceToChanged;
  const factory VehicleSearchEvent.mileageFromChanged({@required String value}) = MileageFromChanged;
  const factory VehicleSearchEvent.mileageToChanged({@required String value}) = MileageToChanged;
}