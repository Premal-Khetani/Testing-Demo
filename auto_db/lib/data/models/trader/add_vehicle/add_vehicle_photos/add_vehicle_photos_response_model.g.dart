// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_photos_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddVehiclePhotosResponseModel _$_$_AddVehiclePhotosResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_AddVehiclePhotosResponseModel(
    success: json['success'] as bool,
    invalidImages:
        (json['invalid_images'] as List)?.map((e) => e as String)?.toList(),
    invalidCount: json['invalid_count'] as bool,
    newUploadPhotos:
        (json['newUploadPhotos'] as List)?.map((e) => e as String)?.toList(),
    deletedPhotos:
        (json['deletedPhotos'] as List)?.map((e) => e as String)?.toList(),
    photos: (json['photos'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_AddVehiclePhotosResponseModelToJson(
        _$_AddVehiclePhotosResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'invalid_images': instance.invalidImages,
      'invalid_count': instance.invalidCount,
      'newUploadPhotos': instance.newUploadPhotos,
      'deletedPhotos': instance.deletedPhotos,
      'photos': instance.photos,
    };
