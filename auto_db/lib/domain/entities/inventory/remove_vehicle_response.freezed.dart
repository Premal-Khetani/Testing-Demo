// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remove_vehicle_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RemoveVehicleResponseTearOff {
  const _$RemoveVehicleResponseTearOff();

// ignore: unused_element
  _RemoveVehicleResponse call({@required bool success}) {
    return _RemoveVehicleResponse(
      success: success,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveVehicleResponse = _$RemoveVehicleResponseTearOff();

/// @nodoc
mixin _$RemoveVehicleResponse {
  bool get success;

  $RemoveVehicleResponseCopyWith<RemoveVehicleResponse> get copyWith;
}

/// @nodoc
abstract class $RemoveVehicleResponseCopyWith<$Res> {
  factory $RemoveVehicleResponseCopyWith(RemoveVehicleResponse value,
          $Res Function(RemoveVehicleResponse) then) =
      _$RemoveVehicleResponseCopyWithImpl<$Res>;
  $Res call({bool success});
}

/// @nodoc
class _$RemoveVehicleResponseCopyWithImpl<$Res>
    implements $RemoveVehicleResponseCopyWith<$Res> {
  _$RemoveVehicleResponseCopyWithImpl(this._value, this._then);

  final RemoveVehicleResponse _value;
  // ignore: unused_field
  final $Res Function(RemoveVehicleResponse) _then;

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
abstract class _$RemoveVehicleResponseCopyWith<$Res>
    implements $RemoveVehicleResponseCopyWith<$Res> {
  factory _$RemoveVehicleResponseCopyWith(_RemoveVehicleResponse value,
          $Res Function(_RemoveVehicleResponse) then) =
      __$RemoveVehicleResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success});
}

/// @nodoc
class __$RemoveVehicleResponseCopyWithImpl<$Res>
    extends _$RemoveVehicleResponseCopyWithImpl<$Res>
    implements _$RemoveVehicleResponseCopyWith<$Res> {
  __$RemoveVehicleResponseCopyWithImpl(_RemoveVehicleResponse _value,
      $Res Function(_RemoveVehicleResponse) _then)
      : super(_value, (v) => _then(v as _RemoveVehicleResponse));

  @override
  _RemoveVehicleResponse get _value => super._value as _RemoveVehicleResponse;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_RemoveVehicleResponse(
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

/// @nodoc
class _$_RemoveVehicleResponse implements _RemoveVehicleResponse {
  const _$_RemoveVehicleResponse({@required this.success})
      : assert(success != null);

  @override
  final bool success;

  @override
  String toString() {
    return 'RemoveVehicleResponse(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveVehicleResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @override
  _$RemoveVehicleResponseCopyWith<_RemoveVehicleResponse> get copyWith =>
      __$RemoveVehicleResponseCopyWithImpl<_RemoveVehicleResponse>(
          this, _$identity);
}

abstract class _RemoveVehicleResponse implements RemoveVehicleResponse {
  const factory _RemoveVehicleResponse({@required bool success}) =
      _$_RemoveVehicleResponse;

  @override
  bool get success;
  @override
  _$RemoveVehicleResponseCopyWith<_RemoveVehicleResponse> get copyWith;
}
