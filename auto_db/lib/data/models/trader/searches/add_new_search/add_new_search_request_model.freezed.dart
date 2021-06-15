// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_new_search_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddNewSearchRequestModel _$AddNewSearchRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AddNewSearchRequestModel.fromJson(json);
}

/// @nodoc
class _$AddNewSearchRequestModelTearOff {
  const _$AddNewSearchRequestModelTearOff();

// ignore: unused_element
  _AddNewSearchRequestModel call(
      {@JsonKey(name: 'search_id')
          int id,
      @required
      @JsonKey(name: 'vehicle')
          int vehicleTypeId,
      @required
      @JsonKey(name: 'search_from')
          String dateFrom,
      @required
      @JsonKey(name: 'search_to')
          String dateTo,
      @required
      @JsonKey(name: 'search_name')
          String searchName,
      @JsonKey(name: 'brand')
          int vehicleBrandId,
      @JsonKey(name: 'model')
          int vehicleModelId,
      @required
      @JsonKey(name: 'transmission_type')
          int vehicleTransmissionTypeId,
      @required
      @JsonKey(name: 'bodywork_type')
          int vehcileBodyWorkTypeId,
      @required
      @JsonKey(name: 'fuel_type')
          int fuelTypeId,
      @JsonKey(name: 'year_from')
          int yearFrom,
      @JsonKey(name: 'year_to')
          int yeraTo,
      @required
      @JsonKey(name: 'price_from')
          int priceFrom,
      @required
      @JsonKey(name: 'price_to')
          int priceTo,
      @JsonKey(name: 'mileage_from')
          int mileageFrom,
      @JsonKey(name: 'mileage_to')
          int mileageTo}) {
    return _AddNewSearchRequestModel(
      id: id,
      vehicleTypeId: vehicleTypeId,
      dateFrom: dateFrom,
      dateTo: dateTo,
      searchName: searchName,
      vehicleBrandId: vehicleBrandId,
      vehicleModelId: vehicleModelId,
      vehicleTransmissionTypeId: vehicleTransmissionTypeId,
      vehcileBodyWorkTypeId: vehcileBodyWorkTypeId,
      fuelTypeId: fuelTypeId,
      yearFrom: yearFrom,
      yeraTo: yeraTo,
      priceFrom: priceFrom,
      priceTo: priceTo,
      mileageFrom: mileageFrom,
      mileageTo: mileageTo,
    );
  }

// ignore: unused_element
  AddNewSearchRequestModel fromJson(Map<String, Object> json) {
    return AddNewSearchRequestModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddNewSearchRequestModel = _$AddNewSearchRequestModelTearOff();

/// @nodoc
mixin _$AddNewSearchRequestModel {
  @JsonKey(name: 'search_id')
  int get id;
  @JsonKey(name: 'vehicle')
  int get vehicleTypeId;
  @JsonKey(name: 'search_from')
  String get dateFrom;
  @JsonKey(name: 'search_to')
  String get dateTo;
  @JsonKey(name: 'search_name')
  String get searchName;
  @JsonKey(name: 'brand')
  int get vehicleBrandId;
  @JsonKey(name: 'model')
  int get vehicleModelId;
  @JsonKey(name: 'transmission_type')
  int get vehicleTransmissionTypeId;
  @JsonKey(name: 'bodywork_type')
  int get vehcileBodyWorkTypeId;
  @JsonKey(name: 'fuel_type')
  int get fuelTypeId;
  @JsonKey(name: 'year_from')
  int get yearFrom;
  @JsonKey(name: 'year_to')
  int get yeraTo;
  @JsonKey(name: 'price_from')
  int get priceFrom;
  @JsonKey(name: 'price_to')
  int get priceTo;
  @JsonKey(name: 'mileage_from')
  int get mileageFrom;
  @JsonKey(name: 'mileage_to')
  int get mileageTo;

  Map<String, dynamic> toJson();
  $AddNewSearchRequestModelCopyWith<AddNewSearchRequestModel> get copyWith;
}

/// @nodoc
abstract class $AddNewSearchRequestModelCopyWith<$Res> {
  factory $AddNewSearchRequestModelCopyWith(AddNewSearchRequestModel value,
          $Res Function(AddNewSearchRequestModel) then) =
      _$AddNewSearchRequestModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'search_id') int id,
      @JsonKey(name: 'vehicle') int vehicleTypeId,
      @JsonKey(name: 'search_from') String dateFrom,
      @JsonKey(name: 'search_to') String dateTo,
      @JsonKey(name: 'search_name') String searchName,
      @JsonKey(name: 'brand') int vehicleBrandId,
      @JsonKey(name: 'model') int vehicleModelId,
      @JsonKey(name: 'transmission_type') int vehicleTransmissionTypeId,
      @JsonKey(name: 'bodywork_type') int vehcileBodyWorkTypeId,
      @JsonKey(name: 'fuel_type') int fuelTypeId,
      @JsonKey(name: 'year_from') int yearFrom,
      @JsonKey(name: 'year_to') int yeraTo,
      @JsonKey(name: 'price_from') int priceFrom,
      @JsonKey(name: 'price_to') int priceTo,
      @JsonKey(name: 'mileage_from') int mileageFrom,
      @JsonKey(name: 'mileage_to') int mileageTo});
}

/// @nodoc
class _$AddNewSearchRequestModelCopyWithImpl<$Res>
    implements $AddNewSearchRequestModelCopyWith<$Res> {
  _$AddNewSearchRequestModelCopyWithImpl(this._value, this._then);

  final AddNewSearchRequestModel _value;
  // ignore: unused_field
  final $Res Function(AddNewSearchRequestModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleTypeId = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
    Object searchName = freezed,
    Object vehicleBrandId = freezed,
    Object vehicleModelId = freezed,
    Object vehicleTransmissionTypeId = freezed,
    Object vehcileBodyWorkTypeId = freezed,
    Object fuelTypeId = freezed,
    Object yearFrom = freezed,
    Object yeraTo = freezed,
    Object priceFrom = freezed,
    Object priceTo = freezed,
    Object mileageFrom = freezed,
    Object mileageTo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      vehicleTypeId: vehicleTypeId == freezed
          ? _value.vehicleTypeId
          : vehicleTypeId as int,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as String,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as String,
      searchName:
          searchName == freezed ? _value.searchName : searchName as String,
      vehicleBrandId: vehicleBrandId == freezed
          ? _value.vehicleBrandId
          : vehicleBrandId as int,
      vehicleModelId: vehicleModelId == freezed
          ? _value.vehicleModelId
          : vehicleModelId as int,
      vehicleTransmissionTypeId: vehicleTransmissionTypeId == freezed
          ? _value.vehicleTransmissionTypeId
          : vehicleTransmissionTypeId as int,
      vehcileBodyWorkTypeId: vehcileBodyWorkTypeId == freezed
          ? _value.vehcileBodyWorkTypeId
          : vehcileBodyWorkTypeId as int,
      fuelTypeId: fuelTypeId == freezed ? _value.fuelTypeId : fuelTypeId as int,
      yearFrom: yearFrom == freezed ? _value.yearFrom : yearFrom as int,
      yeraTo: yeraTo == freezed ? _value.yeraTo : yeraTo as int,
      priceFrom: priceFrom == freezed ? _value.priceFrom : priceFrom as int,
      priceTo: priceTo == freezed ? _value.priceTo : priceTo as int,
      mileageFrom:
          mileageFrom == freezed ? _value.mileageFrom : mileageFrom as int,
      mileageTo: mileageTo == freezed ? _value.mileageTo : mileageTo as int,
    ));
  }
}

/// @nodoc
abstract class _$AddNewSearchRequestModelCopyWith<$Res>
    implements $AddNewSearchRequestModelCopyWith<$Res> {
  factory _$AddNewSearchRequestModelCopyWith(_AddNewSearchRequestModel value,
          $Res Function(_AddNewSearchRequestModel) then) =
      __$AddNewSearchRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'search_id') int id,
      @JsonKey(name: 'vehicle') int vehicleTypeId,
      @JsonKey(name: 'search_from') String dateFrom,
      @JsonKey(name: 'search_to') String dateTo,
      @JsonKey(name: 'search_name') String searchName,
      @JsonKey(name: 'brand') int vehicleBrandId,
      @JsonKey(name: 'model') int vehicleModelId,
      @JsonKey(name: 'transmission_type') int vehicleTransmissionTypeId,
      @JsonKey(name: 'bodywork_type') int vehcileBodyWorkTypeId,
      @JsonKey(name: 'fuel_type') int fuelTypeId,
      @JsonKey(name: 'year_from') int yearFrom,
      @JsonKey(name: 'year_to') int yeraTo,
      @JsonKey(name: 'price_from') int priceFrom,
      @JsonKey(name: 'price_to') int priceTo,
      @JsonKey(name: 'mileage_from') int mileageFrom,
      @JsonKey(name: 'mileage_to') int mileageTo});
}

/// @nodoc
class __$AddNewSearchRequestModelCopyWithImpl<$Res>
    extends _$AddNewSearchRequestModelCopyWithImpl<$Res>
    implements _$AddNewSearchRequestModelCopyWith<$Res> {
  __$AddNewSearchRequestModelCopyWithImpl(_AddNewSearchRequestModel _value,
      $Res Function(_AddNewSearchRequestModel) _then)
      : super(_value, (v) => _then(v as _AddNewSearchRequestModel));

  @override
  _AddNewSearchRequestModel get _value =>
      super._value as _AddNewSearchRequestModel;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleTypeId = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
    Object searchName = freezed,
    Object vehicleBrandId = freezed,
    Object vehicleModelId = freezed,
    Object vehicleTransmissionTypeId = freezed,
    Object vehcileBodyWorkTypeId = freezed,
    Object fuelTypeId = freezed,
    Object yearFrom = freezed,
    Object yeraTo = freezed,
    Object priceFrom = freezed,
    Object priceTo = freezed,
    Object mileageFrom = freezed,
    Object mileageTo = freezed,
  }) {
    return _then(_AddNewSearchRequestModel(
      id: id == freezed ? _value.id : id as int,
      vehicleTypeId: vehicleTypeId == freezed
          ? _value.vehicleTypeId
          : vehicleTypeId as int,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as String,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as String,
      searchName:
          searchName == freezed ? _value.searchName : searchName as String,
      vehicleBrandId: vehicleBrandId == freezed
          ? _value.vehicleBrandId
          : vehicleBrandId as int,
      vehicleModelId: vehicleModelId == freezed
          ? _value.vehicleModelId
          : vehicleModelId as int,
      vehicleTransmissionTypeId: vehicleTransmissionTypeId == freezed
          ? _value.vehicleTransmissionTypeId
          : vehicleTransmissionTypeId as int,
      vehcileBodyWorkTypeId: vehcileBodyWorkTypeId == freezed
          ? _value.vehcileBodyWorkTypeId
          : vehcileBodyWorkTypeId as int,
      fuelTypeId: fuelTypeId == freezed ? _value.fuelTypeId : fuelTypeId as int,
      yearFrom: yearFrom == freezed ? _value.yearFrom : yearFrom as int,
      yeraTo: yeraTo == freezed ? _value.yeraTo : yeraTo as int,
      priceFrom: priceFrom == freezed ? _value.priceFrom : priceFrom as int,
      priceTo: priceTo == freezed ? _value.priceTo : priceTo as int,
      mileageFrom:
          mileageFrom == freezed ? _value.mileageFrom : mileageFrom as int,
      mileageTo: mileageTo == freezed ? _value.mileageTo : mileageTo as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddNewSearchRequestModel extends _AddNewSearchRequestModel {
  const _$_AddNewSearchRequestModel(
      {@JsonKey(name: 'search_id')
          this.id,
      @required
      @JsonKey(name: 'vehicle')
          this.vehicleTypeId,
      @required
      @JsonKey(name: 'search_from')
          this.dateFrom,
      @required
      @JsonKey(name: 'search_to')
          this.dateTo,
      @required
      @JsonKey(name: 'search_name')
          this.searchName,
      @JsonKey(name: 'brand')
          this.vehicleBrandId,
      @JsonKey(name: 'model')
          this.vehicleModelId,
      @required
      @JsonKey(name: 'transmission_type')
          this.vehicleTransmissionTypeId,
      @required
      @JsonKey(name: 'bodywork_type')
          this.vehcileBodyWorkTypeId,
      @required
      @JsonKey(name: 'fuel_type')
          this.fuelTypeId,
      @JsonKey(name: 'year_from')
          this.yearFrom,
      @JsonKey(name: 'year_to')
          this.yeraTo,
      @required
      @JsonKey(name: 'price_from')
          this.priceFrom,
      @required
      @JsonKey(name: 'price_to')
          this.priceTo,
      @JsonKey(name: 'mileage_from')
          this.mileageFrom,
      @JsonKey(name: 'mileage_to')
          this.mileageTo})
      : assert(vehicleTypeId != null),
        assert(dateFrom != null),
        assert(dateTo != null),
        assert(searchName != null),
        assert(vehicleTransmissionTypeId != null),
        assert(vehcileBodyWorkTypeId != null),
        assert(fuelTypeId != null),
        assert(priceFrom != null),
        assert(priceTo != null),
        super._();

  factory _$_AddNewSearchRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddNewSearchRequestModelFromJson(json);

  @override
  @JsonKey(name: 'search_id')
  final int id;
  @override
  @JsonKey(name: 'vehicle')
  final int vehicleTypeId;
  @override
  @JsonKey(name: 'search_from')
  final String dateFrom;
  @override
  @JsonKey(name: 'search_to')
  final String dateTo;
  @override
  @JsonKey(name: 'search_name')
  final String searchName;
  @override
  @JsonKey(name: 'brand')
  final int vehicleBrandId;
  @override
  @JsonKey(name: 'model')
  final int vehicleModelId;
  @override
  @JsonKey(name: 'transmission_type')
  final int vehicleTransmissionTypeId;
  @override
  @JsonKey(name: 'bodywork_type')
  final int vehcileBodyWorkTypeId;
  @override
  @JsonKey(name: 'fuel_type')
  final int fuelTypeId;
  @override
  @JsonKey(name: 'year_from')
  final int yearFrom;
  @override
  @JsonKey(name: 'year_to')
  final int yeraTo;
  @override
  @JsonKey(name: 'price_from')
  final int priceFrom;
  @override
  @JsonKey(name: 'price_to')
  final int priceTo;
  @override
  @JsonKey(name: 'mileage_from')
  final int mileageFrom;
  @override
  @JsonKey(name: 'mileage_to')
  final int mileageTo;

  @override
  String toString() {
    return 'AddNewSearchRequestModel(id: $id, vehicleTypeId: $vehicleTypeId, dateFrom: $dateFrom, dateTo: $dateTo, searchName: $searchName, vehicleBrandId: $vehicleBrandId, vehicleModelId: $vehicleModelId, vehicleTransmissionTypeId: $vehicleTransmissionTypeId, vehcileBodyWorkTypeId: $vehcileBodyWorkTypeId, fuelTypeId: $fuelTypeId, yearFrom: $yearFrom, yeraTo: $yeraTo, priceFrom: $priceFrom, priceTo: $priceTo, mileageFrom: $mileageFrom, mileageTo: $mileageTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewSearchRequestModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTypeId, vehicleTypeId)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dateFrom, dateFrom)) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.searchName, searchName) ||
                const DeepCollectionEquality()
                    .equals(other.searchName, searchName)) &&
            (identical(other.vehicleBrandId, vehicleBrandId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleBrandId, vehicleBrandId)) &&
            (identical(other.vehicleModelId, vehicleModelId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleModelId, vehicleModelId)) &&
            (identical(other.vehicleTransmissionTypeId,
                    vehicleTransmissionTypeId) ||
                const DeepCollectionEquality().equals(
                    other.vehicleTransmissionTypeId,
                    vehicleTransmissionTypeId)) &&
            (identical(other.vehcileBodyWorkTypeId, vehcileBodyWorkTypeId) ||
                const DeepCollectionEquality().equals(
                    other.vehcileBodyWorkTypeId, vehcileBodyWorkTypeId)) &&
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.yearFrom, yearFrom) ||
                const DeepCollectionEquality()
                    .equals(other.yearFrom, yearFrom)) &&
            (identical(other.yeraTo, yeraTo) ||
                const DeepCollectionEquality().equals(other.yeraTo, yeraTo)) &&
            (identical(other.priceFrom, priceFrom) ||
                const DeepCollectionEquality()
                    .equals(other.priceFrom, priceFrom)) &&
            (identical(other.priceTo, priceTo) ||
                const DeepCollectionEquality()
                    .equals(other.priceTo, priceTo)) &&
            (identical(other.mileageFrom, mileageFrom) ||
                const DeepCollectionEquality()
                    .equals(other.mileageFrom, mileageFrom)) &&
            (identical(other.mileageTo, mileageTo) ||
                const DeepCollectionEquality()
                    .equals(other.mileageTo, mileageTo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(searchName) ^
      const DeepCollectionEquality().hash(vehicleBrandId) ^
      const DeepCollectionEquality().hash(vehicleModelId) ^
      const DeepCollectionEquality().hash(vehicleTransmissionTypeId) ^
      const DeepCollectionEquality().hash(vehcileBodyWorkTypeId) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(yearFrom) ^
      const DeepCollectionEquality().hash(yeraTo) ^
      const DeepCollectionEquality().hash(priceFrom) ^
      const DeepCollectionEquality().hash(priceTo) ^
      const DeepCollectionEquality().hash(mileageFrom) ^
      const DeepCollectionEquality().hash(mileageTo);

  @override
  _$AddNewSearchRequestModelCopyWith<_AddNewSearchRequestModel> get copyWith =>
      __$AddNewSearchRequestModelCopyWithImpl<_AddNewSearchRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddNewSearchRequestModelToJson(this);
  }
}

abstract class _AddNewSearchRequestModel extends AddNewSearchRequestModel {
  const _AddNewSearchRequestModel._() : super._();
  const factory _AddNewSearchRequestModel(
      {@JsonKey(name: 'search_id')
          int id,
      @required
      @JsonKey(name: 'vehicle')
          int vehicleTypeId,
      @required
      @JsonKey(name: 'search_from')
          String dateFrom,
      @required
      @JsonKey(name: 'search_to')
          String dateTo,
      @required
      @JsonKey(name: 'search_name')
          String searchName,
      @JsonKey(name: 'brand')
          int vehicleBrandId,
      @JsonKey(name: 'model')
          int vehicleModelId,
      @required
      @JsonKey(name: 'transmission_type')
          int vehicleTransmissionTypeId,
      @required
      @JsonKey(name: 'bodywork_type')
          int vehcileBodyWorkTypeId,
      @required
      @JsonKey(name: 'fuel_type')
          int fuelTypeId,
      @JsonKey(name: 'year_from')
          int yearFrom,
      @JsonKey(name: 'year_to')
          int yeraTo,
      @required
      @JsonKey(name: 'price_from')
          int priceFrom,
      @required
      @JsonKey(name: 'price_to')
          int priceTo,
      @JsonKey(name: 'mileage_from')
          int mileageFrom,
      @JsonKey(name: 'mileage_to')
          int mileageTo}) = _$_AddNewSearchRequestModel;

  factory _AddNewSearchRequestModel.fromJson(Map<String, dynamic> json) =
      _$_AddNewSearchRequestModel.fromJson;

  @override
  @JsonKey(name: 'search_id')
  int get id;
  @override
  @JsonKey(name: 'vehicle')
  int get vehicleTypeId;
  @override
  @JsonKey(name: 'search_from')
  String get dateFrom;
  @override
  @JsonKey(name: 'search_to')
  String get dateTo;
  @override
  @JsonKey(name: 'search_name')
  String get searchName;
  @override
  @JsonKey(name: 'brand')
  int get vehicleBrandId;
  @override
  @JsonKey(name: 'model')
  int get vehicleModelId;
  @override
  @JsonKey(name: 'transmission_type')
  int get vehicleTransmissionTypeId;
  @override
  @JsonKey(name: 'bodywork_type')
  int get vehcileBodyWorkTypeId;
  @override
  @JsonKey(name: 'fuel_type')
  int get fuelTypeId;
  @override
  @JsonKey(name: 'year_from')
  int get yearFrom;
  @override
  @JsonKey(name: 'year_to')
  int get yeraTo;
  @override
  @JsonKey(name: 'price_from')
  int get priceFrom;
  @override
  @JsonKey(name: 'price_to')
  int get priceTo;
  @override
  @JsonKey(name: 'mileage_from')
  int get mileageFrom;
  @override
  @JsonKey(name: 'mileage_to')
  int get mileageTo;
  @override
  _$AddNewSearchRequestModelCopyWith<_AddNewSearchRequestModel> get copyWith;
}
