// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rdw_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RDWPostBodyModel _$RDWPostBodyModelFromJson(Map<String, dynamic> json) {
  return _RDWPostBodyModel.fromJson(json);
}

/// @nodoc
class _$RDWPostBodyModelTearOff {
  const _$RDWPostBodyModelTearOff();

// ignore: unused_element
  _RDWPostBodyModel call(
      {@JsonKey(name: 'licence_plate') String licensePlate}) {
    return _RDWPostBodyModel(
      licensePlate: licensePlate,
    );
  }

// ignore: unused_element
  RDWPostBodyModel fromJson(Map<String, Object> json) {
    return RDWPostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RDWPostBodyModel = _$RDWPostBodyModelTearOff();

/// @nodoc
mixin _$RDWPostBodyModel {
  @JsonKey(name: 'licence_plate')
  String get licensePlate;

  Map<String, dynamic> toJson();
  $RDWPostBodyModelCopyWith<RDWPostBodyModel> get copyWith;
}

/// @nodoc
abstract class $RDWPostBodyModelCopyWith<$Res> {
  factory $RDWPostBodyModelCopyWith(
          RDWPostBodyModel value, $Res Function(RDWPostBodyModel) then) =
      _$RDWPostBodyModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'licence_plate') String licensePlate});
}

/// @nodoc
class _$RDWPostBodyModelCopyWithImpl<$Res>
    implements $RDWPostBodyModelCopyWith<$Res> {
  _$RDWPostBodyModelCopyWithImpl(this._value, this._then);

  final RDWPostBodyModel _value;
  // ignore: unused_field
  final $Res Function(RDWPostBodyModel) _then;

  @override
  $Res call({
    Object licensePlate = freezed,
  }) {
    return _then(_value.copyWith(
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
    ));
  }
}

/// @nodoc
abstract class _$RDWPostBodyModelCopyWith<$Res>
    implements $RDWPostBodyModelCopyWith<$Res> {
  factory _$RDWPostBodyModelCopyWith(
          _RDWPostBodyModel value, $Res Function(_RDWPostBodyModel) then) =
      __$RDWPostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'licence_plate') String licensePlate});
}

/// @nodoc
class __$RDWPostBodyModelCopyWithImpl<$Res>
    extends _$RDWPostBodyModelCopyWithImpl<$Res>
    implements _$RDWPostBodyModelCopyWith<$Res> {
  __$RDWPostBodyModelCopyWithImpl(
      _RDWPostBodyModel _value, $Res Function(_RDWPostBodyModel) _then)
      : super(_value, (v) => _then(v as _RDWPostBodyModel));

  @override
  _RDWPostBodyModel get _value => super._value as _RDWPostBodyModel;

  @override
  $Res call({
    Object licensePlate = freezed,
  }) {
    return _then(_RDWPostBodyModel(
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RDWPostBodyModel extends _RDWPostBodyModel {
  const _$_RDWPostBodyModel({@JsonKey(name: 'licence_plate') this.licensePlate})
      : super._();

  factory _$_RDWPostBodyModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RDWPostBodyModelFromJson(json);

  @override
  @JsonKey(name: 'licence_plate')
  final String licensePlate;

  @override
  String toString() {
    return 'RDWPostBodyModel(licensePlate: $licensePlate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RDWPostBodyModel &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(licensePlate);

  @override
  _$RDWPostBodyModelCopyWith<_RDWPostBodyModel> get copyWith =>
      __$RDWPostBodyModelCopyWithImpl<_RDWPostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RDWPostBodyModelToJson(this);
  }
}

abstract class _RDWPostBodyModel extends RDWPostBodyModel {
  const _RDWPostBodyModel._() : super._();
  const factory _RDWPostBodyModel(
          {@JsonKey(name: 'licence_plate') String licensePlate}) =
      _$_RDWPostBodyModel;

  factory _RDWPostBodyModel.fromJson(Map<String, dynamic> json) =
      _$_RDWPostBodyModel.fromJson;

  @override
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @override
  _$RDWPostBodyModelCopyWith<_RDWPostBodyModel> get copyWith;
}
