// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_photos_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehiclePhotosResponseTearOff {
  const _$AddVehiclePhotosResponseTearOff();

// ignore: unused_element
  _AddVehiclePhotosResponse call(
      {@required bool success,
      List<String> invalidImages,
      bool invalidCount,
      List<String> newUploadPhotos,
      List<String> deletedPhotos,
      List<String> photos}) {
    return _AddVehiclePhotosResponse(
      success: success,
      invalidImages: invalidImages,
      invalidCount: invalidCount,
      newUploadPhotos: newUploadPhotos,
      deletedPhotos: deletedPhotos,
      photos: photos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehiclePhotosResponse = _$AddVehiclePhotosResponseTearOff();

/// @nodoc
mixin _$AddVehiclePhotosResponse {
  bool get success;
  List<String> get invalidImages;
  bool get invalidCount;
  List<String> get newUploadPhotos;
  List<String> get deletedPhotos;
  List<String> get photos;

  $AddVehiclePhotosResponseCopyWith<AddVehiclePhotosResponse> get copyWith;
}

/// @nodoc
abstract class $AddVehiclePhotosResponseCopyWith<$Res> {
  factory $AddVehiclePhotosResponseCopyWith(AddVehiclePhotosResponse value,
          $Res Function(AddVehiclePhotosResponse) then) =
      _$AddVehiclePhotosResponseCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      List<String> invalidImages,
      bool invalidCount,
      List<String> newUploadPhotos,
      List<String> deletedPhotos,
      List<String> photos});
}

/// @nodoc
class _$AddVehiclePhotosResponseCopyWithImpl<$Res>
    implements $AddVehiclePhotosResponseCopyWith<$Res> {
  _$AddVehiclePhotosResponseCopyWithImpl(this._value, this._then);

  final AddVehiclePhotosResponse _value;
  // ignore: unused_field
  final $Res Function(AddVehiclePhotosResponse) _then;

  @override
  $Res call({
    Object success = freezed,
    Object invalidImages = freezed,
    Object invalidCount = freezed,
    Object newUploadPhotos = freezed,
    Object deletedPhotos = freezed,
    Object photos = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      invalidImages: invalidImages == freezed
          ? _value.invalidImages
          : invalidImages as List<String>,
      invalidCount:
          invalidCount == freezed ? _value.invalidCount : invalidCount as bool,
      newUploadPhotos: newUploadPhotos == freezed
          ? _value.newUploadPhotos
          : newUploadPhotos as List<String>,
      deletedPhotos: deletedPhotos == freezed
          ? _value.deletedPhotos
          : deletedPhotos as List<String>,
      photos: photos == freezed ? _value.photos : photos as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AddVehiclePhotosResponseCopyWith<$Res>
    implements $AddVehiclePhotosResponseCopyWith<$Res> {
  factory _$AddVehiclePhotosResponseCopyWith(_AddVehiclePhotosResponse value,
          $Res Function(_AddVehiclePhotosResponse) then) =
      __$AddVehiclePhotosResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      List<String> invalidImages,
      bool invalidCount,
      List<String> newUploadPhotos,
      List<String> deletedPhotos,
      List<String> photos});
}

/// @nodoc
class __$AddVehiclePhotosResponseCopyWithImpl<$Res>
    extends _$AddVehiclePhotosResponseCopyWithImpl<$Res>
    implements _$AddVehiclePhotosResponseCopyWith<$Res> {
  __$AddVehiclePhotosResponseCopyWithImpl(_AddVehiclePhotosResponse _value,
      $Res Function(_AddVehiclePhotosResponse) _then)
      : super(_value, (v) => _then(v as _AddVehiclePhotosResponse));

  @override
  _AddVehiclePhotosResponse get _value =>
      super._value as _AddVehiclePhotosResponse;

  @override
  $Res call({
    Object success = freezed,
    Object invalidImages = freezed,
    Object invalidCount = freezed,
    Object newUploadPhotos = freezed,
    Object deletedPhotos = freezed,
    Object photos = freezed,
  }) {
    return _then(_AddVehiclePhotosResponse(
      success: success == freezed ? _value.success : success as bool,
      invalidImages: invalidImages == freezed
          ? _value.invalidImages
          : invalidImages as List<String>,
      invalidCount:
          invalidCount == freezed ? _value.invalidCount : invalidCount as bool,
      newUploadPhotos: newUploadPhotos == freezed
          ? _value.newUploadPhotos
          : newUploadPhotos as List<String>,
      deletedPhotos: deletedPhotos == freezed
          ? _value.deletedPhotos
          : deletedPhotos as List<String>,
      photos: photos == freezed ? _value.photos : photos as List<String>,
    ));
  }
}

/// @nodoc
class _$_AddVehiclePhotosResponse implements _AddVehiclePhotosResponse {
  const _$_AddVehiclePhotosResponse(
      {@required this.success,
      this.invalidImages,
      this.invalidCount,
      this.newUploadPhotos,
      this.deletedPhotos,
      this.photos})
      : assert(success != null);

  @override
  final bool success;
  @override
  final List<String> invalidImages;
  @override
  final bool invalidCount;
  @override
  final List<String> newUploadPhotos;
  @override
  final List<String> deletedPhotos;
  @override
  final List<String> photos;

  @override
  String toString() {
    return 'AddVehiclePhotosResponse(success: $success, invalidImages: $invalidImages, invalidCount: $invalidCount, newUploadPhotos: $newUploadPhotos, deletedPhotos: $deletedPhotos, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehiclePhotosResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.invalidImages, invalidImages) ||
                const DeepCollectionEquality()
                    .equals(other.invalidImages, invalidImages)) &&
            (identical(other.invalidCount, invalidCount) ||
                const DeepCollectionEquality()
                    .equals(other.invalidCount, invalidCount)) &&
            (identical(other.newUploadPhotos, newUploadPhotos) ||
                const DeepCollectionEquality()
                    .equals(other.newUploadPhotos, newUploadPhotos)) &&
            (identical(other.deletedPhotos, deletedPhotos) ||
                const DeepCollectionEquality()
                    .equals(other.deletedPhotos, deletedPhotos)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(invalidImages) ^
      const DeepCollectionEquality().hash(invalidCount) ^
      const DeepCollectionEquality().hash(newUploadPhotos) ^
      const DeepCollectionEquality().hash(deletedPhotos) ^
      const DeepCollectionEquality().hash(photos);

  @override
  _$AddVehiclePhotosResponseCopyWith<_AddVehiclePhotosResponse> get copyWith =>
      __$AddVehiclePhotosResponseCopyWithImpl<_AddVehiclePhotosResponse>(
          this, _$identity);
}

abstract class _AddVehiclePhotosResponse implements AddVehiclePhotosResponse {
  const factory _AddVehiclePhotosResponse(
      {@required bool success,
      List<String> invalidImages,
      bool invalidCount,
      List<String> newUploadPhotos,
      List<String> deletedPhotos,
      List<String> photos}) = _$_AddVehiclePhotosResponse;

  @override
  bool get success;
  @override
  List<String> get invalidImages;
  @override
  bool get invalidCount;
  @override
  List<String> get newUploadPhotos;
  @override
  List<String> get deletedPhotos;
  @override
  List<String> get photos;
  @override
  _$AddVehiclePhotosResponseCopyWith<_AddVehiclePhotosResponse> get copyWith;
}
