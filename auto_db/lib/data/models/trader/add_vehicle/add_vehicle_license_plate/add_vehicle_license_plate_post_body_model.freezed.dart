// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_license_plate_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleLicensePlatePostBodyModel
    _$AddVehicleLicensePlatePostBodyModelFromJson(Map<String, dynamic> json) {
  return _AddVehicleLicensePlatePostBodyModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleLicensePlatePostBodyModelTearOff {
  const _$AddVehicleLicensePlatePostBodyModelTearOff();

// ignore: unused_element
  _AddVehicleLicensePlatePostBodyModel call(
      {@required int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String nameOrStockNumber}) {
    return _AddVehicleLicensePlatePostBodyModel(
      id: id,
      licensePlate: licensePlate,
      nameOrStockNumber: nameOrStockNumber,
    );
  }

// ignore: unused_element
  AddVehicleLicensePlatePostBodyModel fromJson(Map<String, Object> json) {
    return AddVehicleLicensePlatePostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleLicensePlatePostBodyModel =
    _$AddVehicleLicensePlatePostBodyModelTearOff();

/// @nodoc
mixin _$AddVehicleLicensePlatePostBodyModel {
  int get id;
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @JsonKey(name: 'name')
  String get nameOrStockNumber;

  Map<String, dynamic> toJson();
  $AddVehicleLicensePlatePostBodyModelCopyWith<
      AddVehicleLicensePlatePostBodyModel> get copyWith;
}

/// @nodoc
abstract class $AddVehicleLicensePlatePostBodyModelCopyWith<$Res> {
  factory $AddVehicleLicensePlatePostBodyModelCopyWith(
          AddVehicleLicensePlatePostBodyModel value,
          $Res Function(AddVehicleLicensePlatePostBodyModel) then) =
      _$AddVehicleLicensePlatePostBodyModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String nameOrStockNumber});
}

/// @nodoc
class _$AddVehicleLicensePlatePostBodyModelCopyWithImpl<$Res>
    implements $AddVehicleLicensePlatePostBodyModelCopyWith<$Res> {
  _$AddVehicleLicensePlatePostBodyModelCopyWithImpl(this._value, this._then);

  final AddVehicleLicensePlatePostBodyModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleLicensePlatePostBodyModel) _then;

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
abstract class _$AddVehicleLicensePlatePostBodyModelCopyWith<$Res>
    implements $AddVehicleLicensePlatePostBodyModelCopyWith<$Res> {
  factory _$AddVehicleLicensePlatePostBodyModelCopyWith(
          _AddVehicleLicensePlatePostBodyModel value,
          $Res Function(_AddVehicleLicensePlatePostBodyModel) then) =
      __$AddVehicleLicensePlatePostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String nameOrStockNumber});
}

/// @nodoc
class __$AddVehicleLicensePlatePostBodyModelCopyWithImpl<$Res>
    extends _$AddVehicleLicensePlatePostBodyModelCopyWithImpl<$Res>
    implements _$AddVehicleLicensePlatePostBodyModelCopyWith<$Res> {
  __$AddVehicleLicensePlatePostBodyModelCopyWithImpl(
      _AddVehicleLicensePlatePostBodyModel _value,
      $Res Function(_AddVehicleLicensePlatePostBodyModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleLicensePlatePostBodyModel));

  @override
  _AddVehicleLicensePlatePostBodyModel get _value =>
      super._value as _AddVehicleLicensePlatePostBodyModel;

  @override
  $Res call({
    Object id = freezed,
    Object licensePlate = freezed,
    Object nameOrStockNumber = freezed,
  }) {
    return _then(_AddVehicleLicensePlatePostBodyModel(
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

@JsonSerializable()

/// @nodoc
class _$_AddVehicleLicensePlatePostBodyModel
    extends _AddVehicleLicensePlatePostBodyModel {
  const _$_AddVehicleLicensePlatePostBodyModel(
      {@required this.id,
      @JsonKey(name: 'licence_plate') this.licensePlate,
      @JsonKey(name: 'name') this.nameOrStockNumber})
      : assert(id != null),
        super._();

  factory _$_AddVehicleLicensePlatePostBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehicleLicensePlatePostBodyModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'licence_plate')
  final String licensePlate;
  @override
  @JsonKey(name: 'name')
  final String nameOrStockNumber;

  @override
  String toString() {
    return 'AddVehicleLicensePlatePostBodyModel(id: $id, licensePlate: $licensePlate, nameOrStockNumber: $nameOrStockNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleLicensePlatePostBodyModel &&
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
  _$AddVehicleLicensePlatePostBodyModelCopyWith<
          _AddVehicleLicensePlatePostBodyModel>
      get copyWith => __$AddVehicleLicensePlatePostBodyModelCopyWithImpl<
          _AddVehicleLicensePlatePostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleLicensePlatePostBodyModelToJson(this);
  }
}

abstract class _AddVehicleLicensePlatePostBodyModel
    extends AddVehicleLicensePlatePostBodyModel {
  const _AddVehicleLicensePlatePostBodyModel._() : super._();
  const factory _AddVehicleLicensePlatePostBodyModel(
          {@required int id,
          @JsonKey(name: 'licence_plate') String licensePlate,
          @JsonKey(name: 'name') String nameOrStockNumber}) =
      _$_AddVehicleLicensePlatePostBodyModel;

  factory _AddVehicleLicensePlatePostBodyModel.fromJson(
          Map<String, dynamic> json) =
      _$_AddVehicleLicensePlatePostBodyModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @override
  @JsonKey(name: 'name')
  String get nameOrStockNumber;
  @override
  _$AddVehicleLicensePlatePostBodyModelCopyWith<
      _AddVehicleLicensePlatePostBodyModel> get copyWith;
}
