// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'public_user_vehicle_ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PublicUserVehicleAdModel _$PublicUserVehicleAdModelFromJson(
    Map<String, dynamic> json) {
  return _PublicUserVehicleAdModel.fromJson(json);
}

/// @nodoc
class _$PublicUserVehicleAdModelTearOff {
  const _$PublicUserVehicleAdModelTearOff();

// ignore: unused_element
  _PublicUserVehicleAdModel call(
      {@required
      @JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'engine_power_kw')
          String kw,
      @JsonKey(name: 'engine_power_hp')
          String hp,
      @JsonKey(name: 'traderLogo')
          String traderLogo,
      @JsonKey(name: 'users')
          UserInfoModel user}) {
    return _PublicUserVehicleAdModel(
      id: id,
      title: title,
      price: price,
      photo: photo,
      priceType: priceType,
      year: year,
      mileage: mileage,
      mileageUnit: mileageUnit,
      fuelType: fuelType,
      engineSize: engineSize,
      vehicleTransmissionType: vehicleTransmissionType,
      kw: kw,
      hp: hp,
      traderLogo: traderLogo,
      user: user,
    );
  }

// ignore: unused_element
  PublicUserVehicleAdModel fromJson(Map<String, Object> json) {
    return PublicUserVehicleAdModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PublicUserVehicleAdModel = _$PublicUserVehicleAdModelTearOff();

/// @nodoc
mixin _$PublicUserVehicleAdModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'photos')
  String get photo;
  @JsonKey(name: 'price_type')
  AddVehicleLookupModel get priceType;
  @JsonKey(name: 'year')
  int get year;
  @JsonKey(name: 'mileage')
  int get mileage;
  @JsonKey(name: 'mileage_options')
  String get mileageUnit;
  @JsonKey(name: 'fuel_type')
  AddVehicleLookupModel get fuelType;
  @JsonKey(name: 'engine_size')
  int get engineSize;
  @JsonKey(name: 'transmission_type')
  AddVehicleLookupModel get vehicleTransmissionType;
  @JsonKey(name: 'engine_power_kw')
  String get kw;
  @JsonKey(name: 'engine_power_hp')
  String get hp;
  @JsonKey(name: 'traderLogo')
  String get traderLogo;
  @JsonKey(name: 'users')
  UserInfoModel get user;

  Map<String, dynamic> toJson();
  $PublicUserVehicleAdModelCopyWith<PublicUserVehicleAdModel> get copyWith;
}

/// @nodoc
abstract class $PublicUserVehicleAdModelCopyWith<$Res> {
  factory $PublicUserVehicleAdModelCopyWith(PublicUserVehicleAdModel value,
          $Res Function(PublicUserVehicleAdModel) then) =
      _$PublicUserVehicleAdModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'engine_power_kw')
          String kw,
      @JsonKey(name: 'engine_power_hp')
          String hp,
      @JsonKey(name: 'traderLogo')
          String traderLogo,
      @JsonKey(name: 'users')
          UserInfoModel user});

  $AddVehicleLookupModelCopyWith<$Res> get priceType;
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  $UserInfoModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PublicUserVehicleAdModelCopyWithImpl<$Res>
    implements $PublicUserVehicleAdModelCopyWith<$Res> {
  _$PublicUserVehicleAdModelCopyWithImpl(this._value, this._then);

  final PublicUserVehicleAdModel _value;
  // ignore: unused_field
  final $Res Function(PublicUserVehicleAdModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object price = freezed,
    Object photo = freezed,
    Object priceType = freezed,
    Object year = freezed,
    Object mileage = freezed,
    Object mileageUnit = freezed,
    Object fuelType = freezed,
    Object engineSize = freezed,
    Object vehicleTransmissionType = freezed,
    Object kw = freezed,
    Object hp = freezed,
    Object traderLogo = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as String,
      photo: photo == freezed ? _value.photo : photo as String,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType as AddVehicleLookupModel,
      year: year == freezed ? _value.year : year as int,
      mileage: mileage == freezed ? _value.mileage : mileage as int,
      mileageUnit:
          mileageUnit == freezed ? _value.mileageUnit : mileageUnit as String,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
      engineSize: engineSize == freezed ? _value.engineSize : engineSize as int,
      vehicleTransmissionType: vehicleTransmissionType == freezed
          ? _value.vehicleTransmissionType
          : vehicleTransmissionType as AddVehicleLookupModel,
      kw: kw == freezed ? _value.kw : kw as String,
      hp: hp == freezed ? _value.hp : hp as String,
      traderLogo:
          traderLogo == freezed ? _value.traderLogo : traderLogo as String,
      user: user == freezed ? _value.user : user as UserInfoModel,
    ));
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get priceType {
    if (_value.priceType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.priceType, (value) {
      return _then(_value.copyWith(priceType: value));
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
  $UserInfoModelCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserInfoModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$PublicUserVehicleAdModelCopyWith<$Res>
    implements $PublicUserVehicleAdModelCopyWith<$Res> {
  factory _$PublicUserVehicleAdModelCopyWith(_PublicUserVehicleAdModel value,
          $Res Function(_PublicUserVehicleAdModel) then) =
      __$PublicUserVehicleAdModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'engine_power_kw')
          String kw,
      @JsonKey(name: 'engine_power_hp')
          String hp,
      @JsonKey(name: 'traderLogo')
          String traderLogo,
      @JsonKey(name: 'users')
          UserInfoModel user});

  @override
  $AddVehicleLookupModelCopyWith<$Res> get priceType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  @override
  $UserInfoModelCopyWith<$Res> get user;
}

/// @nodoc
class __$PublicUserVehicleAdModelCopyWithImpl<$Res>
    extends _$PublicUserVehicleAdModelCopyWithImpl<$Res>
    implements _$PublicUserVehicleAdModelCopyWith<$Res> {
  __$PublicUserVehicleAdModelCopyWithImpl(_PublicUserVehicleAdModel _value,
      $Res Function(_PublicUserVehicleAdModel) _then)
      : super(_value, (v) => _then(v as _PublicUserVehicleAdModel));

  @override
  _PublicUserVehicleAdModel get _value =>
      super._value as _PublicUserVehicleAdModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object price = freezed,
    Object photo = freezed,
    Object priceType = freezed,
    Object year = freezed,
    Object mileage = freezed,
    Object mileageUnit = freezed,
    Object fuelType = freezed,
    Object engineSize = freezed,
    Object vehicleTransmissionType = freezed,
    Object kw = freezed,
    Object hp = freezed,
    Object traderLogo = freezed,
    Object user = freezed,
  }) {
    return _then(_PublicUserVehicleAdModel(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as String,
      photo: photo == freezed ? _value.photo : photo as String,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType as AddVehicleLookupModel,
      year: year == freezed ? _value.year : year as int,
      mileage: mileage == freezed ? _value.mileage : mileage as int,
      mileageUnit:
          mileageUnit == freezed ? _value.mileageUnit : mileageUnit as String,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
      engineSize: engineSize == freezed ? _value.engineSize : engineSize as int,
      vehicleTransmissionType: vehicleTransmissionType == freezed
          ? _value.vehicleTransmissionType
          : vehicleTransmissionType as AddVehicleLookupModel,
      kw: kw == freezed ? _value.kw : kw as String,
      hp: hp == freezed ? _value.hp : hp as String,
      traderLogo:
          traderLogo == freezed ? _value.traderLogo : traderLogo as String,
      user: user == freezed ? _value.user : user as UserInfoModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PublicUserVehicleAdModel extends _PublicUserVehicleAdModel {
  const _$_PublicUserVehicleAdModel(
      {@required @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'photos') this.photo,
      @JsonKey(name: 'price_type') this.priceType,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'mileage') this.mileage,
      @JsonKey(name: 'mileage_options') this.mileageUnit,
      @JsonKey(name: 'fuel_type') this.fuelType,
      @JsonKey(name: 'engine_size') this.engineSize,
      @JsonKey(name: 'transmission_type') this.vehicleTransmissionType,
      @JsonKey(name: 'engine_power_kw') this.kw,
      @JsonKey(name: 'engine_power_hp') this.hp,
      @JsonKey(name: 'traderLogo') this.traderLogo,
      @JsonKey(name: 'users') this.user})
      : assert(id != null),
        super._();

  factory _$_PublicUserVehicleAdModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PublicUserVehicleAdModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'photos')
  final String photo;
  @override
  @JsonKey(name: 'price_type')
  final AddVehicleLookupModel priceType;
  @override
  @JsonKey(name: 'year')
  final int year;
  @override
  @JsonKey(name: 'mileage')
  final int mileage;
  @override
  @JsonKey(name: 'mileage_options')
  final String mileageUnit;
  @override
  @JsonKey(name: 'fuel_type')
  final AddVehicleLookupModel fuelType;
  @override
  @JsonKey(name: 'engine_size')
  final int engineSize;
  @override
  @JsonKey(name: 'transmission_type')
  final AddVehicleLookupModel vehicleTransmissionType;
  @override
  @JsonKey(name: 'engine_power_kw')
  final String kw;
  @override
  @JsonKey(name: 'engine_power_hp')
  final String hp;
  @override
  @JsonKey(name: 'traderLogo')
  final String traderLogo;
  @override
  @JsonKey(name: 'users')
  final UserInfoModel user;

  @override
  String toString() {
    return 'PublicUserVehicleAdModel(id: $id, title: $title, price: $price, photo: $photo, priceType: $priceType, year: $year, mileage: $mileage, mileageUnit: $mileageUnit, fuelType: $fuelType, engineSize: $engineSize, vehicleTransmissionType: $vehicleTransmissionType, kw: $kw, hp: $hp, traderLogo: $traderLogo, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublicUserVehicleAdModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.priceType, priceType) ||
                const DeepCollectionEquality()
                    .equals(other.priceType, priceType)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.mileageUnit, mileageUnit) ||
                const DeepCollectionEquality()
                    .equals(other.mileageUnit, mileageUnit)) &&
            (identical(other.fuelType, fuelType) ||
                const DeepCollectionEquality()
                    .equals(other.fuelType, fuelType)) &&
            (identical(other.engineSize, engineSize) ||
                const DeepCollectionEquality()
                    .equals(other.engineSize, engineSize)) &&
            (identical(
                    other.vehicleTransmissionType, vehicleTransmissionType) ||
                const DeepCollectionEquality().equals(
                    other.vehicleTransmissionType, vehicleTransmissionType)) &&
            (identical(other.kw, kw) ||
                const DeepCollectionEquality().equals(other.kw, kw)) &&
            (identical(other.hp, hp) ||
                const DeepCollectionEquality().equals(other.hp, hp)) &&
            (identical(other.traderLogo, traderLogo) ||
                const DeepCollectionEquality()
                    .equals(other.traderLogo, traderLogo)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(priceType) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(mileageUnit) ^
      const DeepCollectionEquality().hash(fuelType) ^
      const DeepCollectionEquality().hash(engineSize) ^
      const DeepCollectionEquality().hash(vehicleTransmissionType) ^
      const DeepCollectionEquality().hash(kw) ^
      const DeepCollectionEquality().hash(hp) ^
      const DeepCollectionEquality().hash(traderLogo) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$PublicUserVehicleAdModelCopyWith<_PublicUserVehicleAdModel> get copyWith =>
      __$PublicUserVehicleAdModelCopyWithImpl<_PublicUserVehicleAdModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublicUserVehicleAdModelToJson(this);
  }
}

abstract class _PublicUserVehicleAdModel extends PublicUserVehicleAdModel {
  const _PublicUserVehicleAdModel._() : super._();
  const factory _PublicUserVehicleAdModel(
      {@required
      @JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'engine_power_kw')
          String kw,
      @JsonKey(name: 'engine_power_hp')
          String hp,
      @JsonKey(name: 'traderLogo')
          String traderLogo,
      @JsonKey(name: 'users')
          UserInfoModel user}) = _$_PublicUserVehicleAdModel;

  factory _PublicUserVehicleAdModel.fromJson(Map<String, dynamic> json) =
      _$_PublicUserVehicleAdModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'photos')
  String get photo;
  @override
  @JsonKey(name: 'price_type')
  AddVehicleLookupModel get priceType;
  @override
  @JsonKey(name: 'year')
  int get year;
  @override
  @JsonKey(name: 'mileage')
  int get mileage;
  @override
  @JsonKey(name: 'mileage_options')
  String get mileageUnit;
  @override
  @JsonKey(name: 'fuel_type')
  AddVehicleLookupModel get fuelType;
  @override
  @JsonKey(name: 'engine_size')
  int get engineSize;
  @override
  @JsonKey(name: 'transmission_type')
  AddVehicleLookupModel get vehicleTransmissionType;
  @override
  @JsonKey(name: 'engine_power_kw')
  String get kw;
  @override
  @JsonKey(name: 'engine_power_hp')
  String get hp;
  @override
  @JsonKey(name: 'traderLogo')
  String get traderLogo;
  @override
  @JsonKey(name: 'users')
  UserInfoModel get user;
  @override
  _$PublicUserVehicleAdModelCopyWith<_PublicUserVehicleAdModel> get copyWith;
}

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
class _$UserInfoModelTearOff {
  const _$UserInfoModelTearOff();

// ignore: unused_element
  _UserInfoModel call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'account_type') String accountType}) {
    return _UserInfoModel(
      id: id,
      accountType: accountType,
    );
  }

// ignore: unused_element
  UserInfoModel fromJson(Map<String, Object> json) {
    return UserInfoModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserInfoModel = _$UserInfoModelTearOff();

/// @nodoc
mixin _$UserInfoModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'account_type')
  String get accountType;

  Map<String, dynamic> toJson();
  $UserInfoModelCopyWith<UserInfoModel> get copyWith;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'account_type') String accountType});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  final UserInfoModel _value;
  // ignore: unused_field
  final $Res Function(UserInfoModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object accountType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoModelCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$UserInfoModelCopyWith(
          _UserInfoModel value, $Res Function(_UserInfoModel) then) =
      __$UserInfoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'account_type') String accountType});
}

/// @nodoc
class __$UserInfoModelCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res>
    implements _$UserInfoModelCopyWith<$Res> {
  __$UserInfoModelCopyWithImpl(
      _UserInfoModel _value, $Res Function(_UserInfoModel) _then)
      : super(_value, (v) => _then(v as _UserInfoModel));

  @override
  _UserInfoModel get _value => super._value as _UserInfoModel;

  @override
  $Res call({
    Object id = freezed,
    Object accountType = freezed,
  }) {
    return _then(_UserInfoModel(
      id: id == freezed ? _value.id : id as int,
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserInfoModel extends _UserInfoModel {
  const _$_UserInfoModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'account_type') this.accountType})
      : super._();

  factory _$_UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserInfoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'account_type')
  final String accountType;

  @override
  String toString() {
    return 'UserInfoModel(id: $id, accountType: $accountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserInfoModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accountType);

  @override
  _$UserInfoModelCopyWith<_UserInfoModel> get copyWith =>
      __$UserInfoModelCopyWithImpl<_UserInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserInfoModelToJson(this);
  }
}

abstract class _UserInfoModel extends UserInfoModel {
  const _UserInfoModel._() : super._();
  const factory _UserInfoModel(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'account_type') String accountType}) = _$_UserInfoModel;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$_UserInfoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'account_type')
  String get accountType;
  @override
  _$UserInfoModelCopyWith<_UserInfoModel> get copyWith;
}
