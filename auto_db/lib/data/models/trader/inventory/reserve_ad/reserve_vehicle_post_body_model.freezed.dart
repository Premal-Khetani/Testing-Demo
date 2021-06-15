// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reserve_vehicle_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReserveVehiclePostBodyModel _$ReserveVehiclePostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _ReserveVehiclePostBodyModel.fromJson(json);
}

/// @nodoc
class _$ReserveVehiclePostBodyModelTearOff {
  const _$ReserveVehiclePostBodyModelTearOff();

// ignore: unused_element
  _ReserveVehiclePostBodyModel call(
      {@JsonKey(name: 'reserved') bool reserved}) {
    return _ReserveVehiclePostBodyModel(
      reserved: reserved,
    );
  }

// ignore: unused_element
  ReserveVehiclePostBodyModel fromJson(Map<String, Object> json) {
    return ReserveVehiclePostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ReserveVehiclePostBodyModel = _$ReserveVehiclePostBodyModelTearOff();

/// @nodoc
mixin _$ReserveVehiclePostBodyModel {
  @JsonKey(name: 'reserved')
  bool get reserved;

  Map<String, dynamic> toJson();
  $ReserveVehiclePostBodyModelCopyWith<ReserveVehiclePostBodyModel>
      get copyWith;
}

/// @nodoc
abstract class $ReserveVehiclePostBodyModelCopyWith<$Res> {
  factory $ReserveVehiclePostBodyModelCopyWith(
          ReserveVehiclePostBodyModel value,
          $Res Function(ReserveVehiclePostBodyModel) then) =
      _$ReserveVehiclePostBodyModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'reserved') bool reserved});
}

/// @nodoc
class _$ReserveVehiclePostBodyModelCopyWithImpl<$Res>
    implements $ReserveVehiclePostBodyModelCopyWith<$Res> {
  _$ReserveVehiclePostBodyModelCopyWithImpl(this._value, this._then);

  final ReserveVehiclePostBodyModel _value;
  // ignore: unused_field
  final $Res Function(ReserveVehiclePostBodyModel) _then;

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
abstract class _$ReserveVehiclePostBodyModelCopyWith<$Res>
    implements $ReserveVehiclePostBodyModelCopyWith<$Res> {
  factory _$ReserveVehiclePostBodyModelCopyWith(
          _ReserveVehiclePostBodyModel value,
          $Res Function(_ReserveVehiclePostBodyModel) then) =
      __$ReserveVehiclePostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'reserved') bool reserved});
}

/// @nodoc
class __$ReserveVehiclePostBodyModelCopyWithImpl<$Res>
    extends _$ReserveVehiclePostBodyModelCopyWithImpl<$Res>
    implements _$ReserveVehiclePostBodyModelCopyWith<$Res> {
  __$ReserveVehiclePostBodyModelCopyWithImpl(
      _ReserveVehiclePostBodyModel _value,
      $Res Function(_ReserveVehiclePostBodyModel) _then)
      : super(_value, (v) => _then(v as _ReserveVehiclePostBodyModel));

  @override
  _ReserveVehiclePostBodyModel get _value =>
      super._value as _ReserveVehiclePostBodyModel;

  @override
  $Res call({
    Object reserved = freezed,
  }) {
    return _then(_ReserveVehiclePostBodyModel(
      reserved: reserved == freezed ? _value.reserved : reserved as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ReserveVehiclePostBodyModel extends _ReserveVehiclePostBodyModel {
  const _$_ReserveVehiclePostBodyModel(
      {@JsonKey(name: 'reserved') this.reserved})
      : super._();

  factory _$_ReserveVehiclePostBodyModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReserveVehiclePostBodyModelFromJson(json);

  @override
  @JsonKey(name: 'reserved')
  final bool reserved;

  @override
  String toString() {
    return 'ReserveVehiclePostBodyModel(reserved: $reserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReserveVehiclePostBodyModel &&
            (identical(other.reserved, reserved) ||
                const DeepCollectionEquality()
                    .equals(other.reserved, reserved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reserved);

  @override
  _$ReserveVehiclePostBodyModelCopyWith<_ReserveVehiclePostBodyModel>
      get copyWith => __$ReserveVehiclePostBodyModelCopyWithImpl<
          _ReserveVehiclePostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReserveVehiclePostBodyModelToJson(this);
  }
}

abstract class _ReserveVehiclePostBodyModel
    extends ReserveVehiclePostBodyModel {
  const _ReserveVehiclePostBodyModel._() : super._();
  const factory _ReserveVehiclePostBodyModel(
          {@JsonKey(name: 'reserved') bool reserved}) =
      _$_ReserveVehiclePostBodyModel;

  factory _ReserveVehiclePostBodyModel.fromJson(Map<String, dynamic> json) =
      _$_ReserveVehiclePostBodyModel.fromJson;

  @override
  @JsonKey(name: 'reserved')
  bool get reserved;
  @override
  _$ReserveVehiclePostBodyModelCopyWith<_ReserveVehiclePostBodyModel>
      get copyWith;
}
