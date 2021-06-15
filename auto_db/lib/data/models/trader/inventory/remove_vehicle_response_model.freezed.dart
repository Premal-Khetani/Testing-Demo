// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remove_vehicle_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RemoveVehicleResponseModel _$RemoveVehicleResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RemoveVehicleResponseModel.fromJson(json);
}

/// @nodoc
class _$RemoveVehicleResponseModelTearOff {
  const _$RemoveVehicleResponseModelTearOff();

// ignore: unused_element
  _RemoveVehicleResponseModel call({@JsonKey(name: 'success') bool success}) {
    return _RemoveVehicleResponseModel(
      success: success,
    );
  }

// ignore: unused_element
  RemoveVehicleResponseModel fromJson(Map<String, Object> json) {
    return RemoveVehicleResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveVehicleResponseModel = _$RemoveVehicleResponseModelTearOff();

/// @nodoc
mixin _$RemoveVehicleResponseModel {
  @JsonKey(name: 'success')
  bool get success;

  Map<String, dynamic> toJson();
  $RemoveVehicleResponseModelCopyWith<RemoveVehicleResponseModel> get copyWith;
}

/// @nodoc
abstract class $RemoveVehicleResponseModelCopyWith<$Res> {
  factory $RemoveVehicleResponseModelCopyWith(RemoveVehicleResponseModel value,
          $Res Function(RemoveVehicleResponseModel) then) =
      _$RemoveVehicleResponseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'success') bool success});
}

/// @nodoc
class _$RemoveVehicleResponseModelCopyWithImpl<$Res>
    implements $RemoveVehicleResponseModelCopyWith<$Res> {
  _$RemoveVehicleResponseModelCopyWithImpl(this._value, this._then);

  final RemoveVehicleResponseModel _value;
  // ignore: unused_field
  final $Res Function(RemoveVehicleResponseModel) _then;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

/// @nodoc
abstract class _$RemoveVehicleResponseModelCopyWith<$Res>
    implements $RemoveVehicleResponseModelCopyWith<$Res> {
  factory _$RemoveVehicleResponseModelCopyWith(
          _RemoveVehicleResponseModel value,
          $Res Function(_RemoveVehicleResponseModel) then) =
      __$RemoveVehicleResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'success') bool success});
}

/// @nodoc
class __$RemoveVehicleResponseModelCopyWithImpl<$Res>
    extends _$RemoveVehicleResponseModelCopyWithImpl<$Res>
    implements _$RemoveVehicleResponseModelCopyWith<$Res> {
  __$RemoveVehicleResponseModelCopyWithImpl(_RemoveVehicleResponseModel _value,
      $Res Function(_RemoveVehicleResponseModel) _then)
      : super(_value, (v) => _then(v as _RemoveVehicleResponseModel));

  @override
  _RemoveVehicleResponseModel get _value =>
      super._value as _RemoveVehicleResponseModel;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_RemoveVehicleResponseModel(
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoveVehicleResponseModel extends _RemoveVehicleResponseModel {
  const _$_RemoveVehicleResponseModel({@JsonKey(name: 'success') this.success})
      : super._();

  factory _$_RemoveVehicleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoveVehicleResponseModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;

  @override
  String toString() {
    return 'RemoveVehicleResponseModel(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveVehicleResponseModel &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @override
  _$RemoveVehicleResponseModelCopyWith<_RemoveVehicleResponseModel>
      get copyWith => __$RemoveVehicleResponseModelCopyWithImpl<
          _RemoveVehicleResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoveVehicleResponseModelToJson(this);
  }
}

abstract class _RemoveVehicleResponseModel extends RemoveVehicleResponseModel {
  const _RemoveVehicleResponseModel._() : super._();
  const factory _RemoveVehicleResponseModel(
      {@JsonKey(name: 'success') bool success}) = _$_RemoveVehicleResponseModel;

  factory _RemoveVehicleResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RemoveVehicleResponseModel.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  _$RemoveVehicleResponseModelCopyWith<_RemoveVehicleResponseModel>
      get copyWith;
}
