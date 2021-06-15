// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rdw_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RDWResponseModel _$RDWResponseModelFromJson(Map<String, dynamic> json) {
  return _RDWResponseModel.fromJson(json);
}

/// @nodoc
class _$RDWResponseModelTearOff {
  const _$RDWResponseModelTearOff();

// ignore: unused_element
  _RDWResponseModel call(
      {@JsonKey(name: 'kenteken') String licensePlate,
      @JsonKey(name: 'voertuigsoort') int vehicleTypeId,
      @JsonKey(name: 'merk') int brandId,
      @JsonKey(name: 'handelsbenaming') int modelId,
      @JsonKey(name: 'type_versnellingsbak') int transmissionTypeId,
      @JsonKey(name: 'inrichting') int bodyworkTypeId,
      @JsonKey(name: 'brandstof_omschrijving') int fuelTypeId,
      @JsonKey(name: 'datum_eerste_toelating') String year,
      @JsonKey(name: 'color') int color,
      @JsonKey(name: 'cilinderinhoud') String engineSize}) {
    return _RDWResponseModel(
      licensePlate: licensePlate,
      vehicleTypeId: vehicleTypeId,
      brandId: brandId,
      modelId: modelId,
      transmissionTypeId: transmissionTypeId,
      bodyworkTypeId: bodyworkTypeId,
      fuelTypeId: fuelTypeId,
      year: year,
      color: color,
      engineSize: engineSize,
    );
  }

// ignore: unused_element
  RDWResponseModel fromJson(Map<String, Object> json) {
    return RDWResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RDWResponseModel = _$RDWResponseModelTearOff();

/// @nodoc
mixin _$RDWResponseModel {
  @JsonKey(name: 'kenteken')
  String get licensePlate;
  @JsonKey(name: 'voertuigsoort')
  int get vehicleTypeId;
  @JsonKey(name: 'merk')
  int get brandId;
  @JsonKey(name: 'handelsbenaming')
  int get modelId;
  @JsonKey(name: 'type_versnellingsbak')
  int get transmissionTypeId;
  @JsonKey(name: 'inrichting')
  int get bodyworkTypeId;
  @JsonKey(name: 'brandstof_omschrijving')
  int get fuelTypeId;
  @JsonKey(name: 'datum_eerste_toelating')
  String get year;
  @JsonKey(name: 'color')
  int get color;
  @JsonKey(name: 'cilinderinhoud')
  String get engineSize;

  Map<String, dynamic> toJson();
  $RDWResponseModelCopyWith<RDWResponseModel> get copyWith;
}

/// @nodoc
abstract class $RDWResponseModelCopyWith<$Res> {
  factory $RDWResponseModelCopyWith(
          RDWResponseModel value, $Res Function(RDWResponseModel) then) =
      _$RDWResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'kenteken') String licensePlate,
      @JsonKey(name: 'voertuigsoort') int vehicleTypeId,
      @JsonKey(name: 'merk') int brandId,
      @JsonKey(name: 'handelsbenaming') int modelId,
      @JsonKey(name: 'type_versnellingsbak') int transmissionTypeId,
      @JsonKey(name: 'inrichting') int bodyworkTypeId,
      @JsonKey(name: 'brandstof_omschrijving') int fuelTypeId,
      @JsonKey(name: 'datum_eerste_toelating') String year,
      @JsonKey(name: 'color') int color,
      @JsonKey(name: 'cilinderinhoud') String engineSize});
}

/// @nodoc
class _$RDWResponseModelCopyWithImpl<$Res>
    implements $RDWResponseModelCopyWith<$Res> {
  _$RDWResponseModelCopyWithImpl(this._value, this._then);

  final RDWResponseModel _value;
  // ignore: unused_field
  final $Res Function(RDWResponseModel) _then;

  @override
  $Res call({
    Object licensePlate = freezed,
    Object vehicleTypeId = freezed,
    Object brandId = freezed,
    Object modelId = freezed,
    Object transmissionTypeId = freezed,
    Object bodyworkTypeId = freezed,
    Object fuelTypeId = freezed,
    Object year = freezed,
    Object color = freezed,
    Object engineSize = freezed,
  }) {
    return _then(_value.copyWith(
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
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
      fuelTypeId: fuelTypeId == freezed ? _value.fuelTypeId : fuelTypeId as int,
      year: year == freezed ? _value.year : year as String,
      color: color == freezed ? _value.color : color as int,
      engineSize:
          engineSize == freezed ? _value.engineSize : engineSize as String,
    ));
  }
}

/// @nodoc
abstract class _$RDWResponseModelCopyWith<$Res>
    implements $RDWResponseModelCopyWith<$Res> {
  factory _$RDWResponseModelCopyWith(
          _RDWResponseModel value, $Res Function(_RDWResponseModel) then) =
      __$RDWResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'kenteken') String licensePlate,
      @JsonKey(name: 'voertuigsoort') int vehicleTypeId,
      @JsonKey(name: 'merk') int brandId,
      @JsonKey(name: 'handelsbenaming') int modelId,
      @JsonKey(name: 'type_versnellingsbak') int transmissionTypeId,
      @JsonKey(name: 'inrichting') int bodyworkTypeId,
      @JsonKey(name: 'brandstof_omschrijving') int fuelTypeId,
      @JsonKey(name: 'datum_eerste_toelating') String year,
      @JsonKey(name: 'color') int color,
      @JsonKey(name: 'cilinderinhoud') String engineSize});
}

/// @nodoc
class __$RDWResponseModelCopyWithImpl<$Res>
    extends _$RDWResponseModelCopyWithImpl<$Res>
    implements _$RDWResponseModelCopyWith<$Res> {
  __$RDWResponseModelCopyWithImpl(
      _RDWResponseModel _value, $Res Function(_RDWResponseModel) _then)
      : super(_value, (v) => _then(v as _RDWResponseModel));

  @override
  _RDWResponseModel get _value => super._value as _RDWResponseModel;

  @override
  $Res call({
    Object licensePlate = freezed,
    Object vehicleTypeId = freezed,
    Object brandId = freezed,
    Object modelId = freezed,
    Object transmissionTypeId = freezed,
    Object bodyworkTypeId = freezed,
    Object fuelTypeId = freezed,
    Object year = freezed,
    Object color = freezed,
    Object engineSize = freezed,
  }) {
    return _then(_RDWResponseModel(
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
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
      fuelTypeId: fuelTypeId == freezed ? _value.fuelTypeId : fuelTypeId as int,
      year: year == freezed ? _value.year : year as String,
      color: color == freezed ? _value.color : color as int,
      engineSize:
          engineSize == freezed ? _value.engineSize : engineSize as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RDWResponseModel extends _RDWResponseModel {
  const _$_RDWResponseModel(
      {@JsonKey(name: 'kenteken') this.licensePlate,
      @JsonKey(name: 'voertuigsoort') this.vehicleTypeId,
      @JsonKey(name: 'merk') this.brandId,
      @JsonKey(name: 'handelsbenaming') this.modelId,
      @JsonKey(name: 'type_versnellingsbak') this.transmissionTypeId,
      @JsonKey(name: 'inrichting') this.bodyworkTypeId,
      @JsonKey(name: 'brandstof_omschrijving') this.fuelTypeId,
      @JsonKey(name: 'datum_eerste_toelating') this.year,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'cilinderinhoud') this.engineSize})
      : super._();

  factory _$_RDWResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RDWResponseModelFromJson(json);

  @override
  @JsonKey(name: 'kenteken')
  final String licensePlate;
  @override
  @JsonKey(name: 'voertuigsoort')
  final int vehicleTypeId;
  @override
  @JsonKey(name: 'merk')
  final int brandId;
  @override
  @JsonKey(name: 'handelsbenaming')
  final int modelId;
  @override
  @JsonKey(name: 'type_versnellingsbak')
  final int transmissionTypeId;
  @override
  @JsonKey(name: 'inrichting')
  final int bodyworkTypeId;
  @override
  @JsonKey(name: 'brandstof_omschrijving')
  final int fuelTypeId;
  @override
  @JsonKey(name: 'datum_eerste_toelating')
  final String year;
  @override
  @JsonKey(name: 'color')
  final int color;
  @override
  @JsonKey(name: 'cilinderinhoud')
  final String engineSize;

  @override
  String toString() {
    return 'RDWResponseModel(licensePlate: $licensePlate, vehicleTypeId: $vehicleTypeId, brandId: $brandId, modelId: $modelId, transmissionTypeId: $transmissionTypeId, bodyworkTypeId: $bodyworkTypeId, fuelTypeId: $fuelTypeId, year: $year, color: $color, engineSize: $engineSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RDWResponseModel &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
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
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.engineSize, engineSize) ||
                const DeepCollectionEquality()
                    .equals(other.engineSize, engineSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(transmissionTypeId) ^
      const DeepCollectionEquality().hash(bodyworkTypeId) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(engineSize);

  @override
  _$RDWResponseModelCopyWith<_RDWResponseModel> get copyWith =>
      __$RDWResponseModelCopyWithImpl<_RDWResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RDWResponseModelToJson(this);
  }
}

abstract class _RDWResponseModel extends RDWResponseModel {
  const _RDWResponseModel._() : super._();
  const factory _RDWResponseModel(
          {@JsonKey(name: 'kenteken') String licensePlate,
          @JsonKey(name: 'voertuigsoort') int vehicleTypeId,
          @JsonKey(name: 'merk') int brandId,
          @JsonKey(name: 'handelsbenaming') int modelId,
          @JsonKey(name: 'type_versnellingsbak') int transmissionTypeId,
          @JsonKey(name: 'inrichting') int bodyworkTypeId,
          @JsonKey(name: 'brandstof_omschrijving') int fuelTypeId,
          @JsonKey(name: 'datum_eerste_toelating') String year,
          @JsonKey(name: 'color') int color,
          @JsonKey(name: 'cilinderinhoud') String engineSize}) =
      _$_RDWResponseModel;

  factory _RDWResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RDWResponseModel.fromJson;

  @override
  @JsonKey(name: 'kenteken')
  String get licensePlate;
  @override
  @JsonKey(name: 'voertuigsoort')
  int get vehicleTypeId;
  @override
  @JsonKey(name: 'merk')
  int get brandId;
  @override
  @JsonKey(name: 'handelsbenaming')
  int get modelId;
  @override
  @JsonKey(name: 'type_versnellingsbak')
  int get transmissionTypeId;
  @override
  @JsonKey(name: 'inrichting')
  int get bodyworkTypeId;
  @override
  @JsonKey(name: 'brandstof_omschrijving')
  int get fuelTypeId;
  @override
  @JsonKey(name: 'datum_eerste_toelating')
  String get year;
  @override
  @JsonKey(name: 'color')
  int get color;
  @override
  @JsonKey(name: 'cilinderinhoud')
  String get engineSize;
  @override
  _$RDWResponseModelCopyWith<_RDWResponseModel> get copyWith;
}
