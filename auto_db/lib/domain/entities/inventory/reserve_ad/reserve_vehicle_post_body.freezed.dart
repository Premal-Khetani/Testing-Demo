// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reserve_vehicle_post_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReserveVehiclePostBodyTearOff {
  const _$ReserveVehiclePostBodyTearOff();

// ignore: unused_element
  _ReserveVehiclePostBody call({@required bool reserved}) {
    return _ReserveVehiclePostBody(
      reserved: reserved,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReserveVehiclePostBody = _$ReserveVehiclePostBodyTearOff();

/// @nodoc
mixin _$ReserveVehiclePostBody {
  bool get reserved;

  $ReserveVehiclePostBodyCopyWith<ReserveVehiclePostBody> get copyWith;
}

/// @nodoc
abstract class $ReserveVehiclePostBodyCopyWith<$Res> {
  factory $ReserveVehiclePostBodyCopyWith(ReserveVehiclePostBody value,
          $Res Function(ReserveVehiclePostBody) then) =
      _$ReserveVehiclePostBodyCopyWithImpl<$Res>;
  $Res call({bool reserved});
}

/// @nodoc
class _$ReserveVehiclePostBodyCopyWithImpl<$Res>
    implements $ReserveVehiclePostBodyCopyWith<$Res> {
  _$ReserveVehiclePostBodyCopyWithImpl(this._value, this._then);

  final ReserveVehiclePostBody _value;
  // ignore: unused_field
  final $Res Function(ReserveVehiclePostBody) _then;

  @override
  $Res call({
    Object reserved = freezed,
  }) {
    return _then(_value.copyWith(
      reserved: reserved == freezed ? _value.reserved : reserved as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReserveVehiclePostBodyCopyWith<$Res>
    implements $ReserveVehiclePostBodyCopyWith<$Res> {
  factory _$ReserveVehiclePostBodyCopyWith(_ReserveVehiclePostBody value,
          $Res Function(_ReserveVehiclePostBody) then) =
      __$ReserveVehiclePostBodyCopyWithImpl<$Res>;
  @override
  $Res call({bool reserved});
}

/// @nodoc
class __$ReserveVehiclePostBodyCopyWithImpl<$Res>
    extends _$ReserveVehiclePostBodyCopyWithImpl<$Res>
    implements _$ReserveVehiclePostBodyCopyWith<$Res> {
  __$ReserveVehiclePostBodyCopyWithImpl(_ReserveVehiclePostBody _value,
      $Res Function(_ReserveVehiclePostBody) _then)
      : super(_value, (v) => _then(v as _ReserveVehiclePostBody));

  @override
  _ReserveVehiclePostBody get _value => super._value as _ReserveVehiclePostBody;

  @override
  $Res call({
    Object reserved = freezed,
  }) {
    return _then(_ReserveVehiclePostBody(
      reserved: reserved == freezed ? _value.reserved : reserved as bool,
    ));
  }
}

/// @nodoc
class _$_ReserveVehiclePostBody implements _ReserveVehiclePostBody {
  const _$_ReserveVehiclePostBody({@required this.reserved})
      : assert(reserved != null);

  @override
  final bool reserved;

  @override
  String toString() {
    return 'ReserveVehiclePostBody(reserved: $reserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReserveVehiclePostBody &&
            (identical(other.reserved, reserved) ||
                const DeepCollectionEquality()
                    .equals(other.reserved, reserved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reserved);

  @override
  _$ReserveVehiclePostBodyCopyWith<_ReserveVehiclePostBody> get copyWith =>
      __$ReserveVehiclePostBodyCopyWithImpl<_ReserveVehiclePostBody>(
          this, _$identity);
}

abstract class _ReserveVehiclePostBody implements ReserveVehiclePostBody {
  const factory _ReserveVehiclePostBody({@required bool reserved}) =
      _$_ReserveVehiclePostBody;

  @override
  bool get reserved;
  @override
  _$ReserveVehiclePostBodyCopyWith<_ReserveVehiclePostBody> get copyWith;
}
