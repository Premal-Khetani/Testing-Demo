part of 'vehicle_details_bloc.dart';

@freezed
abstract class VehicleDetailsState with _$VehicleDetailsState {
  const factory VehicleDetailsState({
    @required String title,
    @required String image,
    String licensePlate,
    String stockNumber,
    @required String price,
    @required String year,
    @required String mileage,
    @required String fuel,
    @required String engine,
    @required String transmission,
    @required String power,
    @required bool isReserved,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _VehicleDetailsState;

  factory VehicleDetailsState.initial() => VehicleDetailsState(
    title: '',
    image: '',
    licensePlate: null,
    stockNumber: null,
    price: '',
    year: '',
    mileage: '',
    fuel: '',
    engine: '',
    transmission: '',
    power: '',
    isReserved: false,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}