// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_lookup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleLookupModel _$AddVehicleLookupModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehicleLookupModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleLookupModelTearOff {
  const _$AddVehicleLookupModelTearOff();

// ignore: unused_element
  _AddVehicleLookupModel call({@required int id, @required String name}) {
    return _AddVehicleLookupModel(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  AddVehicleLookupModel fromJson(Map<String, Object> json) {
    return AddVehicleLookupModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleLookupModel = _$AddVehicleLookupModelTearOff();

/// @nodoc
mixin _$AddVehicleLookupModel {
  int get id;
  String get name;

  Map<String, dynamic> toJson();
  $AddVehicleLookupModelCopyWith<AddVehicleLookupModel> get copyWith;
}

/// @nodoc
abstract class $AddVehicleLookupModelCopyWith<$Res> {
  factory $AddVehicleLookupModelCopyWith(AddVehicleLookupModel value,
          $Res Function(AddVehicleLookupModel) then) =
      _$AddVehicleLookupModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$AddVehicleLookupModelCopyWithImpl<$Res>
    implements $AddVehicleLookupModelCopyWith<$Res> {
  _$AddVehicleLookupModelCopyWithImpl(this._value, this._then);

  final AddVehicleLookupModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleLookupModel) _then;

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
abstract class _$AddVehicleLookupModelCopyWith<$Res>
    implements $AddVehicleLookupModelCopyWith<$Res> {
  factory _$AddVehicleLookupModelCopyWith(_AddVehicleLookupModel value,
          $Res Function(_AddVehicleLookupModel) then) =
      __$AddVehicleLookupModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$AddVehicleLookupModelCopyWithImpl<$Res>
    extends _$AddVehicleLookupModelCopyWithImpl<$Res>
    implements _$AddVehicleLookupModelCopyWith<$Res> {
  __$AddVehicleLookupModelCopyWithImpl(_AddVehicleLookupModel _value,
      $Res Function(_AddVehicleLookupModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleLookupModel));

  @override
  _AddVehicleLookupModel get _value => super._value as _AddVehicleLookupModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_AddVehicleLookupModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleLookupModel extends _AddVehicleLookupModel {
  const _$_AddVehicleLookupModel({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null),
        super._();

  factory _$_AddVehicleLookupModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddVehicleLookupModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AddVehicleLookupModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleLookupModel &&
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
  _$AddVehicleLookupModelCopyWith<_AddVehicleLookupModel> get copyWith =>
      __$AddVehicleLookupModelCopyWithImpl<_AddVehicleLookupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleLookupModelToJson(this);
  }
}

abstract class _AddVehicleLookupModel extends AddVehicleLookupModel {
  const _AddVehicleLookupModel._() : super._();
  const factory _AddVehicleLookupModel(
      {@required int id, @required String name}) = _$_AddVehicleLookupModel;

  factory _AddVehicleLookupModel.fromJson(Map<String, dynamic> json) =
      _$_AddVehicleLookupModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  _$AddVehicleLookupModelCopyWith<_AddVehicleLookupModel> get copyWith;
}
