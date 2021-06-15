part of 'vehicle_details_accessories_bloc.dart';

@freezed
abstract class VehicleDetailsAccessoriesState with _$VehicleDetailsAccessoriesState {
  const factory VehicleDetailsAccessoriesState({
    @required List<AccessoryDetailsHelperModel> accessories,
    @required List<String> customAcessories,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _VehicleDetailsAccessoriesState;

  factory VehicleDetailsAccessoriesState.initial() => VehicleDetailsAccessoriesState(
    accessories: List<AccessoryDetailsHelperModel>(),
    customAcessories: List<String>(),
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}