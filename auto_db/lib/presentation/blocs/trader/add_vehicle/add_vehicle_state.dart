part of 'add_vehicle_bloc.dart';

@freezed
abstract class AddVehicleState with _$AddVehicleState {
  const factory AddVehicleState({
    @required bool isSubmitting,
    @required bool isLicensePlateSaved,
    @required bool isLicensePlateAdded,
    @required bool isSpecificationsSaved,
    @required bool isDescriptionSaved,
    @required String photosDetails,
    @required bool isPhotoSaved,
    @required bool isAcessoriesSaved,
    @required bool isPriceSaved,
  }) = _AddVehicleState;

  factory AddVehicleState.initial() => AddVehicleState(
    isSubmitting: true,
    isLicensePlateSaved: false,
    isLicensePlateAdded: true,
    isSpecificationsSaved: false,
    isDescriptionSaved: false,
    photosDetails: '',
    isPhotoSaved: false,
    isAcessoriesSaved: false,
    isPriceSaved: false,
  );
}