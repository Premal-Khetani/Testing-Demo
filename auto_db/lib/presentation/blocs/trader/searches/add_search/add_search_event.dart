part of 'add_search_bloc.dart';

@freezed
abstract class AddSearchEvent with _$AddSearchEvent {
  const factory AddSearchEvent.closeTapped() = CloseTapped;
  const factory AddSearchEvent.onRetryTapped() = OnRetryTapped;
  const factory AddSearchEvent.onPostSearchTapped() = OnPostSearchTapped;
  const factory AddSearchEvent.onClearTapped() = OnClearTapped;
  const factory AddSearchEvent.vehicleTypeChanged({@required AddVehicleLookup value}) = VehicleTypeChanged;
  const factory AddSearchEvent.dateFromChanged({@required DateTime value}) = DateFromChanged;
  const factory AddSearchEvent.dateToChanged({@required DateTime value}) = DateToChanged;
  const factory AddSearchEvent.searchNameChanged({@required String value}) = SearchNameChanged;
  const factory AddSearchEvent.vehicleBrandChanged({@required AddVehicleLookup value}) = VehicleBrandChanged;
  const factory AddSearchEvent.vehicleModelChanged({@required AddVehicleLookup value}) = VehicleModelChanged;
  const factory AddSearchEvent.vehicleTransmissionChanged({@required AddVehicleLookup value}) = VehicleTransmissionChanged;
  const factory AddSearchEvent.vehicleBodyWorkChanged({@required AddVehicleLookup value}) = VehicleBodyWorkChanged;
  const factory AddSearchEvent.vehicleFuelTypeChanged({@required AddVehicleLookup value}) = VehicleFuelTypeChanged;
  const factory AddSearchEvent.yearFromChanged({@required String value}) = YearFromChanged;
  const factory AddSearchEvent.yearToChanged({@required String value}) = YearToChanged;
  const factory AddSearchEvent.priceFromChanged({@required String value}) = PriceFromChanged;
  const factory AddSearchEvent.priceToChanged({@required String value}) = PriceToChanged;
  const factory AddSearchEvent.mileageFromChanged({@required String value}) = MileageFromChanged;
  const factory AddSearchEvent.mileageToChanged({@required String value}) = MileageToChanged;
}