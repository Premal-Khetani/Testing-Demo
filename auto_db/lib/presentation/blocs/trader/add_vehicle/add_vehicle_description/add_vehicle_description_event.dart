part of 'add_vehicle_description_bloc.dart';

@freezed
abstract class AddVehicleDescriptionEvent with _$AddVehicleDescriptionEvent {
  const factory AddVehicleDescriptionEvent.close() = Close; 
  const factory AddVehicleDescriptionEvent.save() = Save;
  const factory AddVehicleDescriptionEvent.titleChanged({@required String value}) = TitleChanged;
  const factory AddVehicleDescriptionEvent.descriptionChanged({@required String value}) = DescriptionChanged;
}