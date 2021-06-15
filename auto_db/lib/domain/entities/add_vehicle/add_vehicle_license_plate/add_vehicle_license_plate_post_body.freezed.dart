// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_license_plate_post_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehicleLicensePlatePostBodyTearOff {
  const _$AddVehicleLicensePlatePostBodyTearOff();

// ignore: unused_element
  _AddVehicleLicensePlatePostBody call(
      {@required int id, String licensePlate, String nameOrStockNumber}) {
    return _AddVehicleLicensePlatePostBody(
      id: id,
      licensePlate: licensePlate,
      nameOrStockNumber: nameOrStockNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleLicensePlatePostBody =
    _$AddVehicleLicensePlatePostBodyTearOff();

/// @nodoc
mixin _$AddVehicleLicensePlatePostBody {
  int get id;
  String get licensePlate;
  String get nameOrStockNumber;

  $AddVehicleLicensePlatePostBodyCopyWith<AddVehicleLicensePlatePostBody>
      get copyWith;
}

/// @nodoc
abstract class $AddVehicleLicensePlatePostBodyCopyWith<$Res> {
  factory $AddVehicleLicensePlatePostBodyCopyWith(
          AddVehicleLicensePlatePostBody value,
          $Res Function(AddVehicleLicensePlatePostBody) then) =
      _$AddVehicleLicensePlatePostBodyCopyWithImpl<$Res>;
  $Res call({int id, String licensePlate, String nameOrStockNumber});
}

/// @nodoc
class _$AddVehicleLicensePlatePostBodyCopyWithImpl<$Res>
    implements $AddVehicleLicensePlatePostBodyCopyWith<$Res> {
  _$AddVehicleLicensePlatePostBodyCopyWithImpl(this._value, this._then);

  final AddVehicleLicensePlatePostBody _value;
  // ignore: unused_field
  final $Res Function(AddVehicleLicensePlatePostBody) _then;

  @override
  $Res call({
    Object id = freezed,
    Object licensePlate = freezed,
    Object nameOrStockNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      nameOrStockNumber: nameOrStockNumber == freezed
          ? _value.nameOrStockNumber
          : nameOrStockNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleLicensePlatePostBodyCopyWith<$Res>
    implements $AddVehicleLicensePlatePostBodyCopyWith<$Res> {
  factory _$AddVehicleLicensePlatePostBodyCopyWith(
          _AddVehicleLicensePlatePostBody value,
          $Res Function(_AddVehicleLicensePlatePostBody) then) =
      __$AddVehicleLicensePlatePostBodyCopyWithImpl<$Res>;
  @override
  $Res call({int id, String licensePlate, String nameOrStockNumber});
}

/// @nodoc
class __$AddVehicleLicensePlatePostBodyCopyWithImpl<$Res>
    extends _$AddVehicleLicensePlatePostBodyCopyWithImpl<$Res>
    implements _$AddVehicleLicensePlatePostBodyCopyWith<$Res> {
  __$AddVehicleLicensePlatePostBodyCopyWithImpl(
      _AddVehicleLicensePlatePostBody _value,
      $Res Function(_AddVehicleLicensePlatePostBody) _then)
      : super(_value, (v) => _then(v as _AddVehicleLicensePlatePostBody));

  @override
  _AddVehicleLicensePlatePostBody get _value =>
      super._value as _AddVehicleLicensePlatePostBody;

  @override
  $Res call({
    Object id = freezed,
    Object licensePlate = freezed,
    Object nameOrStockNumber = freezed,
  }) {
    return _then(_AddVehicleLicensePlatePostBody(
      id: id == freezed ? _value.id : id as int,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      nameOrStockNumber: nameOrStockNumber == freezed
          ? _value.nameOrStockNumber
          : nameOrStockNumber as String,
    ));
  }
}

/// @nodoc
class _$_AddVehicleLicensePlatePostBody
    implements _AddVehicleLicensePlatePostBody {
  const _$_AddVehicleLicensePlatePostBody(
      {@required this.id, this.licensePlate, this.nameOrStockNumber})
      : assert(id != null);

  @override
  final int id;
  @override
  final String licensePlate;
  @override
  final String nameOrStockNumber;

  @override
  String toString() {
    return 'AddVehicleLicensePlatePostBody(id: $id, licensePlate: $licensePlate, nameOrStockNumber: $nameOrStockNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleLicensePlatePostBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
            (identical(other.nameOrStockNumber, nameOrStockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.nameOrStockNumber, nameOrStockNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(nameOrStockNumber);

  @override
  _$AddVehicleLicensePlatePostBodyCopyWith<_AddVehicleLicensePlatePostBody>
      get copyWith => __$AddVehicleLicensePlatePostBodyCopyWithImpl<
          _AddVehicleLicensePlatePostBody>(this, _$identity);
}

abstract class _AddVehicleLicensePlatePostBody
    implements AddVehicleLicensePlatePostBody {
  const factory _AddVehicleLicensePlatePostBody(
      {@required int id,
      String licensePlate,
      String nameOrStockNumber}) = _$_AddVehicleLicensePlatePostBody;

  @override
  int get id;
  @override
  String get licensePlate;
  @override
  String get nameOrStockNumber;
  @override
  _$AddVehicleLicensePlatePostBodyCopyWith<_AddVehicleLicensePlatePostBody>
      get copyWith;
}
