import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_accessories/add_vehicle_accessories_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_accessories_post_body_model.freezed.dart';
part 'add_vehicle_accessories_post_body_model.g.dart';

@freezed
abstract class AddVehicleAccessoriesPostBodyModel with _$AddVehicleAccessoriesPostBodyModel {
  const AddVehicleAccessoriesPostBodyModel._();

  const factory AddVehicleAccessoriesPostBodyModel({
    @JsonKey(name: 'carId') @required int id, 
    @JsonKey(name: 'options') @required List<int> accessories,
    @JsonKey(name: 'custom') @required List<String> customAccessories
  }) = _AddVehicleAccessoriesPostBodyModel;

  factory AddVehicleAccessoriesPostBodyModel.fromDomain(AddVehicleAccessoriesPostBody postBody){
    return AddVehicleAccessoriesPostBodyModel(
      id: postBody.id,
      accessories: postBody.accessories,
      customAccessories: postBody.customAccessories
    );
  }

  factory AddVehicleAccessoriesPostBodyModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleAccessoriesPostBodyModelFromJson(json);
}