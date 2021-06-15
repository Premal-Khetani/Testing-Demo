part of 'add_vehicle_accessories_bloc.dart';

@freezed
abstract class AddVehicleAccessoriesState with _$AddVehicleAccessoriesState {
  const factory AddVehicleAccessoriesState({
    @required List<AccessoryHelperModel> accessories,
    @required Accessory accessoryInput,
    @required List<CustomAccessory> cusstomAccessories,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _AddVehicleAccessoriesState;

  factory AddVehicleAccessoriesState.initial() => AddVehicleAccessoriesState(
    accessories: List<AccessoryHelperModel>(),
    accessoryInput: Accessory.initial(),
    cusstomAccessories: List<CustomAccessory>(),
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}