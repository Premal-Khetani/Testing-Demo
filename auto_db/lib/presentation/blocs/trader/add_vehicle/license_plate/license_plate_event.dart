part of 'license_plate_bloc.dart';

@freezed
abstract class LicensePlateEvent with _$LicensePlateEvent {
  const factory LicensePlateEvent.onUseLicensePlateTapped() = OnUseLicensePlateTapped;
  const factory LicensePlateEvent.onSaveTapped() = OnSaveTapped;
  const factory LicensePlateEvent.licensePlateChanged({@required String value}) = LicensePlateChanged;
  const factory LicensePlateEvent.nameOrStockNumberChanged({@required String value}) = NameOrStockNumberChanged;
  const factory LicensePlateEvent.close() = Close; 
}