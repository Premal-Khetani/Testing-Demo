// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'accessory_lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccessoryLookupTearOff {
  const _$AccessoryLookupTearOff();

// ignore: unused_element
  _AccessoryLookup call(
      {@required int id,
      @required String groupName,
      @required String name,
      @required bool state}) {
    return _AccessoryLookup(
      id: id,
      groupName: groupName,
      name: name,
      state: state,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccessoryLookup = _$AccessoryLookupTearOff();

/// @nodoc
mixin _$AccessoryLookup {
  int get id;
  String get groupName;
  String get name;
  bool get state;

  $AccessoryLookupCopyWith<AccessoryLookup> get copyWith;
}

/// @nodoc
abstract class $AccessoryLookupCopyWith<$Res> {
  factory $AccessoryLookupCopyWith(
          AccessoryLookup value, $Res Function(AccessoryLookup) then) =
      _$AccessoryLookupCopyWithImpl<$Res>;
  $Res call({int id, String groupName, String name, bool state});
}

/// @nodoc
class _$AccessoryLookupCopyWithImpl<$Res>
    implements $AccessoryLookupCopyWith<$Res> {
  _$AccessoryLookupCopyWithImpl(this._value, this._then);

  final AccessoryLookup _value;
  // ignore: unused_field
  final $Res Function(AccessoryLookup) _then;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object name = freezed,
    Object state = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      name: name == freezed ? _value.name : name as String,
      state: state == freezed ? _value.state : state as bool,
    ));
  }
}

/// @nodoc
abstract class _$AccessoryLookupCopyWith<$Res>
    implements $AccessoryLookupCopyWith<$Res> {
  factory _$AccessoryLookupCopyWith(
          _AccessoryLookup value, $Res Function(_AccessoryLookup) then) =
      __$AccessoryLookupCopyWithImpl<$Res>;
  @override
  $Res call({int id, String groupName, String name, bool state});
}

/// @nodoc
class __$AccessoryLookupCopyWithImpl<$Res>
    extends _$AccessoryLookupCopyWithImpl<$Res>
    implements _$AccessoryLookupCopyWith<$Res> {
  __$AccessoryLookupCopyWithImpl(
      _AccessoryLookup _value, $Res Function(_AccessoryLookup) _then)
      : super(_value, (v) => _then(v as _AccessoryLookup));

  @override
  _AccessoryLookup get _value => super._value as _AccessoryLookup;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object name = freezed,
    Object state = freezed,
  }) {
    return _then(_AccessoryLookup(
      id: id == freezed ? _value.id : id as int,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      name: name == freezed ? _value.name : name as String,
      state: state == freezed ? _value.state : state as bool,
    ));
  }
}

/// @nodoc
class _$_AccessoryLookup implements _AccessoryLookup {
  const _$_AccessoryLookup(
      {@required this.id,
      @required this.groupName,
      @required this.name,
      @required this.state})
      : assert(id != null),
        assert(groupName != null),
        assert(name != null),
        assert(state != null);

  @override
  final int id;
  @override
  final String groupName;
  @override
  final String name;
  @override
  final bool state;

  @override
  String toString() {
    return 'AccessoryLookup(id: $id, groupName: $groupName, name: $name, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessoryLookup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state);

  @override
  _$AccessoryLookupCopyWith<_AccessoryLookup> get copyWith =>
      __$AccessoryLookupCopyWithImpl<_AccessoryLookup>(this, _$identity);
}

abstract class _AccessoryLookup implements AccessoryLookup {
  const factory _AccessoryLookup(
      {@required int id,
      @required String groupName,
      @required String name,
      @required bool state}) = _$_AccessoryLookup;

  @override
  int get id;
  @override
  String get groupName;
  @override
  String get name;
  @override
  bool get state;
  @override
  _$AccessoryLookupCopyWith<_AccessoryLookup> get copyWith;
}
