// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_photos_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehiclePhotosResponseModel _$AddVehiclePhotosResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehiclePhotosResponseModel.fromJson(json);
}

/// @nodoc
class _$AddVehiclePhotosResponseModelTearOff {
  const _$AddVehiclePhotosResponseModelTearOff();

// ignore: unused_element
  _AddVehiclePhotosResponseModel call(
      {@required @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'invalid_images') List<String> invalidImages,
      @JsonKey(name: 'invalid_count') bool invalidCount,
      @JsonKey(name: 'newUploadPhotos') List<String> newUploadPhotos,
      @JsonKey(name: 'deletedPhotos') List<String> deletedPhotos,
      @JsonKey(name: 'photos') List<String> photos}) {
    return _AddVehiclePhotosResponseModel(
      success: success,
      invalidImages: invalidImages,
      invalidCount: invalidCount,
      newUploadPhotos: newUploadPhotos,
      deletedPhotos: deletedPhotos,
      photos: photos,
    );
  }

// ignore: unused_element
  AddVehiclePhotosResponseModel fromJson(Map<String, Object> json) {
    return AddVehiclePhotosResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehiclePhotosResponseModel = _$AddVehiclePhotosResponseModelTearOff();

/// @nodoc
mixin _$AddVehiclePhotosResponseModel {
  @JsonKey(name: 'success')
  bool get success;
  @JsonKey(name: 'invalid_images')
  List<String> get invalidImages;
  @JsonKey(name: 'invalid_count')
  bool get invalidCount;
  @JsonKey(name: 'newUploadPhotos')
  List<String> get newUploadPhotos;
  @JsonKey(name: 'deletedPhotos')
  List<String> get deletedPhotos;
  @JsonKey(name: 'photos')
  List<String> get photos;

  Map<String, dynamic> toJson();
  $AddVehiclePhotosResponseModelCopyWith<AddVehiclePhotosResponseModel>
      get copyWith;
}

/// @nodoc
abstract class $AddVehiclePhotosResponseModelCopyWith<$Res> {
  factory $AddVehiclePhotosResponseModelCopyWith(
          AddVehiclePhotosResponseModel value,
          $Res Function(AddVehiclePhotosResponseModel) then) =
      _$AddVehiclePhotosResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'invalid_images') List<String> invalidImages,
      @JsonKey(name: 'invalid_count') bool invalidCount,
      @JsonKey(name: 'newUploadPhotos') List<String> newUploadPhotos,
      @JsonKey(name: 'deletedPhotos') List<String> deletedPhotos,
      @JsonKey(name: 'photos') List<String> photos});
}

/// @nodoc
class _$AddVehiclePhotosResponseModelCopyWithImpl<$Res>
    implements $AddVehiclePhotosResponseModelCopyWith<$Res> {
  _$AddVehiclePhotosResponseModelCopyWithImpl(this._value, this._then);

  final AddVehiclePhotosResponseModel _value;
  // ignore: unused_field
  final $Res Function(AddVehiclePhotosResponseModel) _then;

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
abstract class _$AddVehiclePhotosResponseModelCopyWith<$Res>
    implements $AddVehiclePhotosResponseModelCopyWith<$Res> {
  factory _$AddVehiclePhotosResponseModelCopyWith(
          _AddVehiclePhotosResponseModel value,
          $Res Function(_AddVehiclePhotosResponseModel) then) =
      __$AddVehiclePhotosResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'invalid_images') List<String> invalidImages,
      @JsonKey(name: 'invalid_count') bool invalidCount,
      @JsonKey(name: 'newUploadPhotos') List<String> newUploadPhotos,
      @JsonKey(name: 'deletedPhotos') List<String> deletedPhotos,
      @JsonKey(name: 'photos') List<String> photos});
}

/// @nodoc
class __$AddVehiclePhotosResponseModelCopyWithImpl<$Res>
    extends _$AddVehiclePhotosResponseModelCopyWithImpl<$Res>
    implements _$AddVehiclePhotosResponseModelCopyWith<$Res> {
  __$AddVehiclePhotosResponseModelCopyWithImpl(
      _AddVehiclePhotosResponseModel _value,
      $Res Function(_AddVehiclePhotosResponseModel) _then)
      : super(_value, (v) => _then(v as _AddVehiclePhotosResponseModel));

  @override
  _AddVehiclePhotosResponseModel get _value =>
      super._value as _AddVehiclePhotosResponseModel;

  @override
  $Res call({
    Object success = freezed,
    Object invalidImages = freezed,
    Object invalidCount = freezed,
    Object newUploadPhotos = freezed,
    Object deletedPhotos = freezed,
    Object photos = freezed,
  }) {
    return _then(_AddVehiclePhotosResponseModel(
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

@JsonSerializable()

/// @nodoc
class _$_AddVehiclePhotosResponseModel extends _AddVehiclePhotosResponseModel {
  const _$_AddVehiclePhotosResponseModel(
      {@required @JsonKey(name: 'success') this.success,
      @JsonKey(name: 'invalid_images') this.invalidImages,
      @JsonKey(name: 'invalid_count') this.invalidCount,
      @JsonKey(name: 'newUploadPhotos') this.newUploadPhotos,
      @JsonKey(name: 'deletedPhotos') this.deletedPhotos,
      @JsonKey(name: 'photos') this.photos})
      : assert(success != null),
        super._();

  factory _$_AddVehiclePhotosResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehiclePhotosResponseModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'invalid_images')
  final List<String> invalidImages;
  @override
  @JsonKey(name: 'invalid_count')
  final bool invalidCount;
  @override
  @JsonKey(name: 'newUploadPhotos')
  final List<String> newUploadPhotos;
  @override
  @JsonKey(name: 'deletedPhotos')
  final List<String> deletedPhotos;
  @override
  @JsonKey(name: 'photos')
  final List<String> photos;

  @override
  String toString() {
    return 'AddVehiclePhotosResponseModel(success: $success, invalidImages: $invalidImages, invalidCount: $invalidCount, newUploadPhotos: $newUploadPhotos, deletedPhotos: $deletedPhotos, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehiclePhotosResponseModel &&
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
  _$AddVehiclePhotosResponseModelCopyWith<_AddVehiclePhotosResponseModel>
      get copyWith => __$AddVehiclePhotosResponseModelCopyWithImpl<
          _AddVehiclePhotosResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehiclePhotosResponseModelToJson(this);
  }
}

abstract class _AddVehiclePhotosResponseModel
    extends AddVehiclePhotosResponseModel {
  const _AddVehiclePhotosResponseModel._() : super._();
  const factory _AddVehiclePhotosResponseModel(
          {@required @JsonKey(name: 'success') bool success,
          @JsonKey(name: 'invalid_images') List<String> invalidImages,
          @JsonKey(name: 'invalid_count') bool invalidCount,
          @JsonKey(name: 'newUploadPhotos') List<String> newUploadPhotos,
          @JsonKey(name: 'deletedPhotos') List<String> deletedPhotos,
          @JsonKey(name: 'photos') List<String> photos}) =
      _$_AddVehiclePhotosResponseModel;

  factory _AddVehiclePhotosResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AddVehiclePhotosResponseModel.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'invalid_images')
  List<String> get invalidImages;
  @override
  @JsonKey(name: 'invalid_count')
  bool get invalidCount;
  @override
  @JsonKey(name: 'newUploadPhotos')
  List<String> get newUploadPhotos;
  @override
  @JsonKey(name: 'deletedPhotos')
  List<String> get deletedPhotos;
  @override
  @JsonKey(name: 'photos')
  List<String> get photos;
  @override
  _$AddVehiclePhotosResponseModelCopyWith<_AddVehiclePhotosResponseModel>
      get copyWith;
}
