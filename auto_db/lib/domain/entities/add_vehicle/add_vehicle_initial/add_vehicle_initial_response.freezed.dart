// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_initial_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehicleInitialResponseTearOff {
  const _$AddVehicleInitialResponseTearOff();

// ignore: unused_element
  _AddVehicleInitialResponse call({@required int id}) {
    return _AddVehicleInitialResponse(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleInitialResponse = _$AddVehicleInitialResponseTearOff();

/// @nodoc
mixin _$AddVehicleInitialResponse {
  int get id;

  $AddVehicleInitialResponseCopyWith<AddVehicleInitialResponse> get copyWith;
}

/// @nodoc
abstract class $AddVehicleInitialResponseCopyWith<$Res> {
  factory $AddVehicleInitialResponseCopyWith(AddVehicleInitialResponse value,
          $Res Function(AddVehicleInitialResponse) then) =
      _$AddVehicleInitialResponseCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$AddVehicleInitialResponseCopyWithImpl<$Res>
    implements $AddVehicleInitialResponseCopyWith<$Res> {
  _$AddVehicleInitialResponseCopyWithImpl(this._value, this._then);

  final AddVehicleInitialResponse _value;
  // ignore: unused_field
  final $Res Function(AddVehicleInitialResponse) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleInitialResponseCopyWith<$Res>
    implements $AddVehicleInitialResponseCopyWith<$Res> {
  factory _$AddVehicleInitialResponseCopyWith(_AddVehicleInitialResponse value,
          $Res Function(_AddVehicleInitialResponse) then) =
      __$AddVehicleInitialResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$AddVehicleInitialResponseCopyWithImpl<$Res>
    extends _$AddVehicleInitialResponseCopyWithImpl<$Res>
    implements _$AddVehicleInitialResponseCopyWith<$Res> {
  __$AddVehicleInitialResponseCopyWithImpl(_AddVehicleInitialResponse _value,
      $Res Function(_AddVehicleInitialResponse) _then)
      : super(_value, (v) => _then(v as _AddVehicleInitialResponse));

  @override
  _AddVehicleInitialResponse get _value =>
      super._value as _AddVehicleInitialResponse;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_AddVehicleInitialResponse(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$_AddVehicleInitialResponse implements _AddVehicleInitialResponse {
  const _$_AddVehicleInitialResponse({@required this.id}) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'AddVehicleInitialResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleInitialResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$AddVehicleInitialResponseCopyWith<_AddVehicleInitialResponse>
      get copyWith =>
          __$AddVehicleInitialResponseCopyWithImpl<_AddVehicleInitialResponse>(
              this, _$identity);
}

abstract class _AddVehicleInitialResponse implements AddVehicleInitialResponse {
  const factory _AddVehicleInitialResponse({@required int id}) =
      _$_AddVehicleInitialResponse;

  @override
  int get id;
  @override
  _$AddVehicleInitialResponseCopyWith<_AddVehicleInitialResponse> get copyWith;
}
