part of 'add_search_bloc.dart';

@freezed
abstract class AddSearchState with _$AddSearchState {
  const factory AddSearchState({
    @required VehicleType vehicleType,
    @required DateValueObject dateFrom,
    @required DateValueObject dateTo,
    @required SearchName searchName,
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
    @required bool isEdit,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _AddSearchState;

  factory AddSearchState.initial() => AddSearchState(
    vehicleType: VehicleType.initial(),
    dateFrom: DateValueObject.initial(),
    dateTo: DateValueObject.initial(),
    searchName: SearchName.initial(),
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
    isEdit: false,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}