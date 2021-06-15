import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_lookup_model.freezed.dart';
part 'add_vehicle_lookup_model.g.dart';

@freezed
abstract class AddVehicleLookupModel with _$AddVehicleLookupModel {
  const AddVehicleLookupModel._();

  const factory AddVehicleLookupModel({
    @required int id,
    @required String name
  }) = _AddVehicleLookupModel;

  AddVehicleLookup toDomain(){
    return AddVehicleLookup(
      id: id,
      name: name
    );
  }

  factory AddVehicleLookupModel.fromDomain(AddVehicleLookup addVehicleLookup){
    return AddVehicleLookupModel(
      id: addVehicleLookup.id,
      name: addVehicleLookup.name
    );
  }

  factory AddVehicleLookupModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleLookupModelFromJson(json);
}