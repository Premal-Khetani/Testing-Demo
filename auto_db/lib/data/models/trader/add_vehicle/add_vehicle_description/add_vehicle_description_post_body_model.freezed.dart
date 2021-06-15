// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_description_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleDescriptionPostBodyModel _$AddVehicleDescriptionPostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehicleDescriptionPostBodyModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleDescriptionPostBodyModelTearOff {
  const _$AddVehicleDescriptionPostBodyModelTearOff();

// ignore: unused_element
  _AddVehicleDescriptionPostBodyModel call(
      {@required int id,
      @required String title,
      @required String description}) {
    return _AddVehicleDescriptionPostBodyModel(
      id: id,
      title: title,
      description: description,
    );
  }

// ignore: unused_element
  AddVehicleDescriptionPostBodyModel fromJson(Map<String, Object> json) {
    return AddVehicleDescriptionPostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleDescriptionPostBodyModel =
    _$AddVehicleDescriptionPostBodyModelTearOff();

/// @nodoc
mixin _$AddVehicleDescriptionPostBodyModel {
  int get id;
  String get title;
  String get description;

  Map<String, dynamic> toJson();
  $AddVehicleDescriptionPostBodyModelCopyWith<
      AddVehicleDescriptionPostBodyModel> get copyWith;
}

/// @nodoc
abstract class $AddVehicleDescriptionPostBodyModelCopyWith<$Res> {
  factory $AddVehicleDescriptionPostBodyModelCopyWith(
          AddVehicleDescriptionPostBodyModel value,
          $Res Function(AddVehicleDescriptionPostBodyModel) then) =
      _$AddVehicleDescriptionPostBodyModelCopyWithImpl<$Res>;
  $Res call({int id, String title, String description});
}

/// @nodoc
class _$AddVehicleDescriptionPostBodyModelCopyWithImpl<$Res>
    implements $AddVehicleDescriptionPostBodyModelCopyWith<$Res> {
  _$AddVehicleDescriptionPostBodyModelCopyWithImpl(this._value, this._then);

  final AddVehicleDescriptionPostBodyModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleDescriptionPostBodyModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleDescriptionPostBodyModelCopyWith<$Res>
    implements $AddVehicleDescriptionPostBodyModelCopyWith<$Res> {
  factory _$AddVehicleDescriptionPostBodyModelCopyWith(
          _AddVehicleDescriptionPostBodyModel value,
          $Res Function(_AddVehicleDescriptionPostBodyModel) then) =
      __$AddVehicleDescriptionPostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String description});
}

/// @nodoc
class __$AddVehicleDescriptionPostBodyModelCopyWithImpl<$Res>
    extends _$AddVehicleDescriptionPostBodyModelCopyWithImpl<$Res>
    implements _$AddVehicleDescriptionPostBodyModelCopyWith<$Res> {
  __$AddVehicleDescriptionPostBodyModelCopyWithImpl(
      _AddVehicleDescriptionPostBodyModel _value,
      $Res Function(_AddVehicleDescriptionPostBodyModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleDescriptionPostBodyModel));

  @override
  _AddVehicleDescriptionPostBodyModel get _value =>
      super._value as _AddVehicleDescriptionPostBodyModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_AddVehicleDescriptionPostBodyModel(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleDescriptionPostBodyModel
    extends _AddVehicleDescriptionPostBodyModel {
  const _$_AddVehicleDescriptionPostBodyModel(
      {@required this.id, @required this.title, @required this.description})
      : assert(id != null),
        assert(title != null),
        assert(description != null),
        super._();

  factory _$_AddVehicleDescriptionPostBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehicleDescriptionPostBodyModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AddVehicleDescriptionPostBodyModel(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleDescriptionPostBodyModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$AddVehicleDescriptionPostBodyModelCopyWith<
          _AddVehicleDescriptionPostBodyModel>
      get copyWith => __$AddVehicleDescriptionPostBodyModelCopyWithImpl<
          _AddVehicleDescriptionPostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleDescriptionPostBodyModelToJson(this);
  }
}

abstract class _AddVehicleDescriptionPostBodyModel
    extends AddVehicleDescriptionPostBodyModel {
  const _AddVehicleDescriptionPostBodyModel._() : super._();
  const factory _AddVehicleDescriptionPostBodyModel(
      {@required int id,
      @required String title,
      @required String description}) = _$_AddVehicleDescriptionPostBodyModel;

  factory _AddVehicleDescriptionPostBodyModel.fromJson(
          Map<String, dynamic> json) =
      _$_AddVehicleDescriptionPostBodyModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  _$AddVehicleDescriptionPostBodyModelCopyWith<
      _AddVehicleDescriptionPostBodyModel> get copyWith;
}
