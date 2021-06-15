part of 'add_vehicle_description_bloc.dart';

@freezed
abstract class AddVehicleDescriptionState with _$AddVehicleDescriptionState {
  const factory AddVehicleDescriptionState({
    @required DescriptionTitle descriptionTitle,
    @required Description description,
    @required bool isSubmitting
  }) = _AddVehicleDescriptionState;

  factory AddVehicleDescriptionState.initial() => AddVehicleDescriptionState(
    descriptionTitle: DescriptionTitle.initial(),
    description: Description.initial(),
    isSubmitting: true
  );
}