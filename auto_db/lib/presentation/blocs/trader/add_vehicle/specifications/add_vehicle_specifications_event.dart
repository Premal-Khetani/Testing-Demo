part of 'add_vehicle_specifications_bloc.dart';

@freezed
abstract class AddVehicleSpecificationsEvent with _$AddVehicleSpecificationsEvent{
  const factory AddVehicleSpecificationsEvent.close() = Close;
  const factory AddVehicleSpecificationsEvent.save() = Save;
  const factory AddVehicleSpecificationsEvent.onRetryTapped() = OnRetryTapped;
  const factory AddVehicleSpecificationsEvent.vehicleTypeChanged({@required AddVehicleLookup value}) = VehicleTypeChanged;
  const factory AddVehicleSpecificationsEvent.vehicleBrandChanged({@required AddVehicleLookup value}) = VehicleBrandChanged;
  const factory AddVehicleSpecificationsEvent.vehicleModelChanged({@required AddVehicleLookup value}) = VehicleModelChanged;
  const factory AddVehicleSpecificationsEvent.vehicleTransmissionChanged({@required AddVehicleLookup value}) = VehicleTransmissionChanged;
  const factory AddVehicleSpecificationsEvent.vehicleBodyWorkChanged({@required AddVehicleLookup value}) = VehicleBodyWorkChanged;
  const factory AddVehicleSpecificationsEvent.yearChanged({@required String value}) = YearChanged;
  const factory AddVehicleSpecificationsEvent.vehicleFuelTypeChanged({@required AddVehicleLookup value}) = VehicleFuelTypeChanged;
  const factory AddVehicleSpecificationsEvent.mileageChanged({@required String value}) = MileageChanged;
  const factory AddVehicleSpecificationsEvent.mileageMeasurmentUnitChanged({@required String value}) = MileageMeasurmentUnitChanged;
  const factory AddVehicleSpecificationsEvent.colorChaneged({@required AddVehicleLookup value}) = ColorChaneged;
  const factory AddVehicleSpecificationsEvent.vehicleInteriorChanged({@required String value}) = VehicleInteriorChanged;
  const factory AddVehicleSpecificationsEvent.egnineSizeChanged({@required String value}) = EgnineSizeChanged;
}