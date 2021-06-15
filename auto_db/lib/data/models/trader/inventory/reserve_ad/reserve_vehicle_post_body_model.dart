import 'package:auto_db/domain/entities/inventory/reserve_ad/reserve_vehicle_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reserve_vehicle_post_body_model.freezed.dart';
part 'reserve_vehicle_post_body_model.g.dart';

@freezed
abstract class ReserveVehiclePostBodyModel with _$ReserveVehiclePostBodyModel {
  const ReserveVehiclePostBodyModel._();

  const factory ReserveVehiclePostBodyModel({
    @JsonKey(name: 'reserved') bool reserved,  
  }) = _ReserveVehiclePostBodyModel;

  factory ReserveVehiclePostBodyModel.fromDomain(ReserveVehiclePostBody postBody){
    return ReserveVehiclePostBodyModel(
      reserved: postBody.reserved
    );
  }

  factory ReserveVehiclePostBodyModel.fromJson(Map<String, dynamic> json) =>_$ReserveVehiclePostBodyModelFromJson(json);
}