import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_license_plate/add_vehicle_license_plate_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_license_plate_post_body_model.freezed.dart';
part 'add_vehicle_license_plate_post_body_model.g.dart';

@freezed
abstract class AddVehicleLicensePlatePostBodyModel with _$AddVehicleLicensePlatePostBodyModel {
  const AddVehicleLicensePlatePostBodyModel._();

  const factory AddVehicleLicensePlatePostBodyModel({
    @required int id,
    @JsonKey(name: 'licence_plate') String licensePlate,
    @JsonKey(name: 'name') String nameOrStockNumber
  }) = _AddVehicleLicensePlatePostBodyModel;

  factory AddVehicleLicensePlatePostBodyModel.fromDomain(AddVehicleLicensePlatePostBody postBody){
    return AddVehicleLicensePlatePostBodyModel(
      id: postBody.id,
      licensePlate: postBody.licensePlate,
      nameOrStockNumber: postBody.nameOrStockNumber
    );
  }

  factory AddVehicleLicensePlatePostBodyModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleLicensePlatePostBodyModelFromJson(json);
}