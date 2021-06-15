import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_photos/add_vehicle_photos_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_photos_response_model.freezed.dart';
part 'add_vehicle_photos_response_model.g.dart';

@freezed
abstract class AddVehiclePhotosResponseModel
    with _$AddVehiclePhotosResponseModel {
  const AddVehiclePhotosResponseModel._();

  const factory AddVehiclePhotosResponseModel({
    @JsonKey(name: 'success') @required bool success,
    @JsonKey(name: 'invalid_images') List<String> invalidImages,
    @JsonKey(name: 'invalid_count') bool invalidCount,
    @JsonKey(name: 'newUploadPhotos') List<String> newUploadPhotos,
    @JsonKey(name: 'deletedPhotos') List<String> deletedPhotos,
    @JsonKey(name: 'photos') List<String> photos,
  }) = _AddVehiclePhotosResponseModel;

  AddVehiclePhotosResponse toDomain() {
    return AddVehiclePhotosResponse(
      success: success,
      invalidImages: invalidImages,
      invalidCount: invalidCount,
      newUploadPhotos: newUploadPhotos,
      deletedPhotos: deletedPhotos,
      photos: photos,
    );
  }

  factory AddVehiclePhotosResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddVehiclePhotosResponseModelFromJson(json);
}
