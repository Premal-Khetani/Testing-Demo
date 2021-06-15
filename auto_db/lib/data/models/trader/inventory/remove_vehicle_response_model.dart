import 'package:auto_db/domain/entities/inventory/remove_vehicle_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_vehicle_response_model.freezed.dart';
part 'remove_vehicle_response_model.g.dart';

@freezed
abstract class RemoveVehicleResponseModel with _$RemoveVehicleResponseModel {
  const RemoveVehicleResponseModel._();

  const factory RemoveVehicleResponseModel({
    @JsonKey(name: 'success') bool success,  
  }) = _RemoveVehicleResponseModel;

  RemoveVehicleResponse toDomain(){
    return RemoveVehicleResponse(
      success: success
    );
  }

  factory RemoveVehicleResponseModel.fromJson(Map<String, dynamic> json) =>_$RemoveVehicleResponseModelFromJson(json);
}