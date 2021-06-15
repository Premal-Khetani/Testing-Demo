// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lead_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LeadModel _$LeadModelFromJson(Map<String, dynamic> json) {
  return _LeadModel.fromJson(json);
}

/// @nodoc
class _$LeadModelTearOff {
  const _$LeadModelTearOff();

// ignore: unused_element
  _LeadModel call(
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
          String mileageTo,
      @JsonKey(name: 'leads_contacts')
          List<LeadContactModel> leadContacts}) {
    return _LeadModel(
      id: id,
      vehicleType: vehicleType,
      dateFrom: dateFrom,
      dateTo: dateTo,
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
      leadContacts: leadContacts,
    );
  }

// ignore: unused_element
  LeadModel fromJson(Map<String, Object> json) {
    return LeadModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LeadModel = _$LeadModelTearOff();

/// @nodoc
mixin _$LeadModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
  @JsonKey(name: 'search_from')
  String get dateFrom;
  @JsonKey(name: 'search_to')
  String get dateTo;
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
  @JsonKey(name: 'leads_contacts')
  List<LeadContactModel> get leadContacts;

  Map<String, dynamic> toJson();
  $LeadModelCopyWith<LeadModel> get copyWith;
}

/// @nodoc
abstract class $LeadModelCopyWith<$Res> {
  factory $LeadModelCopyWith(LeadModel value, $Res Function(LeadModel) then) =
      _$LeadModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'search_from')
          String dateFrom,
      @JsonKey(name: 'search_to')
          String dateTo,
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
          String mileageTo,
      @JsonKey(name: 'leads_contacts')
          List<LeadContactModel> leadContacts});

  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrand;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  $AddVehicleLookupModelCopyWith<$Res> get vehcileBodyWorkType;
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
}

/// @nodoc
class _$LeadModelCopyWithImpl<$Res> implements $LeadModelCopyWith<$Res> {
  _$LeadModelCopyWithImpl(this._value, this._then);

  final LeadModel _value;
  // ignore: unused_field
  final $Res Function(LeadModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleType = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
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
    Object leadContacts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as String,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as String,
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
      leadContacts: leadContacts == freezed
          ? _value.leadContacts
          : leadContacts as List<LeadContactModel>,
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
abstract class _$LeadModelCopyWith<$Res> implements $LeadModelCopyWith<$Res> {
  factory _$LeadModelCopyWith(
          _LeadModel value, $Res Function(_LeadModel) then) =
      __$LeadModelCopyWithImpl<$Res>;
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
          String mileageTo,
      @JsonKey(name: 'leads_contacts')
          List<LeadContactModel> leadContacts});

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
class __$LeadModelCopyWithImpl<$Res> extends _$LeadModelCopyWithImpl<$Res>
    implements _$LeadModelCopyWith<$Res> {
  __$LeadModelCopyWithImpl(_LeadModel _value, $Res Function(_LeadModel) _then)
      : super(_value, (v) => _then(v as _LeadModel));

  @override
  _LeadModel get _value => super._value as _LeadModel;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleType = freezed,
    Object dateFrom = freezed,
    Object dateTo = freezed,
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
    Object leadContacts = freezed,
  }) {
    return _then(_LeadModel(
      id: id == freezed ? _value.id : id as int,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      dateFrom: dateFrom == freezed ? _value.dateFrom : dateFrom as String,
      dateTo: dateTo == freezed ? _value.dateTo : dateTo as String,
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
      leadContacts: leadContacts == freezed
          ? _value.leadContacts
          : leadContacts as List<LeadContactModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LeadModel extends _LeadModel {
  const _$_LeadModel(
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
          this.mileageTo,
      @JsonKey(name: 'leads_contacts')
          this.leadContacts})
      : assert(id != null),
        assert(vehicleType != null),
        assert(dateFrom != null),
        assert(dateTo != null),
        assert(vehicleTransmissionType != null),
        assert(vehcileBodyWorkType != null),
        assert(fuelType != null),
        assert(priceFrom != null),
        assert(priceTo != null),
        super._();

  factory _$_LeadModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LeadModelFromJson(json);

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
  @JsonKey(name: 'leads_contacts')
  final List<LeadContactModel> leadContacts;

  @override
  String toString() {
    return 'LeadModel(id: $id, vehicleType: $vehicleType, dateFrom: $dateFrom, dateTo: $dateTo, vehicleBrand: $vehicleBrand, vehicleModel: $vehicleModel, vehicleTransmissionType: $vehicleTransmissionType, vehcileBodyWorkType: $vehcileBodyWorkType, fuelType: $fuelType, yearFrom: $yearFrom, yeraTo: $yeraTo, priceFrom: $priceFrom, priceTo: $priceTo, mileageFrom: $mileageFrom, mileageTo: $mileageTo, leadContacts: $leadContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeadModel &&
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
                    .equals(other.mileageTo, mileageTo)) &&
            (identical(other.leadContacts, leadContacts) ||
                const DeepCollectionEquality()
                    .equals(other.leadContacts, leadContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
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
      const DeepCollectionEquality().hash(mileageTo) ^
      const DeepCollectionEquality().hash(leadContacts);

  @override
  _$LeadModelCopyWith<_LeadModel> get copyWith =>
      __$LeadModelCopyWithImpl<_LeadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LeadModelToJson(this);
  }
}

abstract class _LeadModel extends LeadModel {
  const _LeadModel._() : super._();
  const factory _LeadModel(
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
          String mileageTo,
      @JsonKey(name: 'leads_contacts')
          List<LeadContactModel> leadContacts}) = _$_LeadModel;

  factory _LeadModel.fromJson(Map<String, dynamic> json) =
      _$_LeadModel.fromJson;

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
  @JsonKey(name: 'leads_contacts')
  List<LeadContactModel> get leadContacts;
  @override
  _$LeadModelCopyWith<_LeadModel> get copyWith;
}

LeadContactModel _$LeadContactModelFromJson(Map<String, dynamic> json) {
  return _LeadContactModel.fromJson(json);
}

/// @nodoc
class _$LeadContactModelTearOff {
  const _$LeadContactModelTearOff();

// ignore: unused_element
  _LeadContactModel call(
      {@required @JsonKey(name: 'id') int id,
      @JsonKey(name: 'subject') String subject,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'trader_search_id') int traderSearchId,
      @JsonKey(name: 'created_at') String createdAt}) {
    return _LeadContactModel(
      id: id,
      subject: subject,
      message: message,
      userId: userId,
      traderSearchId: traderSearchId,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  LeadContactModel fromJson(Map<String, Object> json) {
    return LeadContactModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LeadContactModel = _$LeadContactModelTearOff();

/// @nodoc
mixin _$LeadContactModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'subject')
  String get subject;
  @JsonKey(name: 'message')
  String get message;
  @JsonKey(name: 'user_id')
  int get userId;
  @JsonKey(name: 'trader_search_id')
  int get traderSearchId;
  @JsonKey(name: 'created_at')
  String get createdAt;

  Map<String, dynamic> toJson();
  $LeadContactModelCopyWith<LeadContactModel> get copyWith;
}

/// @nodoc
abstract class $LeadContactModelCopyWith<$Res> {
  factory $LeadContactModelCopyWith(
          LeadContactModel value, $Res Function(LeadContactModel) then) =
      _$LeadContactModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'subject') String subject,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'trader_search_id') int traderSearchId,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$LeadContactModelCopyWithImpl<$Res>
    implements $LeadContactModelCopyWith<$Res> {
  _$LeadContactModelCopyWithImpl(this._value, this._then);

  final LeadContactModel _value;
  // ignore: unused_field
  final $Res Function(LeadContactModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object subject = freezed,
    Object message = freezed,
    Object userId = freezed,
    Object traderSearchId = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      subject: subject == freezed ? _value.subject : subject as String,
      message: message == freezed ? _value.message : message as String,
      userId: userId == freezed ? _value.userId : userId as int,
      traderSearchId: traderSearchId == freezed
          ? _value.traderSearchId
          : traderSearchId as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

/// @nodoc
abstract class _$LeadContactModelCopyWith<$Res>
    implements $LeadContactModelCopyWith<$Res> {
  factory _$LeadContactModelCopyWith(
          _LeadContactModel value, $Res Function(_LeadContactModel) then) =
      __$LeadContactModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'subject') String subject,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'trader_search_id') int traderSearchId,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$LeadContactModelCopyWithImpl<$Res>
    extends _$LeadContactModelCopyWithImpl<$Res>
    implements _$LeadContactModelCopyWith<$Res> {
  __$LeadContactModelCopyWithImpl(
      _LeadContactModel _value, $Res Function(_LeadContactModel) _then)
      : super(_value, (v) => _then(v as _LeadContactModel));

  @override
  _LeadContactModel get _value => super._value as _LeadContactModel;

  @override
  $Res call({
    Object id = freezed,
    Object subject = freezed,
    Object message = freezed,
    Object userId = freezed,
    Object traderSearchId = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_LeadContactModel(
      id: id == freezed ? _value.id : id as int,
      subject: subject == freezed ? _value.subject : subject as String,
      message: message == freezed ? _value.message : message as String,
      userId: userId == freezed ? _value.userId : userId as int,
      traderSearchId: traderSearchId == freezed
          ? _value.traderSearchId
          : traderSearchId as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LeadContactModel extends _LeadContactModel {
  const _$_LeadContactModel(
      {@required @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'trader_search_id') this.traderSearchId,
      @JsonKey(name: 'created_at') this.createdAt})
      : assert(id != null),
        super._();

  factory _$_LeadContactModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LeadContactModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'subject')
  final String subject;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'trader_search_id')
  final int traderSearchId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'LeadContactModel(id: $id, subject: $subject, message: $message, userId: $userId, traderSearchId: $traderSearchId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeadContactModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.traderSearchId, traderSearchId) ||
                const DeepCollectionEquality()
                    .equals(other.traderSearchId, traderSearchId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(traderSearchId) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$LeadContactModelCopyWith<_LeadContactModel> get copyWith =>
      __$LeadContactModelCopyWithImpl<_LeadContactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LeadContactModelToJson(this);
  }
}

abstract class _LeadContactModel extends LeadContactModel {
  const _LeadContactModel._() : super._();
  const factory _LeadContactModel(
      {@required @JsonKey(name: 'id') int id,
      @JsonKey(name: 'subject') String subject,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'trader_search_id') int traderSearchId,
      @JsonKey(name: 'created_at') String createdAt}) = _$_LeadContactModel;

  factory _LeadContactModel.fromJson(Map<String, dynamic> json) =
      _$_LeadContactModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'subject')
  String get subject;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'trader_search_id')
  int get traderSearchId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  _$LeadContactModelCopyWith<_LeadContactModel> get copyWith;
}
