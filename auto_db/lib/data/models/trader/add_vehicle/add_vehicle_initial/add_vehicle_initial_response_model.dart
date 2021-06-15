import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_response.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_initial_response_model.freezed.dart';
part 'add_vehicle_initial_response_model.g.dart';

@freezed
abstract class AddVehicleInitialResponseModel with _$AddVehicleInitialResponseModel {
  const AddVehicleInitialResponseModel._();

  const factory AddVehicleInitialResponseModel({
    @required int id,
  }) = _AddVehicleInitialResponseModel;

  AddVehicleInitialResponse toDomain(){
    return AddVehicleInitialResponse(
      id: id
    );
  }

  factory AddVehicleInitialResponseModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleInitialResponseModelFromJson(json);
}