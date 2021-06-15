import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_specifications/add_vehicle_specifications_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_specifications_post_body_model.freezed.dart';
part 'add_vehicle_specifications_post_body_model.g.dart';

@freezed
abstract class AddVehicleSpecificationsPostBodyModel with _$AddVehicleSpecificationsPostBodyModel {
  const AddVehicleSpecificationsPostBodyModel._();

  const factory AddVehicleSpecificationsPostBodyModel({
    @required int id,
    @JsonKey(name: 'vehicle') @required int vehicleTypeId,
    @JsonKey(name: 'brand') @required int brandId,
    @JsonKey(name: 'model') @required int modelId,
    @JsonKey(name: 'transmission') @required int transmissionTypeId,
    @JsonKey(name: 'bodywork') @required int bodyworkTypeId,
    @JsonKey(name: 'year') @required int year,
    @JsonKey(name: 'fuel') @required int fuelTypeId,
    @JsonKey(name: 'mileage') @required int mileage,
    @JsonKey(name: 'mileage_options') @required String mileageUnit,
    @JsonKey(name: 'color') int color,
    @JsonKey(name: 'interior') String interior,
    @JsonKey(name: 'engine_size') @required int engineSize
  }) = _AddVehicleSpecificationsPostBodyModel;

  factory AddVehicleSpecificationsPostBodyModel.fromDomain(AddVehicleSpecificationsPostBody postBody){
    return AddVehicleSpecificationsPostBodyModel(
      id: postBody.id,
      vehicleTypeId: postBody.vehicleTypeId,
      brandId: postBody.brandId,
      modelId: postBody.modelId,
      transmissionTypeId: postBody.transmissionTypeId,
      bodyworkTypeId: postBody.bodyworkTypeId,
      year: postBody.year,
      fuelTypeId: postBody.fuelTypeId,
      mileage: postBody.mileage,
      mileageUnit: postBody.mileageUnit,
      color: postBody.color,
      interior: postBody.interior,
      engineSize: postBody.engineSize
    );
  }

  factory AddVehicleSpecificationsPostBodyModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleSpecificationsPostBodyModelFromJson(json);
}