import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_post_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rdw_post_body_model.freezed.dart';
part 'rdw_post_body_model.g.dart';

@freezed
abstract class RDWPostBodyModel with _$RDWPostBodyModel {
  const RDWPostBodyModel._();

  const factory RDWPostBodyModel({
    @JsonKey(name: 'licence_plate') String licensePlate,
  }) = _RDWPostBodyModel;

  factory RDWPostBodyModel.fromDomain(RDWPostRequest postBody){
    return RDWPostBodyModel(
      licensePlate: postBody.licensePlate
    );
  }

  factory RDWPostBodyModel.fromJson(Map<String, dynamic> json) =>_$RDWPostBodyModelFromJson(json);
}