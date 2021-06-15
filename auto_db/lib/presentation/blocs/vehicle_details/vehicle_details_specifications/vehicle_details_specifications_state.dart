part of 'vehicle_details_specifications_bloc.dart';

@freezed
abstract class VehicleDetailsSpecificationsState with _$VehicleDetailsSpecificationsState {
  const factory VehicleDetailsSpecificationsState({
    String vehicleType,
    String brand,
    String model,
    String year,
    String fuel,
    String mileage,
    String mileageUnit,
    String transmission,
    String body,
    String color,
    String interior,
    String engine,
    bool isSubmitting
  }) = _VehicleDetailsSpecificationsState;

  factory VehicleDetailsSpecificationsState.initial() => VehicleDetailsSpecificationsState(
    vehicleType: '',
    brand: '',
    model: '',
    year: '',
    fuel: '',
    mileage: '',
    mileageUnit: '',
    transmission: '',
    body: '',
    color: '',
    interior: '',
    engine: '',
    isSubmitting: true
  );
}