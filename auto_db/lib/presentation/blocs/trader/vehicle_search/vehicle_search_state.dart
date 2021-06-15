part of 'vehicle_search_bloc.dart';

@freezed
abstract class VehicleSearchState with _$VehicleSearchState {
  const factory VehicleSearchState({
    @required VehicleType vehicleType,
    @required VehicleBrand vehicleBrand,
    @required VehicleModel vehicleModel,
    @required VehicleTransmissionType vehicleTransmissionType,
    @required VehicleBodyWork vehicleBodyWork,
    @required VehicleFuelType vehicleFuelType,
    @required AddVehicleYear yearFrom,
    @required AddVehicleYear yearTo,
    @required PriceDropdown priceFrom,
    @required PriceDropdown priceTo,
    @required MileageDropdown mileageFrom,
    @required MileageDropdown mileageTo, 
    @required int numberOfAds,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _VehicleSearchState;

  factory VehicleSearchState.initial() => VehicleSearchState(
    vehicleType: VehicleType.initial(),
    vehicleBrand: VehicleBrand.initial(),
    vehicleModel: VehicleModel.initial(),
    vehicleTransmissionType: VehicleTransmissionType.initial(),
    vehicleBodyWork: VehicleBodyWork.initial(),
    vehicleFuelType: VehicleFuelType.initial(),
    yearFrom: AddVehicleYear.initial(),
    yearTo: AddVehicleYear.initial(),
    priceFrom: PriceDropdown.initial(),
    priceTo: PriceDropdown.initial(),
    mileageFrom: MileageDropdown.initial(),
    mileageTo: MileageDropdown.initial(),
    numberOfAds: 0,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}