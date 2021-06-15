// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
class _$SearchModelTearOff {
  const _$SearchModelTearOff();

// ignore: unused_element
  _SearchModel call(
      {@required
      @JsonKey(name: 'id')
          int id,
      @required
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @required
      @JsonKey(name: 'search_from')
          String dateFrom,
      @required
      @JsonKey(name: 'search_to')
          String dateTo,
      @required
      @JsonKey(name: 'search_name')
          String searchName,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrand,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @required
      @JsonKey(name: 'transmission_types')
          AddVehicleLookupModel vehicleTransmissionType,
      @required
      @JsonKey(name: 'bodywork_types')
          AddVehicleLookupModel vehcileBodyWorkType,
      @required
      @JsonKey(name: 'fuel_types')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'year_from')
          String yearFrom,
      @JsonKey(name: 'year_to')
          String yeraTo,
      @required
      @JsonKey(name: 'price_from')
          String priceFrom,
      @required
      @JsonKey(name: 'price_to')
          String priceTo,
      @JsonKey(name: 'mileage_from')
          String mileageFrom,
      @JsonKey(name: 'mileage_to')
          String mileageTo}) {
    return _SearchModel(
      id: id,
      vehicleType: vehicleType,
      dateFrom: dateFrom,
      dateTo: dateTo,
      searchName: searchName,
      vehicleBrand: vehicleBrand,
      vehicleModel: vehicleModel,
      vehicleTransmissionType: vehicleTransmissionType,
      vehcileBodyWorkType: vehcileBodyWorkType,
      fuelType: fuelType,
      yearFrom: yearFrom,
      yeraTo: yeraTo,
      priceFrom: priceFrom,
      priceTo: priceTo,
      mileageFrom: mileageFrom,
      mileageTo: mileageTo,
    );
  }

// ignore: unused_element
  SearchModel fromJson(Map<String, Object> json) {
    return SearchModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchModel = _$SearchModelTearOff();

/// @nodoc
mixin _$SearchModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
  @JsonKey(name: 'search_from')
  String get dateFrom;
  @JsonKey(name: 'search_to')
  String get dateTo;
  @JsonKey(name: 'search_name')
  String get searchName;
  @JsonKey(name: 'brands')
  AddVehicleLookupModel get vehicleBrand;
  @JsonKey(name: 'car_models')
  AddVehicleLookupModel get vehicleModel;
  @JsonKey(name: 'transmission_types')
  AddVehicleLookupModel get vehicleTransmissionType;
  @JsonKey(name: 'bodywork_types')
  AddVehicleLookupModel get vehcileBodyWorkType;
  @JsonKey(name: 'fuel_types')
  AddVehicleLookupModel get fuelType;
  @JsonKey(name: 'year_from')
  String get yearFrom;
  @JsonKey(name: 'year_to')
  String get yeraTo;
  @JsonKey(name: 'price_from')
  String get priceFrom;
  @JsonKey(name: 'price_to')
  String get priceTo;
  @JsonKey(name: 'mileage_from')
  String get mileageFrom;
  @JsonKey(name: 'mileage_to')
  String get mileageTo;

  Map<String, dynamic> toJson();
  $SearchModelCopyWith<SearchModel> get copyWith;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'search_from')
          String dateFrom,
      @JsonKey(name: 'search_to')
          String dateTo,
      @JsonKey(name: 'search_name')
          String searchName,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrand,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @JsonKey(name: 'transmission_types')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'bodywork_types')
          AddVehicleLookupModel vehcileBodyWorkType,
      @JsonKey(name: 'fuel_types')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'year_from')
          String yearFrom,
      @JsonKey(name: 'year_to')
          String yeraTo,
      @JsonKey(name: 'price_from')
          String priceFrom,
      @JsonKey(name: 'price_to')
          String priceTo,
      @JsonKey(name: 'mileage_from')
          String mileageFrom,
      @JsonKey(name: 'mileage_to')
          String mileageTo});

  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrand;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  $AddVehicleLookupModelCopyWith<$Res> get vehcileBodyWorkType;
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleType = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
    Object searchName = freezed,
    Object vehicleBrand = freezed,
    Object vehicleModel = freezed,
    Object vehicleTransmissionType = freezed,
    Object vehcileBodyWorkType = freezed,
    Object fuelType = freezed,
    Object yearFrom = freezed,
    Object yeraTo = freezed,
    Object priceFrom = freezed,
    Object priceTo = freezed,
    Object mileageFrom = freezed,
    Object mileageTo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as String,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as String,
      searchName:
          searchName == freezed ? _value.searchName : searchName as String,
      vehicleBrand: vehicleBrand == freezed
          ? _value.vehicleBrand
          : vehicleBrand as AddVehicleLookupModel,
      vehicleModel: vehicleModel == freezed
          ? _value.vehicleModel
          : vehicleModel as AddVehicleLookupModel,
      vehicleTransmissionType: vehicleTransmissionType == freezed
          ? _value.vehicleTransmissionType
          : vehicleTransmissionType as AddVehicleLookupModel,
      vehcileBodyWorkType: vehcileBodyWorkType == freezed
          ? _value.vehcileBodyWorkType
          : vehcileBodyWorkType as AddVehicleLookupModel,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
      yearFrom: yearFrom == freezed ? _value.yearFrom : yearFrom as String,
      yeraTo: yeraTo == freezed ? _value.yeraTo : yeraTo as String,
      priceFrom: priceFrom == freezed ? _value.priceFrom : priceFrom as String,
      priceTo: priceTo == freezed ? _value.priceTo : priceTo as String,
      mileageFrom:
          mileageFrom == freezed ? _value.mileageFrom : mileageFrom as String,
      mileageTo: mileageTo == freezed ? _value.mileageTo : mileageTo as String,
    ));
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleType {
    if (_value.vehicleType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleType, (value) {
      return _then(_value.copyWith(vehicleType: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrand {
    if (_value.vehicleBrand == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleBrand, (value) {
      return _then(_value.copyWith(vehicleBrand: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel {
    if (_value.vehicleModel == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleModel, (value) {
      return _then(_value.copyWith(vehicleModel: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType {
    if (_value.vehicleTransmissionType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleTransmissionType,
        (value) {
      return _then(_value.copyWith(vehicleTransmissionType: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehcileBodyWorkType {
    if (_value.vehcileBodyWorkType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehcileBodyWorkType,
        (value) {
      return _then(_value.copyWith(vehcileBodyWorkType: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get fuelType {
    if (_value.fuelType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.fuelType, (value) {
      return _then(_value.copyWith(fuelType: value));
    });
  }
}

/// @nodoc
abstract class _$SearchModelCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$SearchModelCopyWith(
          _SearchModel value, $Res Function(_SearchModel) then) =
      __$SearchModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'search_from')
          String dateFrom,
      @JsonKey(name: 'search_to')
          String dateTo,
      @JsonKey(name: 'search_name')
          String searchName,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrand,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @JsonKey(name: 'transmission_types')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'bodywork_types')
          AddVehicleLookupModel vehcileBodyWorkType,
      @JsonKey(name: 'fuel_types')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'year_from')
          String yearFrom,
      @JsonKey(name: 'year_to')
          String yeraTo,
      @JsonKey(name: 'price_from')
          String priceFrom,
      @JsonKey(name: 'price_to')
          String priceTo,
      @JsonKey(name: 'mileage_from')
          String mileageFrom,
      @JsonKey(name: 'mileage_to')
          String mileageTo});

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrand;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehcileBodyWorkType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
}

/// @nodoc
class __$SearchModelCopyWithImpl<$Res> extends _$SearchModelCopyWithImpl<$Res>
    implements _$SearchModelCopyWith<$Res> {
  __$SearchModelCopyWithImpl(
      _SearchModel _value, $Res Function(_SearchModel) _then)
      : super(_value, (v) => _then(v as _SearchModel));

  @override
  _SearchModel get _value => super._value as _SearchModel;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleType = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
    Object searchName = freezed,
    Object vehicleBrand = freezed,
    Object vehicleModel = freezed,
    Object vehicleTransmissionType = freezed,
    Object vehcileBodyWorkType = freezed,
    Object fuelType = freezed,
    Object yearFrom = freezed,
    Object yeraTo = freezed,
    Object priceFrom = freezed,
    Object priceTo = freezed,
    Object mileageFrom = freezed,
    Object mileageTo = freezed,
  }) {
    return _then(_SearchModel(
      id: id == freezed ? _value.id : id as int,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as String,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as String,
      searchName:
          searchName == freezed ? _value.searchName : searchName as String,
      vehicleBrand: vehicleBrand == freezed
          ? _value.vehicleBrand
          : vehicleBrand as AddVehicleLookupModel,
      vehicleModel: vehicleModel == freezed
          ? _value.vehicleModel
          : vehicleModel as AddVehicleLookupModel,
      vehicleTransmissionType: vehicleTransmissionType == freezed
          ? _value.vehicleTransmissionType
          : vehicleTransmissionType as AddVehicleLookupModel,
      vehcileBodyWorkType: vehcileBodyWorkType == freezed
          ? _value.vehcileBodyWorkType
          : vehcileBodyWorkType as AddVehicleLookupModel,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
      yearFrom: yearFrom == freezed ? _value.yearFrom : yearFrom as String,
      yeraTo: yeraTo == freezed ? _value.yeraTo : yeraTo as String,
      priceFrom: priceFrom == freezed ? _value.priceFrom : priceFrom as String,
      priceTo: priceTo == freezed ? _value.priceTo : priceTo as String,
      mileageFrom:
          mileageFrom == freezed ? _value.mileageFrom : mileageFrom as String,
      mileageTo: mileageTo == freezed ? _value.mileageTo : mileageTo as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchModel extends _SearchModel {
  const _$_SearchModel(
      {@required
      @JsonKey(name: 'id')
          this.id,
      @required
      @JsonKey(name: 'vehicle_types')
          this.vehicleType,
      @required
      @JsonKey(name: 'search_from')
          this.dateFrom,
      @required
      @JsonKey(name: 'search_to')
          this.dateTo,
      @required
      @JsonKey(name: 'search_name')
          this.searchName,
      @JsonKey(name: 'brands')
          this.vehicleBrand,
      @JsonKey(name: 'car_models')
          this.vehicleModel,
      @required
      @JsonKey(name: 'transmission_types')
          this.vehicleTransmissionType,
      @required
      @JsonKey(name: 'bodywork_types')
          this.vehcileBodyWorkType,
      @required
      @JsonKey(name: 'fuel_types')
          this.fuelType,
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
      : assert(id != null),
        assert(vehicleType != null),
        assert(dateFrom != null),
        assert(dateTo != null),
        assert(searchName != null),
        assert(vehicleTransmissionType != null),
        assert(vehcileBodyWorkType != null),
        assert(fuelType != null),
        assert(priceFrom != null),
        assert(priceTo != null),
        super._();

  factory _$_SearchModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'vehicle_types')
  final AddVehicleLookupModel vehicleType;
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
  @JsonKey(name: 'brands')
  final AddVehicleLookupModel vehicleBrand;
  @override
  @JsonKey(name: 'car_models')
  final AddVehicleLookupModel vehicleModel;
  @override
  @JsonKey(name: 'transmission_types')
  final AddVehicleLookupModel vehicleTransmissionType;
  @override
  @JsonKey(name: 'bodywork_types')
  final AddVehicleLookupModel vehcileBodyWorkType;
  @override
  @JsonKey(name: 'fuel_types')
  final AddVehicleLookupModel fuelType;
  @override
  @JsonKey(name: 'year_from')
  final String yearFrom;
  @override
  @JsonKey(name: 'year_to')
  final String yeraTo;
  @override
  @JsonKey(name: 'price_from')
  final String priceFrom;
  @override
  @JsonKey(name: 'price_to')
  final String priceTo;
  @override
  @JsonKey(name: 'mileage_from')
  final String mileageFrom;
  @override
  @JsonKey(name: 'mileage_to')
  final String mileageTo;

  @override
  String toString() {
    return 'SearchModel(id: $id, vehicleType: $vehicleType, dateFrom: $dateFrom, dateTo: $dateTo, searchName: $searchName, vehicleBrand: $vehicleBrand, vehicleModel: $vehicleModel, vehicleTransmissionType: $vehicleTransmissionType, vehcileBodyWorkType: $vehcileBodyWorkType, fuelType: $fuelType, yearFrom: $yearFrom, yeraTo: $yeraTo, priceFrom: $priceFrom, priceTo: $priceTo, mileageFrom: $mileageFrom, mileageTo: $mileageTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dateFrom, dateFrom)) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.searchName, searchName) ||
                const DeepCollectionEquality()
                    .equals(other.searchName, searchName)) &&
            (identical(other.vehicleBrand, vehicleBrand) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleBrand, vehicleBrand)) &&
            (identical(other.vehicleModel, vehicleModel) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleModel, vehicleModel)) &&
            (identical(
                    other.vehicleTransmissionType, vehicleTransmissionType) ||
                const DeepCollectionEquality().equals(
                    other.vehicleTransmissionType, vehicleTransmissionType)) &&
            (identical(other.vehcileBodyWorkType, vehcileBodyWorkType) ||
                const DeepCollectionEquality()
                    .equals(other.vehcileBodyWorkType, vehcileBodyWorkType)) &&
            (identical(other.fuelType, fuelType) ||
                const DeepCollectionEquality()
                    .equals(other.fuelType, fuelType)) &&
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
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(searchName) ^
      const DeepCollectionEquality().hash(vehicleBrand) ^
      const DeepCollectionEquality().hash(vehicleModel) ^
      const DeepCollectionEquality().hash(vehicleTransmissionType) ^
      const DeepCollectionEquality().hash(vehcileBodyWorkType) ^
      const DeepCollectionEquality().hash(fuelType) ^
      const DeepCollectionEquality().hash(yearFrom) ^
      const DeepCollectionEquality().hash(yeraTo) ^
      const DeepCollectionEquality().hash(priceFrom) ^
      const DeepCollectionEquality().hash(priceTo) ^
      const DeepCollectionEquality().hash(mileageFrom) ^
      const DeepCollectionEquality().hash(mileageTo);

  @override
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      __$SearchModelCopyWithImpl<_SearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchModelToJson(this);
  }
}

abstract class _SearchModel extends SearchModel {
  const _SearchModel._() : super._();
  const factory _SearchModel(
      {@required
      @JsonKey(name: 'id')
          int id,
      @required
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @required
      @JsonKey(name: 'search_from')
          String dateFrom,
      @required
      @JsonKey(name: 'search_to')
          String dateTo,
      @required
      @JsonKey(name: 'search_name')
          String searchName,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrand,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @required
      @JsonKey(name: 'transmission_types')
          AddVehicleLookupModel vehicleTransmissionType,
      @required
      @JsonKey(name: 'bodywork_types')
          AddVehicleLookupModel vehcileBodyWorkType,
      @required
      @JsonKey(name: 'fuel_types')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'year_from')
          String yearFrom,
      @JsonKey(name: 'year_to')
          String yeraTo,
      @required
      @JsonKey(name: 'price_from')
          String priceFrom,
      @required
      @JsonKey(name: 'price_to')
          String priceTo,
      @JsonKey(name: 'mileage_from')
          String mileageFrom,
      @JsonKey(name: 'mileage_to')
          String mileageTo}) = _$_SearchModel;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$_SearchModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
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
  @JsonKey(name: 'brands')
  AddVehicleLookupModel get vehicleBrand;
  @override
  @JsonKey(name: 'car_models')
  AddVehicleLookupModel get vehicleModel;
  @override
  @JsonKey(name: 'transmission_types')
  AddVehicleLookupModel get vehicleTransmissionType;
  @override
  @JsonKey(name: 'bodywork_types')
  AddVehicleLookupModel get vehcileBodyWorkType;
  @override
  @JsonKey(name: 'fuel_types')
  AddVehicleLookupModel get fuelType;
  @override
  @JsonKey(name: 'year_from')
  String get yearFrom;
  @override
  @JsonKey(name: 'year_to')
  String get yeraTo;
  @override
  @JsonKey(name: 'price_from')
  String get priceFrom;
  @override
  @JsonKey(name: 'price_to')
  String get priceTo;
  @override
  @JsonKey(name: 'mileage_from')
  String get mileageFrom;
  @override
  @JsonKey(name: 'mileage_to')
  String get mileageTo;
  @override
  _$SearchModelCopyWith<_SearchModel> get copyWith;
}
