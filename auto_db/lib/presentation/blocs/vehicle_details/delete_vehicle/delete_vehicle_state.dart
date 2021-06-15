part of 'delete_vehicle_bloc.dart';

@freezed
abstract class DeleteVehicleState with _$DeleteVehicleState {
  const factory DeleteVehicleState({
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
    @required bool isSubmitting
  }) = _DeleteVehicleState;

  factory DeleteVehicleState.initial() => DeleteVehicleState(
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
  ); 
}