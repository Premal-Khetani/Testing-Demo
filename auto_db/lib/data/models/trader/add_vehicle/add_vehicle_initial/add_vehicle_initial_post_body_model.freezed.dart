// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_initial_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleInitialPostBodyModel _$AddVehicleInitialPostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehicleInitialPostBodyModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleInitialPostBodyModelTearOff {
  const _$AddVehicleInitialPostBodyModelTearOff();

// ignore: unused_element
  _AddVehicleInitialPostBodyModel call(
      {@required @JsonKey(name: 'is_mobile') bool isMobile}) {
    return _AddVehicleInitialPostBodyModel(
      isMobile: isMobile,
    );
  }

// ignore: unused_element
  AddVehicleInitialPostBodyModel fromJson(Map<String, Object> json) {
    return AddVehicleInitialPostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleInitialPostBodyModel =
    _$AddVehicleInitialPostBodyModelTearOff();

/// @nodoc
mixin _$AddVehicleInitialPostBodyModel {
  @JsonKey(name: 'is_mobile')
  bool get isMobile;

  Map<String, dynamic> toJson();
  $AddVehicleInitialPostBodyModelCopyWith<AddVehicleInitialPostBodyModel>
      get copyWith;
}

/// @nodoc
abstract class $AddVehicleInitialPostBodyModelCopyWith<$Res> {
  factory $AddVehicleInitialPostBodyModelCopyWith(
          AddVehicleInitialPostBodyModel value,
          $Res Function(AddVehicleInitialPostBodyModel) then) =
      _$AddVehicleInitialPostBodyModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'is_mobile') bool isMobile});
}

/// @nodoc
class _$AddVehicleInitialPostBodyModelCopyWithImpl<$Res>
    implements $AddVehicleInitialPostBodyModelCopyWith<$Res> {
  _$AddVehicleInitialPostBodyModelCopyWithImpl(this._value, this._then);

  final AddVehicleInitialPostBodyModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleInitialPostBodyModel) _then;

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
abstract class _$AddVehicleInitialPostBodyModelCopyWith<$Res>
    implements $AddVehicleInitialPostBodyModelCopyWith<$Res> {
  factory _$AddVehicleInitialPostBodyModelCopyWith(
          _AddVehicleInitialPostBodyModel value,
          $Res Function(_AddVehicleInitialPostBodyModel) then) =
      __$AddVehicleInitialPostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'is_mobile') bool isMobile});
}

/// @nodoc
class __$AddVehicleInitialPostBodyModelCopyWithImpl<$Res>
    extends _$AddVehicleInitialPostBodyModelCopyWithImpl<$Res>
    implements _$AddVehicleInitialPostBodyModelCopyWith<$Res> {
  __$AddVehicleInitialPostBodyModelCopyWithImpl(
      _AddVehicleInitialPostBodyModel _value,
      $Res Function(_AddVehicleInitialPostBodyModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleInitialPostBodyModel));

  @override
  _AddVehicleInitialPostBodyModel get _value =>
      super._value as _AddVehicleInitialPostBodyModel;

  @override
  $Res call({
    Object isMobile = freezed,
  }) {
    return _then(_AddVehicleInitialPostBodyModel(
      isMobile: isMobile == freezed ? _value.isMobile : isMobile as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleInitialPostBodyModel
    extends _AddVehicleInitialPostBodyModel {
  const _$_AddVehicleInitialPostBodyModel(
      {@required @JsonKey(name: 'is_mobile') this.isMobile})
      : assert(isMobile != null),
        super._();

  factory _$_AddVehicleInitialPostBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehicleInitialPostBodyModelFromJson(json);

  @override
  @JsonKey(name: 'is_mobile')
  final bool isMobile;

  @override
  String toString() {
    return 'AddVehicleInitialPostBodyModel(isMobile: $isMobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleInitialPostBodyModel &&
            (identical(other.isMobile, isMobile) ||
                const DeepCollectionEquality()
                    .equals(other.isMobile, isMobile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isMobile);

  @override
  _$AddVehicleInitialPostBodyModelCopyWith<_AddVehicleInitialPostBodyModel>
      get copyWith => __$AddVehicleInitialPostBodyModelCopyWithImpl<
          _AddVehicleInitialPostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleInitialPostBodyModelToJson(this);
  }
}

abstract class _AddVehicleInitialPostBodyModel
    extends AddVehicleInitialPostBodyModel {
  const _AddVehicleInitialPostBodyModel._() : super._();
  const factory _AddVehicleInitialPostBodyModel(
          {@required @JsonKey(name: 'is_mobile') bool isMobile}) =
      _$_AddVehicleInitialPostBodyModel;

  factory _AddVehicleInitialPostBodyModel.fromJson(Map<String, dynamic> json) =
      _$_AddVehicleInitialPostBodyModel.fromJson;

  @override
  @JsonKey(name: 'is_mobile')
  bool get isMobile;
  @override
  _$AddVehicleInitialPostBodyModelCopyWith<_AddVehicleInitialPostBodyModel>
      get copyWith;
}
