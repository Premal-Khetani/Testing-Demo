import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_initial_post_body_model.freezed.dart';
part 'add_vehicle_initial_post_body_model.g.dart';

@freezed
abstract class AddVehicleInitialPostBodyModel with _$AddVehicleInitialPostBodyModel {
  const AddVehicleInitialPostBodyModel._();

  const factory AddVehicleInitialPostBodyModel({
    @JsonKey(name: 'is_mobile') @required bool isMobile,
  }) = _AddVehicleInitialPostBodyModel;

  factory AddVehicleInitialPostBodyModel.fromDomain(AddVehicleInitialPostBody postBody){
    return AddVehicleInitialPostBodyModel(
      isMobile: postBody.isMobile
    );
  }

  factory AddVehicleInitialPostBodyModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleInitialPostBodyModelFromJson(json);
}