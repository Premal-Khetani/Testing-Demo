import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rdw_response_model.freezed.dart';
part 'rdw_response_model.g.dart';

@freezed
abstract class RDWResponseModel with _$RDWResponseModel {
  const RDWResponseModel._();

  const factory RDWResponseModel({
    @JsonKey(name: 'kenteken') String licensePlate,
    @JsonKey(name: 'voertuigsoort') int vehicleTypeId,
    @JsonKey(name: 'merk') int brandId,
    @JsonKey(name: 'handelsbenaming') int modelId,
    @JsonKey(name: 'type_versnellingsbak') int transmissionTypeId,
    @JsonKey(name: 'inrichting') int bodyworkTypeId,
    @JsonKey(name: 'brandstof_omschrijving') int fuelTypeId,
    @JsonKey(name: 'datum_eerste_toelating') String year,
    @JsonKey(name: 'color') int color,
    @JsonKey(name: 'cilinderinhoud') String engineSize
  }) = _RDWResponseModel;

  RDWResponse toDomain(){
    return RDWResponse(
      licensePlate: licensePlate,
      vehicleTypeId: vehicleTypeId,
      brandId: brandId,
      modelId: modelId,
      transmissionTypeId: transmissionTypeId,
      bodyworkTypeId: bodyworkTypeId,
      fuelTypeId: fuelTypeId,
      year: year,
      colorId: color,
      engineSize: engineSize
    );
  }

  factory RDWResponseModel.fromJson(Map<String, dynamic> json) =>_$RDWResponseModelFromJson(json);
}