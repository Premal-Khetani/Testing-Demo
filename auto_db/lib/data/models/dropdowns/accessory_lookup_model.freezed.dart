// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'accessory_lookup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccessoryLookupModel _$AccessoryLookupModelFromJson(Map<String, dynamic> json) {
  return _AccessoryLookupModel.fromJson(json);
}

/// @nodoc
class _$AccessoryLookupModelTearOff {
  const _$AccessoryLookupModelTearOff();

// ignore: unused_element
  _AccessoryLookupModel call(
      {@required @JsonKey(name: 'id') int id,
      @required @JsonKey(name: 'group') String groupName,
      @required @JsonKey(name: 'accessory') String name,
      @required @JsonKey(name: 'default_state') bool state}) {
    return _AccessoryLookupModel(
      id: id,
      groupName: groupName,
      name: name,
      state: state,
    );
  }

// ignore: unused_element
  AccessoryLookupModel fromJson(Map<String, Object> json) {
    return AccessoryLookupModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AccessoryLookupModel = _$AccessoryLookupModelTearOff();

/// @nodoc
mixin _$AccessoryLookupModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'group')
  String get groupName;
  @JsonKey(name: 'accessory')
  String get name;
  @JsonKey(name: 'default_state')
  bool get state;

  Map<String, dynamic> toJson();
  $AccessoryLookupModelCopyWith<AccessoryLookupModel> get copyWith;
}

/// @nodoc
abstract class $AccessoryLookupModelCopyWith<$Res> {
  factory $AccessoryLookupModelCopyWith(AccessoryLookupModel value,
          $Res Function(AccessoryLookupModel) then) =
      _$AccessoryLookupModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'group') String groupName,
      @JsonKey(name: 'accessory') String name,
      @JsonKey(name: 'default_state') bool state});
}

/// @nodoc
class _$AccessoryLookupModelCopyWithImpl<$Res>
    implements $AccessoryLookupModelCopyWith<$Res> {
  _$AccessoryLookupModelCopyWithImpl(this._value, this._then);

  final AccessoryLookupModel _value;
  // ignore: unused_field
  final $Res Function(AccessoryLookupModel) _then;

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
abstract class _$AccessoryLookupModelCopyWith<$Res>
    implements $AccessoryLookupModelCopyWith<$Res> {
  factory _$AccessoryLookupModelCopyWith(_AccessoryLookupModel value,
          $Res Function(_AccessoryLookupModel) then) =
      __$AccessoryLookupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'group') String groupName,
      @JsonKey(name: 'accessory') String name,
      @JsonKey(name: 'default_state') bool state});
}

/// @nodoc
class __$AccessoryLookupModelCopyWithImpl<$Res>
    extends _$AccessoryLookupModelCopyWithImpl<$Res>
    implements _$AccessoryLookupModelCopyWith<$Res> {
  __$AccessoryLookupModelCopyWithImpl(
      _AccessoryLookupModel _value, $Res Function(_AccessoryLookupModel) _then)
      : super(_value, (v) => _then(v as _AccessoryLookupModel));

  @override
  _AccessoryLookupModel get _value => super._value as _AccessoryLookupModel;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object name = freezed,
    Object state = freezed,
  }) {
    return _then(_AccessoryLookupModel(
      id: id == freezed ? _value.id : id as int,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      name: name == freezed ? _value.name : name as String,
      state: state == freezed ? _value.state : state as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccessoryLookupModel extends _AccessoryLookupModel {
  const _$_AccessoryLookupModel(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'group') this.groupName,
      @required @JsonKey(name: 'accessory') this.name,
      @required @JsonKey(name: 'default_state') this.state})
      : assert(id != null),
        assert(groupName != null),
        assert(name != null),
        assert(state != null),
        super._();

  factory _$_AccessoryLookupModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AccessoryLookupModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'group')
  final String groupName;
  @override
  @JsonKey(name: 'accessory')
  final String name;
  @override
  @JsonKey(name: 'default_state')
  final bool state;

  @override
  String toString() {
    return 'AccessoryLookupModel(id: $id, groupName: $groupName, name: $name, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessoryLookupModel &&
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
  _$AccessoryLookupModelCopyWith<_AccessoryLookupModel> get copyWith =>
      __$AccessoryLookupModelCopyWithImpl<_AccessoryLookupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccessoryLookupModelToJson(this);
  }
}

abstract class _AccessoryLookupModel extends AccessoryLookupModel {
  const _AccessoryLookupModel._() : super._();
  const factory _AccessoryLookupModel(
          {@required @JsonKey(name: 'id') int id,
          @required @JsonKey(name: 'group') String groupName,
          @required @JsonKey(name: 'accessory') String name,
          @required @JsonKey(name: 'default_state') bool state}) =
      _$_AccessoryLookupModel;

  factory _AccessoryLookupModel.fromJson(Map<String, dynamic> json) =
      _$_AccessoryLookupModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'group')
  String get groupName;
  @override
  @JsonKey(name: 'accessory')
  String get name;
  @override
  @JsonKey(name: 'default_state')
  bool get state;
  @override
  _$AccessoryLookupModelCopyWith<_AccessoryLookupModel> get copyWith;
}
