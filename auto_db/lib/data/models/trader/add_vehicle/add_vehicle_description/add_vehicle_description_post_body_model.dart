import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_description/add_vehicle_description_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_description_post_body_model.freezed.dart';
part 'add_vehicle_description_post_body_model.g.dart';

@freezed
abstract class AddVehicleDescriptionPostBodyModel with _$AddVehicleDescriptionPostBodyModel {
  const AddVehicleDescriptionPostBodyModel._();

  const factory AddVehicleDescriptionPostBodyModel({
    @required int id,
    @required String title,
    @required String description
  }) = _AddVehicleDescriptionPostBodyModel;

  factory AddVehicleDescriptionPostBodyModel.fromDomain(AddVehicleDescriptionPostBody postBody){
    return AddVehicleDescriptionPostBodyModel(
      id: postBody.id,
      title: postBody.title,
      description: postBody.description
    );
  }

  factory AddVehicleDescriptionPostBodyModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleDescriptionPostBodyModelFromJson(json);
}