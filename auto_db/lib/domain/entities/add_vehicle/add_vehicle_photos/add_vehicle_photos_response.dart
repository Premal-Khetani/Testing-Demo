import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_photos_response.freezed.dart';

@freezed
abstract class AddVehiclePhotosResponse with _$AddVehiclePhotosResponse {
  const factory AddVehiclePhotosResponse({
    @required bool success,
    List<String> invalidImages,
    bool invalidCount,
    List<String> newUploadPhotos,
    List<String> deletedPhotos,
    List<String> photos,
  }) = _AddVehiclePhotosResponse;
}
