// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_initial_post_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehicleInitialPostBodyTearOff {
  const _$AddVehicleInitialPostBodyTearOff();

// ignore: unused_element
  _AddVehicleInitialPostBody call({@required bool isMobile}) {
    return _AddVehicleInitialPostBody(
      isMobile: isMobile,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleInitialPostBody = _$AddVehicleInitialPostBodyTearOff();

/// @nodoc
mixin _$AddVehicleInitialPostBody {
  bool get isMobile;

  $AddVehicleInitialPostBodyCopyWith<AddVehicleInitialPostBody> get copyWith;
}

/// @nodoc
abstract class $AddVehicleInitialPostBodyCopyWith<$Res> {
  factory $AddVehicleInitialPostBodyCopyWith(AddVehicleInitialPostBody value,
          $Res Function(AddVehicleInitialPostBody) then) =
      _$AddVehicleInitialPostBodyCopyWithImpl<$Res>;
  $Res call({bool isMobile});
}

/// @nodoc
class _$AddVehicleInitialPostBodyCopyWithImpl<$Res>
    implements $AddVehicleInitialPostBodyCopyWith<$Res> {
  _$AddVehicleInitialPostBodyCopyWithImpl(this._value, this._then);

  final AddVehicleInitialPostBody _value;
  // ignore: unused_field
  final $Res Function(AddVehicleInitialPostBody) _then;

  @override
  $Res call({
    Object isMobile = freezed,
  }) {
    return _then(_value.copyWith(
      isMobile: isMobile == freezed ? _value.isMobile : isMobile as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleInitialPostBodyCopyWith<$Res>
    implements $AddVehicleInitialPostBodyCopyWith<$Res> {
  factory _$AddVehicleInitialPostBodyCopyWith(_AddVehicleInitialPostBody value,
          $Res Function(_AddVehicleInitialPostBody) then) =
      __$AddVehicleInitialPostBodyCopyWithImpl<$Res>;
  @override
  $Res call({bool isMobile});
}

/// @nodoc
class __$AddVehicleInitialPostBodyCopyWithImpl<$Res>
    extends _$AddVehicleInitialPostBodyCopyWithImpl<$Res>
    implements _$AddVehicleInitialPostBodyCopyWith<$Res> {
  __$AddVehicleInitialPostBodyCopyWithImpl(_AddVehicleInitialPostBody _value,
      $Res Function(_AddVehicleInitialPostBody) _then)
      : super(_value, (v) => _then(v as _AddVehicleInitialPostBody));

  @override
  _AddVehicleInitialPostBody get _value =>
      super._value as _AddVehicleInitialPostBody;

  @override
  $Res call({
    Object isMobile = freezed,
  }) {
    return _then(_AddVehicleInitialPostBody(
      isMobile: isMobile == freezed ? _value.isMobile : isMobile as bool,
    ));
  }
}

/// @nodoc
class _$_AddVehicleInitialPostBody implements _AddVehicleInitialPostBody {
  const _$_AddVehicleInitialPostBody({@required this.isMobile})
      : assert(isMobile != null);

  @override
  final bool isMobile;

  @override
  String toString() {
    return 'AddVehicleInitialPostBody(isMobile: $isMobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleInitialPostBody &&
            (identical(other.isMobile, isMobile) ||
                const DeepCollectionEquality()
                    .equals(other.isMobile, isMobile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isMobile);

  @override
  _$AddVehicleInitialPostBodyCopyWith<_AddVehicleInitialPostBody>
      get copyWith =>
          __$AddVehicleInitialPostBodyCopyWithImpl<_AddVehicleInitialPostBody>(
              this, _$identity);
}

abstract class _AddVehicleInitialPostBody implements AddVehicleInitialPostBody {
  const factory _AddVehicleInitialPostBody({@required bool isMobile}) =
      _$_AddVehicleInitialPostBody;

  @override
  bool get isMobile;
  @override
  _$AddVehicleInitialPostBodyCopyWith<_AddVehicleInitialPostBody> get copyWith;
}
