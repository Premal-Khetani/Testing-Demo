// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_specifications_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleSpecificationsPostBodyModel
    _$AddVehicleSpecificationsPostBodyModelFromJson(Map<String, dynamic> json) {
  return _AddVehicleSpecificationsPostBodyModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleSpecificationsPostBodyModelTearOff {
  const _$AddVehicleSpecificationsPostBodyModelTearOff();

// ignore: unused_element
  _AddVehicleSpecificationsPostBodyModel call(
      {@required int id,
      @required @JsonKey(name: 'vehicle') int vehicleTypeId,
      @required @JsonKey(name: 'brand') int brandId,
      @required @JsonKey(name: 'model') int modelId,
      @required @JsonKey(name: 'transmission') int transmissionTypeId,
      @required @JsonKey(name: 'bodywork') int bodyworkTypeId,
      @required @JsonKey(name: 'year') int year,
      @required @JsonKey(name: 'fuel') int fuelTypeId,
      @required @JsonKey(name: 'mileage') int mileage,
      @required @JsonKey(name: 'mileage_options') String mileageUnit,
      @JsonKey(name: 'color') int color,
      @JsonKey(name: 'interior') String interior,
      @required @JsonKey(name: 'engine_size') int engineSize}) {
    return _AddVehicleSpecificationsPostBodyModel(
      id: id,
      vehicleTypeId: vehicleTypeId,
      brandId: brandId,
      modelId: modelId,
      transmissionTypeId: transmissionTypeId,
      bodyworkTypeId: bodyworkTypeId,
      year: year,
      fuelTypeId: fuelTypeId,
      mileage: mileage,
      mileageUnit: mileageUnit,
      color: color,
      interior: interior,
      engineSize: engineSize,
    );
  }

// ignore: unused_element
  AddVehicleSpecificationsPostBodyModel fromJson(Map<String, Object> json) {
    return AddVehicleSpecificationsPostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleSpecificationsPostBodyModel =
    _$AddVehicleSpecificationsPostBodyModelTearOff();

/// @nodoc
mixin _$AddVehicleSpecificationsPostBodyModel {
  int get id;
  @JsonKey(name: 'vehicle')
  int get vehicleTypeId;
  @JsonKey(name: 'brand')
  int get brandId;
  @JsonKey(name: 'model')
  int get modelId;
  @JsonKey(name: 'transmission')
  int get transmissionTypeId;
  @JsonKey(name: 'bodywork')
  int get bodyworkTypeId;
  @JsonKey(name: 'year')
  int get year;
  @JsonKey(name: 'fuel')
  int get fuelTypeId;
  @JsonKey(name: 'mileage')
  int get mileage;
  @JsonKey(name: 'mileage_options')
  String get mileageUnit;
  @JsonKey(name: 'color')
  int get color;
  @JsonKey(name: 'interior')
  String get interior;
  @JsonKey(name: 'engine_size')
  int get engineSize;

  Map<String, dynamic> toJson();
  $AddVehicleSpecificationsPostBodyModelCopyWith<
      AddVehicleSpecificationsPostBodyModel> get copyWith;
}

/// @nodoc
abstract class $AddVehicleSpecificationsPostBodyModelCopyWith<$Res> {
  factory $AddVehicleSpecificationsPostBodyModelCopyWith(
          AddVehicleSpecificationsPostBodyModel value,
          $Res Function(AddVehicleSpecificationsPostBodyModel) then) =
      _$AddVehicleSpecificationsPostBodyModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'vehicle') int vehicleTypeId,
      @JsonKey(name: 'brand') int brandId,
      @JsonKey(name: 'model') int modelId,
      @JsonKey(name: 'transmission') int transmissionTypeId,
      @JsonKey(name: 'bodywork') int bodyworkTypeId,
      @JsonKey(name: 'year') int year,
      @JsonKey(name: 'fuel') int fuelTypeId,
      @JsonKey(name: 'mileage') int mileage,
      @JsonKey(name: 'mileage_options') String mileageUnit,
      @JsonKey(name: 'color') int color,
      @JsonKey(name: 'interior') String interior,
      @JsonKey(name: 'engine_size') int engineSize});
}

/// @nodoc
class _$AddVehicleSpecificationsPostBodyModelCopyWithImpl<$Res>
    implements $AddVehicleSpecificationsPostBodyModelCopyWith<$Res> {
  _$AddVehicleSpecificationsPostBodyModelCopyWithImpl(this._value, this._then);

  final AddVehicleSpecificationsPostBodyModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleSpecificationsPostBodyModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleTypeId = freezed,
    Object brandId = freezed,
    Object modelId = freezed,
    Object transmissionTypeId = freezed,
    Object bodyworkTypeId = freezed,
    Object year = freezed,
    Object fuelTypeId = freezed,
    Object mileage = freezed,
    Object mileageUnit = freezed,
    Object color = freezed,
    Object interior = freezed,
    Object engineSize = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      vehicleTypeId: vehicleTypeId == freezed
          ? _value.vehicleTypeId
          : vehicleTypeId as int,
      brandId: brandId == freezed ? _value.brandId : brandId as int,
      modelId: modelId == freezed ? _value.modelId : modelId as int,
      transmissionTypeId: transmissionTypeId == freezed
          ? _value.transmissionTypeId
          : transmissionTypeId as int,
      bodyworkTypeId: bodyworkTypeId == freezed
          ? _value.bodyworkTypeId
          : bodyworkTypeId as int,
      year: year == freezed ? _value.year : year as int,
      fuelTypeId: fuelTypeId == freezed ? _value.fuelTypeId : fuelTypeId as int,
      mileage: mileage == freezed ? _value.mileage : mileage as int,
      mileageUnit:
          mileageUnit == freezed ? _value.mileageUnit : mileageUnit as String,
      color: color == freezed ? _value.color : color as int,
      interior: interior == freezed ? _value.interior : interior as String,
      engineSize: engineSize == freezed ? _value.engineSize : engineSize as int,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleSpecificationsPostBodyModelCopyWith<$Res>
    implements $AddVehicleSpecificationsPostBodyModelCopyWith<$Res> {
  factory _$AddVehicleSpecificationsPostBodyModelCopyWith(
          _AddVehicleSpecificationsPostBodyModel value,
          $Res Function(_AddVehicleSpecificationsPostBodyModel) then) =
      __$AddVehicleSpecificationsPostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'vehicle') int vehicleTypeId,
      @JsonKey(name: 'brand') int brandId,
      @JsonKey(name: 'model') int modelId,
      @JsonKey(name: 'transmission') int transmissionTypeId,
      @JsonKey(name: 'bodywork') int bodyworkTypeId,
      @JsonKey(name: 'year') int year,
      @JsonKey(name: 'fuel') int fuelTypeId,
      @JsonKey(name: 'mileage') int mileage,
      @JsonKey(name: 'mileage_options') String mileageUnit,
      @JsonKey(name: 'color') int color,
      @JsonKey(name: 'interior') String interior,
      @JsonKey(name: 'engine_size') int engineSize});
}

/// @nodoc
class __$AddVehicleSpecificationsPostBodyModelCopyWithImpl<$Res>
    extends _$AddVehicleSpecificationsPostBodyModelCopyWithImpl<$Res>
    implements _$AddVehicleSpecificationsPostBodyModelCopyWith<$Res> {
  __$AddVehicleSpecificationsPostBodyModelCopyWithImpl(
      _AddVehicleSpecificationsPostBodyModel _value,
      $Res Function(_AddVehicleSpecificationsPostBodyModel) _then)
      : super(
            _value, (v) => _then(v as _AddVehicleSpecificationsPostBodyModel));

  @override
  _AddVehicleSpecificationsPostBodyModel get _value =>
      super._value as _AddVehicleSpecificationsPostBodyModel;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleTypeId = freezed,
    Object brandId = freezed,
    Object modelId = freezed,
    Object transmissionTypeId = freezed,
    Object bodyworkTypeId = freezed,
    Object year = freezed,
    Object fuelTypeId = freezed,
    Object mileage = freezed,
    Object mileageUnit = freezed,
    Object color = freezed,
    Object interior = freezed,
    Object engineSize = freezed,
  }) {
    return _then(_AddVehicleSpecificationsPostBodyModel(
      id: id == freezed ? _value.id : id as int,
      vehicleTypeId: vehicleTypeId == freezed
          ? _value.vehicleTypeId
          : vehicleTypeId as int,
      brandId: brandId == freezed ? _value.brandId : brandId as int,
      modelId: modelId == freezed ? _value.modelId : modelId as int,
      transmissionTypeId: transmissionTypeId == freezed
          ? _value.transmissionTypeId
          : transmissionTypeId as int,
      bodyworkTypeId: bodyworkTypeId == freezed
          ? _value.bodyworkTypeId
          : bodyworkTypeId as int,
      year: year == freezed ? _value.year : year as int,
      fuelTypeId: fuelTypeId == freezed ? _value.fuelTypeId : fuelTypeId as int,
      mileage: mileage == freezed ? _value.mileage : mileage as int,
      mileageUnit:
          mileageUnit == freezed ? _value.mileageUnit : mileageUnit as String,
      color: color == freezed ? _value.color : color as int,
      interior: interior == freezed ? _value.interior : interior as String,
      engineSize: engineSize == freezed ? _value.engineSize : engineSize as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleSpecificationsPostBodyModel
    extends _AddVehicleSpecificationsPostBodyModel {
  const _$_AddVehicleSpecificationsPostBodyModel(
      {@required this.id,
      @required @JsonKey(name: 'vehicle') this.vehicleTypeId,
      @required @JsonKey(name: 'brand') this.brandId,
      @required @JsonKey(name: 'model') this.modelId,
      @required @JsonKey(name: 'transmission') this.transmissionTypeId,
      @required @JsonKey(name: 'bodywork') this.bodyworkTypeId,
      @required @JsonKey(name: 'year') this.year,
      @required @JsonKey(name: 'fuel') this.fuelTypeId,
      @required @JsonKey(name: 'mileage') this.mileage,
      @required @JsonKey(name: 'mileage_options') this.mileageUnit,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'interior') this.interior,
      @required @JsonKey(name: 'engine_size') this.engineSize})
      : assert(id != null),
        assert(vehicleTypeId != null),
        assert(brandId != null),
        assert(modelId != null),
        assert(transmissionTypeId != null),
        assert(bodyworkTypeId != null),
        assert(year != null),
        assert(fuelTypeId != null),
        assert(mileage != null),
        assert(mileageUnit != null),
        assert(engineSize != null),
        super._();

  factory _$_AddVehicleSpecificationsPostBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehicleSpecificationsPostBodyModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'vehicle')
  final int vehicleTypeId;
  @override
  @JsonKey(name: 'brand')
  final int brandId;
  @override
  @JsonKey(name: 'model')
  final int modelId;
  @override
  @JsonKey(name: 'transmission')
  final int transmissionTypeId;
  @override
  @JsonKey(name: 'bodywork')
  final int bodyworkTypeId;
  @override
  @JsonKey(name: 'year')
  final int year;
  @override
  @JsonKey(name: 'fuel')
  final int fuelTypeId;
  @override
  @JsonKey(name: 'mileage')
  final int mileage;
  @override
  @JsonKey(name: 'mileage_options')
  final String mileageUnit;
  @override
  @JsonKey(name: 'color')
  final int color;
  @override
  @JsonKey(name: 'interior')
  final String interior;
  @override
  @JsonKey(name: 'engine_size')
  final int engineSize;

  @override
  String toString() {
    return 'AddVehicleSpecificationsPostBodyModel(id: $id, vehicleTypeId: $vehicleTypeId, brandId: $brandId, modelId: $modelId, transmissionTypeId: $transmissionTypeId, bodyworkTypeId: $bodyworkTypeId, year: $year, fuelTypeId: $fuelTypeId, mileage: $mileage, mileageUnit: $mileageUnit, color: $color, interior: $interior, engineSize: $engineSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleSpecificationsPostBodyModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTypeId, vehicleTypeId)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.transmissionTypeId, transmissionTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.transmissionTypeId, transmissionTypeId)) &&
            (identical(other.bodyworkTypeId, bodyworkTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.bodyworkTypeId, bodyworkTypeId)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.mileageUnit, mileageUnit) ||
                const DeepCollectionEquality()
                    .equals(other.mileageUnit, mileageUnit)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.interior, interior) ||
                const DeepCollectionEquality()
                    .equals(other.interior, interior)) &&
            (identical(other.engineSize, engineSize) ||
                const DeepCollectionEquality()
                    .equals(other.engineSize, engineSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(transmissionTypeId) ^
      const DeepCollectionEquality().hash(bodyworkTypeId) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(mileageUnit) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(interior) ^
      const DeepCollectionEquality().hash(engineSize);

  @override
  _$AddVehicleSpecificationsPostBodyModelCopyWith<
          _AddVehicleSpecificationsPostBodyModel>
      get copyWith => __$AddVehicleSpecificationsPostBodyModelCopyWithImpl<
          _AddVehicleSpecificationsPostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleSpecificationsPostBodyModelToJson(this);
  }
}

abstract class _AddVehicleSpecificationsPostBodyModel
    extends AddVehicleSpecificationsPostBodyModel {
  const _AddVehicleSpecificationsPostBodyModel._() : super._();
  const factory _AddVehicleSpecificationsPostBodyModel(
          {@required int id,
          @required @JsonKey(name: 'vehicle') int vehicleTypeId,
          @required @JsonKey(name: 'brand') int brandId,
          @required @JsonKey(name: 'model') int modelId,
          @required @JsonKey(name: 'transmission') int transmissionTypeId,
          @required @JsonKey(name: 'bodywork') int bodyworkTypeId,
          @required @JsonKey(name: 'year') int year,
          @required @JsonKey(name: 'fuel') int fuelTypeId,
          @required @JsonKey(name: 'mileage') int mileage,
          @required @JsonKey(name: 'mileage_options') String mileageUnit,
          @JsonKey(name: 'color') int color,
          @JsonKey(name: 'interior') String interior,
          @required @JsonKey(name: 'engine_size') int engineSize}) =
      _$_AddVehicleSpecificationsPostBodyModel;

  factory _AddVehicleSpecificationsPostBodyModel.fromJson(
          Map<String, dynamic> json) =
      _$_AddVehicleSpecificationsPostBodyModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'vehicle')
  int get vehicleTypeId;
  @override
  @JsonKey(name: 'brand')
  int get brandId;
  @override
  @JsonKey(name: 'model')
  int get modelId;
  @override
  @JsonKey(name: 'transmission')
  int get transmissionTypeId;
  @override
  @JsonKey(name: 'bodywork')
  int get bodyworkTypeId;
  @override
  @JsonKey(name: 'year')
  int get year;
  @override
  @JsonKey(name: 'fuel')
  int get fuelTypeId;
  @override
  @JsonKey(name: 'mileage')
  int get mileage;
  @override
  @JsonKey(name: 'mileage_options')
  String get mileageUnit;
  @override
  @JsonKey(name: 'color')
  int get color;
  @override
  @JsonKey(name: 'interior')
  String get interior;
  @override
  @JsonKey(name: 'engine_size')
  int get engineSize;
  @override
  _$AddVehicleSpecificationsPostBodyModelCopyWith<
      _AddVehicleSpecificationsPostBodyModel> get copyWith;
}
