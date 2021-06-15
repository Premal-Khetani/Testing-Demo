import 'package:freezed_annotation/freezed_annotation.dart';

part 'rdw_response.freezed.dart';

@freezed
abstract class RDWResponse with _$RDWResponse {
  const factory RDWResponse({
    String licensePlate,
    int vehicleTypeId,
    int brandId,
    int modelId,
    int transmissionTypeId,
    int bodyworkTypeId,
    int fuelTypeId, 
    int colorId,
    String year,
    String engineSize,
  }) = _RDWResponse;
}