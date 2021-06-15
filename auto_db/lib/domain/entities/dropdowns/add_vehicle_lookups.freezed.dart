// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_lookups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehicleLookupTearOff {
  const _$AddVehicleLookupTearOff();

// ignore: unused_element
  _AddVehicleLookups call({@required int id, @required String name}) {
    return _AddVehicleLookups(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleLookup = _$AddVehicleLookupTearOff();

/// @nodoc
mixin _$AddVehicleLookup {
  int get id;
  String get name;

  $AddVehicleLookupCopyWith<AddVehicleLookup> get copyWith;
}

/// @nodoc
abstract class $AddVehicleLookupCopyWith<$Res> {
  factory $AddVehicleLookupCopyWith(
          AddVehicleLookup value, $Res Function(AddVehicleLookup) then) =
      _$AddVehicleLookupCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$AddVehicleLookupCopyWithImpl<$Res>
    implements $AddVehicleLookupCopyWith<$Res> {
  _$AddVehicleLookupCopyWithImpl(this._value, this._then);

  final AddVehicleLookup _value;
  // ignore: unused_field
  final $Res Function(AddVehicleLookup) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleLookupsCopyWith<$Res>
    implements $AddVehicleLookupCopyWith<$Res> {
  factory _$AddVehicleLookupsCopyWith(
          _AddVehicleLookups value, $Res Function(_AddVehicleLookups) then) =
      __$AddVehicleLookupsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$AddVehicleLookupsCopyWithImpl<$Res>
    extends _$AddVehicleLookupCopyWithImpl<$Res>
    implements _$AddVehicleLookupsCopyWith<$Res> {
  __$AddVehicleLookupsCopyWithImpl(
      _AddVehicleLookups _value, $Res Function(_AddVehicleLookups) _then)
      : super(_value, (v) => _then(v as _AddVehicleLookups));

  @override
  _AddVehicleLookups get _value => super._value as _AddVehicleLookups;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_AddVehicleLookups(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_AddVehicleLookups implements _AddVehicleLookups {
  const _$_AddVehicleLookups({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AddVehicleLookup(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleLookups &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$AddVehicleLookupsCopyWith<_AddVehicleLookups> get copyWith =>
      __$AddVehicleLookupsCopyWithImpl<_AddVehicleLookups>(this, _$identity);
}

abstract class _AddVehicleLookups implements AddVehicleLookup {
  const factory _AddVehicleLookups({@required int id, @required String name}) =
      _$_AddVehicleLookups;

  @override
  int get id;
  @override
  String get name;
  @override
  _$AddVehicleLookupsCopyWith<_AddVehicleLookups> get copyWith;
}
