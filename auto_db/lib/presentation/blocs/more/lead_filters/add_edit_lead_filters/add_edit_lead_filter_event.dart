part of 'add_edit_lead_filter_bloc.dart';

@freezed
abstract class AddEditLeadFilterEvent with _$AddEditLeadFilterEvent{
  const factory AddEditLeadFilterEvent.close() = Close;
  const factory AddEditLeadFilterEvent.save() = Save;
  const factory AddEditLeadFilterEvent.onRetryTapped() = OnRetryTapped;
  const factory AddEditLeadFilterEvent.vehicleTypeChanged({@required AddVehicleLookup value}) = VehicleTypeChanged;
  const factory AddEditLeadFilterEvent.vehicleBrandChanged({@required AddVehicleLookup value}) = VehicleBrandChanged;
  const factory AddEditLeadFilterEvent.vehicleModelChanged({@required AddVehicleLookup value}) = VehicleModelChanged;
  const factory AddEditLeadFilterEvent.vehicleFuelTypeChanged({@required AddVehicleLookup value}) = VehicleFuelTypeChanged;
}