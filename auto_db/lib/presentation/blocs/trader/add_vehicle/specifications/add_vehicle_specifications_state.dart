part of 'add_vehicle_specifications_bloc.dart';

@freezed
abstract class AddVehicleSpecificationsState with _$AddVehicleSpecificationsState{
  const factory AddVehicleSpecificationsState({
    @required VehicleType vehicleType,
    @required VehicleBrand vehicleBrand,
    @required VehicleModel vehicleModel,
    @required VehicleTransmissionType vehicleTransmissionType,
    @required VehicleBodyWork vehicleBodyWork,
    @required AddVehicleYear year,
    @required VehicleFuelType vehicleFuelType,
    @required Mileage mileage,
    @required MileageMeasurmentUnit mileageMeasurmentUnit,
    @required VehicleColor color,
    @required VehicleInterior vehicleInterior,
    @required EngineSize engineSize,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _AddVehicleSpecificationsState;

  factory AddVehicleSpecificationsState.initial() => AddVehicleSpecificationsState(
    vehicleType: VehicleType.initial(),
    vehicleBrand: VehicleBrand.initial(),
    vehicleModel: VehicleModel.initial(),
    vehicleTransmissionType: VehicleTransmissionType.initial(),
    vehicleBodyWork: VehicleBodyWork.initial(),
    year: AddVehicleYear.initial(),
    vehicleFuelType: VehicleFuelType.initial(),
    mileage: Mileage.initial(),
    mileageMeasurmentUnit: MileageMeasurmentUnit.initial(),
    color: VehicleColor.initial(),
    vehicleInterior: VehicleInterior.initial(),
    engineSize: EngineSize.initial(),
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}