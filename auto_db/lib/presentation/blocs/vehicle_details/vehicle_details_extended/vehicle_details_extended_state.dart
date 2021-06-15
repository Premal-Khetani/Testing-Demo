part of 'vehicle_details_extended_bloc.dart';

@freezed
abstract class VehicleDetailsExtendedState with _$VehicleDetailsExtendedState {
  const factory VehicleDetailsExtendedState({
    @required String title,
    @required List<String> images,
    @required PageController galleryController,
    String licensePlate,
    String stockNumber,
    @required String price,
    @required bool isSubmitting
  }) = _VehicleDetailsExtendedState;

  factory VehicleDetailsExtendedState.initial() => VehicleDetailsExtendedState(
    title: '',
    images: List<String>(),
    galleryController : PageController(),
    licensePlate: null,
    stockNumber: null,
    price: '',
    isSubmitting: true,
  ); 
}