// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lead_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LeadFilterModel _$LeadFilterModelFromJson(Map<String, dynamic> json) {
  return _LeadFilterModel.fromJson(json);
}

/// @nodoc
class _$LeadFilterModelTearOff {
  const _$LeadFilterModelTearOff();

// ignore: unused_element
  _LeadFilterModel call(
      {@required @JsonKey(name: 'id') int id,
      @JsonKey(name: 'vehicle_types') AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands') AddVehicleLookupModel brand,
      @JsonKey(name: 'car_models') AddVehicleLookupModel carModel,
      @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType}) {
    return _LeadFilterModel(
      id: id,
      vehicleType: vehicleType,
      brand: brand,
      carModel: carModel,
      fuelType: fuelType,
    );
  }

// ignore: unused_element
  LeadFilterModel fromJson(Map<String, Object> json) {
    return LeadFilterModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LeadFilterModel = _$LeadFilterModelTearOff();

/// @nodoc
mixin _$LeadFilterModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
  @JsonKey(name: 'brands')
  AddVehicleLookupModel get brand;
  @JsonKey(name: 'car_models')
  AddVehicleLookupModel get carModel;
  @JsonKey(name: 'fuel_type')
  AddVehicleLookupModel get fuelType;

  Map<String, dynamic> toJson();
  $LeadFilterModelCopyWith<LeadFilterModel> get copyWith;
}

/// @nodoc
abstract class $LeadFilterModelCopyWith<$Res> {
  factory $LeadFilterModelCopyWith(
          LeadFilterModel value, $Res Function(LeadFilterModel) then) =
      _$LeadFilterModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'vehicle_types') AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands') AddVehicleLookupModel brand,
      @JsonKey(name: 'car_models') AddVehicleLookupModel carModel,
      @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType});

  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  $AddVehicleLookupModelCopyWith<$Res> get brand;
  $AddVehicleLookupModelCopyWith<$Res> get carModel;
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
}

/// @nodoc
class _$LeadFilterModelCopyWithImpl<$Res>
    implements $LeadFilterModelCopyWith<$Res> {
  _$LeadFilterModelCopyWithImpl(this._value, this._then);

  final LeadFilterModel _value;
  // ignore: unused_field
  final $Res Function(LeadFilterModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleType = freezed,
    Object brand = freezed,
    Object carModel = freezed,
    Object fuelType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      brand: brand == freezed ? _value.brand : brand as AddVehicleLookupModel,
      carModel: carModel == freezed
          ? _value.carModel
          : carModel as AddVehicleLookupModel,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
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
  $AddVehicleLookupModelCopyWith<$Res> get brand {
    if (_value.brand == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get carModel {
    if (_value.carModel == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.carModel, (value) {
      return _then(_value.copyWith(carModel: value));
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
abstract class _$LeadFilterModelCopyWith<$Res>
    implements $LeadFilterModelCopyWith<$Res> {
  factory _$LeadFilterModelCopyWith(
          _LeadFilterModel value, $Res Function(_LeadFilterModel) then) =
      __$LeadFilterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'vehicle_types') AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands') AddVehicleLookupModel brand,
      @JsonKey(name: 'car_models') AddVehicleLookupModel carModel,
      @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType});

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get brand;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get carModel;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
}

/// @nodoc
class __$LeadFilterModelCopyWithImpl<$Res>
    extends _$LeadFilterModelCopyWithImpl<$Res>
    implements _$LeadFilterModelCopyWith<$Res> {
  __$LeadFilterModelCopyWithImpl(
      _LeadFilterModel _value, $Res Function(_LeadFilterModel) _then)
      : super(_value, (v) => _then(v as _LeadFilterModel));

  @override
  _LeadFilterModel get _value => super._value as _LeadFilterModel;

  @override
  $Res call({
    Object id = freezed,
    Object vehicleType = freezed,
    Object brand = freezed,
    Object carModel = freezed,
    Object fuelType = freezed,
  }) {
    return _then(_LeadFilterModel(
      id: id == freezed ? _value.id : id as int,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      brand: brand == freezed ? _value.brand : brand as AddVehicleLookupModel,
      carModel: carModel == freezed
          ? _value.carModel
          : carModel as AddVehicleLookupModel,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LeadFilterModel extends _LeadFilterModel {
  const _$_LeadFilterModel(
      {@required @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'vehicle_types') this.vehicleType,
      @JsonKey(name: 'brands') this.brand,
      @JsonKey(name: 'car_models') this.carModel,
      @JsonKey(name: 'fuel_type') this.fuelType})
      : assert(id != null),
        super._();

  factory _$_LeadFilterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LeadFilterModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'vehicle_types')
  final AddVehicleLookupModel vehicleType;
  @override
  @JsonKey(name: 'brands')
  final AddVehicleLookupModel brand;
  @override
  @JsonKey(name: 'car_models')
  final AddVehicleLookupModel carModel;
  @override
  @JsonKey(name: 'fuel_type')
  final AddVehicleLookupModel fuelType;

  @override
  String toString() {
    return 'LeadFilterModel(id: $id, vehicleType: $vehicleType, brand: $brand, carModel: $carModel, fuelType: $fuelType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeadFilterModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.carModel, carModel) ||
                const DeepCollectionEquality()
                    .equals(other.carModel, carModel)) &&
            (identical(other.fuelType, fuelType) ||
                const DeepCollectionEquality()
                    .equals(other.fuelType, fuelType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(carModel) ^
      const DeepCollectionEquality().hash(fuelType);

  @override
  _$LeadFilterModelCopyWith<_LeadFilterModel> get copyWith =>
      __$LeadFilterModelCopyWithImpl<_LeadFilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LeadFilterModelToJson(this);
  }
}

abstract class _LeadFilterModel extends LeadFilterModel {
  const _LeadFilterModel._() : super._();
  const factory _LeadFilterModel(
          {@required @JsonKey(name: 'id') int id,
          @JsonKey(name: 'vehicle_types') AddVehicleLookupModel vehicleType,
          @JsonKey(name: 'brands') AddVehicleLookupModel brand,
          @JsonKey(name: 'car_models') AddVehicleLookupModel carModel,
          @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType}) =
      _$_LeadFilterModel;

  factory _LeadFilterModel.fromJson(Map<String, dynamic> json) =
      _$_LeadFilterModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
  @override
  @JsonKey(name: 'brands')
  AddVehicleLookupModel get brand;
  @override
  @JsonKey(name: 'car_models')
  AddVehicleLookupModel get carModel;
  @override
  @JsonKey(name: 'fuel_type')
  AddVehicleLookupModel get fuelType;
  @override
  _$LeadFilterModelCopyWith<_LeadFilterModel> get copyWith;
}
