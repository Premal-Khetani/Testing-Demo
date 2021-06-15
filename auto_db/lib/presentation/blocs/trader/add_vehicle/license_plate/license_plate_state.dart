part of 'license_plate_bloc.dart';

@freezed
abstract class LicensePlateState with _$LicensePlateState {
  const factory LicensePlateState({
    @required LicensePlate licensePlate,
    @required NameOrStockNumber nameOrStockNumber,
    @required bool isSubmitting
  }) = _LicensePlateState;

  factory LicensePlateState.initial() => LicensePlateState(
    licensePlate: LicensePlate.initial(),
    nameOrStockNumber: NameOrStockNumber.initial(),
    isSubmitting: true
  );
}