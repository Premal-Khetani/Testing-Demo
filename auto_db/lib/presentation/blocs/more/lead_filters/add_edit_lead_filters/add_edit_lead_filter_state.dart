part of 'add_edit_lead_filter_bloc.dart';

@freezed
abstract class AddEditLeadFilterState with _$AddEditLeadFilterState{
  const factory AddEditLeadFilterState({
    @required VehicleType vehicleType,
    @required VehicleBrand vehicleBrand,
    @required VehicleModel vehicleModel,
    @required VehicleFuelType vehicleFuelType,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _AddEditLeadFilterState;

  factory AddEditLeadFilterState.initial() => AddEditLeadFilterState(
    vehicleType: VehicleType.initial(),
    vehicleBrand: VehicleBrand.initial(),
    vehicleModel: VehicleModel.initial(),
    vehicleFuelType: VehicleFuelType.initial(),
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}