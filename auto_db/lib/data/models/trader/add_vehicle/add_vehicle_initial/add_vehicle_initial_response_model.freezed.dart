// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_initial_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleInitialResponseModel _$AddVehicleInitialResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehicleInitialResponseModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleInitialResponseModelTearOff {
  const _$AddVehicleInitialResponseModelTearOff();

// ignore: unused_element
  _AddVehicleInitialResponseModel call({@required int id}) {
    return _AddVehicleInitialResponseModel(
      id: id,
    );
  }

// ignore: unused_element
  AddVehicleInitialResponseModel fromJson(Map<String, Object> json) {
    return AddVehicleInitialResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleInitialResponseModel =
    _$AddVehicleInitialResponseModelTearOff();

/// @nodoc
mixin _$AddVehicleInitialResponseModel {
  int get id;

  Map<String, dynamic> toJson();
  $AddVehicleInitialResponseModelCopyWith<AddVehicleInitialResponseModel>
      get copyWith;
}

/// @nodoc
abstract class $AddVehicleInitialResponseModelCopyWith<$Res> {
  factory $AddVehicleInitialResponseModelCopyWith(
          AddVehicleInitialResponseModel value,
          $Res Function(AddVehicleInitialResponseModel) then) =
      _$AddVehicleInitialResponseModelCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$AddVehicleInitialResponseModelCopyWithImpl<$Res>
    implements $AddVehicleInitialResponseModelCopyWith<$Res> {
  _$AddVehicleInitialResponseModelCopyWithImpl(this._value, this._then);

  final AddVehicleInitialResponseModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleInitialResponseModel) _then;

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
abstract class _$AddVehicleInitialResponseModelCopyWith<$Res>
    implements $AddVehicleInitialResponseModelCopyWith<$Res> {
  factory _$AddVehicleInitialResponseModelCopyWith(
          _AddVehicleInitialResponseModel value,
          $Res Function(_AddVehicleInitialResponseModel) then) =
      __$AddVehicleInitialResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$AddVehicleInitialResponseModelCopyWithImpl<$Res>
    extends _$AddVehicleInitialResponseModelCopyWithImpl<$Res>
    implements _$AddVehicleInitialResponseModelCopyWith<$Res> {
  __$AddVehicleInitialResponseModelCopyWithImpl(
      _AddVehicleInitialResponseModel _value,
      $Res Function(_AddVehicleInitialResponseModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleInitialResponseModel));

  @override
  _AddVehicleInitialResponseModel get _value =>
      super._value as _AddVehicleInitialResponseModel;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_AddVehicleInitialResponseModel(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleInitialResponseModel extends _AddVehicleInitialResponseModel
    with DiagnosticableTreeMixin {
  const _$_AddVehicleInitialResponseModel({@required this.id})
      : assert(id != null),
        super._();

  factory _$_AddVehicleInitialResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehicleInitialResponseModelFromJson(json);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddVehicleInitialResponseModel(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddVehicleInitialResponseModel'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleInitialResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$AddVehicleInitialResponseModelCopyWith<_AddVehicleInitialResponseModel>
      get copyWith => __$AddVehicleInitialResponseModelCopyWithImpl<
          _AddVehicleInitialResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleInitialResponseModelToJson(this);
  }
}

abstract class _AddVehicleInitialResponseModel
    extends AddVehicleInitialResponseModel {
  const _AddVehicleInitialResponseModel._() : super._();
  const factory _AddVehicleInitialResponseModel({@required int id}) =
      _$_AddVehicleInitialResponseModel;

  factory _AddVehicleInitialResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AddVehicleInitialResponseModel.fromJson;

  @override
  int get id;
  @override
  _$AddVehicleInitialResponseModelCopyWith<_AddVehicleInitialResponseModel>
      get copyWith;
}
