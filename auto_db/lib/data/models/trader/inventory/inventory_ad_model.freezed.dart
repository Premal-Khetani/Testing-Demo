// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'inventory_ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InventoryAdModel _$InventoryAdModelFromJson(Map<String, dynamic> json) {
  return _InventoryAdModel.fromJson(json);
}

/// @nodoc
class _$InventoryAdModelTearOff {
  const _$InventoryAdModelTearOff();

// ignore: unused_element
  _InventoryAdModel call(
      {@required @JsonKey(name: 'id') int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String stockNumber,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'photos') String photo,
      @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
      @JsonKey(name: 'reserved') int reserved}) {
    return _InventoryAdModel(
      id: id,
      licensePlate: licensePlate,
      stockNumber: stockNumber,
      price: price,
      photo: photo,
      priceType: priceType,
      reserved: reserved,
    );
  }

// ignore: unused_element
  InventoryAdModel fromJson(Map<String, Object> json) {
    return InventoryAdModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InventoryAdModel = _$InventoryAdModelTearOff();

/// @nodoc
mixin _$InventoryAdModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @JsonKey(name: 'name')
  String get stockNumber;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'photos')
  String get photo;
  @JsonKey(name: 'price_type')
  AddVehicleLookupModel get priceType;
  @JsonKey(name: 'reserved')
  int get reserved;

  Map<String, dynamic> toJson();
  $InventoryAdModelCopyWith<InventoryAdModel> get copyWith;
}

/// @nodoc
abstract class $InventoryAdModelCopyWith<$Res> {
  factory $InventoryAdModelCopyWith(
          InventoryAdModel value, $Res Function(InventoryAdModel) then) =
      _$InventoryAdModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String stockNumber,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'photos') String photo,
      @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
      @JsonKey(name: 'reserved') int reserved});

  $AddVehicleLookupModelCopyWith<$Res> get priceType;
}

/// @nodoc
class _$InventoryAdModelCopyWithImpl<$Res>
    implements $InventoryAdModelCopyWith<$Res> {
  _$InventoryAdModelCopyWithImpl(this._value, this._then);

  final InventoryAdModel _value;
  // ignore: unused_field
  final $Res Function(InventoryAdModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object licensePlate = freezed,
    Object stockNumber = freezed,
    Object price = freezed,
    Object photo = freezed,
    Object priceType = freezed,
    Object reserved = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      stockNumber:
          stockNumber == freezed ? _value.stockNumber : stockNumber as String,
      price: price == freezed ? _value.price : price as String,
      photo: photo == freezed ? _value.photo : photo as String,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType as AddVehicleLookupModel,
      reserved: reserved == freezed ? _value.reserved : reserved as int,
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
}

/// @nodoc
abstract class _$InventoryAdModelCopyWith<$Res>
    implements $InventoryAdModelCopyWith<$Res> {
  factory _$InventoryAdModelCopyWith(
          _InventoryAdModel value, $Res Function(_InventoryAdModel) then) =
      __$InventoryAdModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String stockNumber,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'photos') String photo,
      @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
      @JsonKey(name: 'reserved') int reserved});

  @override
  $AddVehicleLookupModelCopyWith<$Res> get priceType;
}

/// @nodoc
class __$InventoryAdModelCopyWithImpl<$Res>
    extends _$InventoryAdModelCopyWithImpl<$Res>
    implements _$InventoryAdModelCopyWith<$Res> {
  __$InventoryAdModelCopyWithImpl(
      _InventoryAdModel _value, $Res Function(_InventoryAdModel) _then)
      : super(_value, (v) => _then(v as _InventoryAdModel));

  @override
  _InventoryAdModel get _value => super._value as _InventoryAdModel;

  @override
  $Res call({
    Object id = freezed,
    Object licensePlate = freezed,
    Object stockNumber = freezed,
    Object price = freezed,
    Object photo = freezed,
    Object priceType = freezed,
    Object reserved = freezed,
  }) {
    return _then(_InventoryAdModel(
      id: id == freezed ? _value.id : id as int,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      stockNumber:
          stockNumber == freezed ? _value.stockNumber : stockNumber as String,
      price: price == freezed ? _value.price : price as String,
      photo: photo == freezed ? _value.photo : photo as String,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType as AddVehicleLookupModel,
      reserved: reserved == freezed ? _value.reserved : reserved as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InventoryAdModel extends _InventoryAdModel {
  const _$_InventoryAdModel(
      {@required @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'licence_plate') this.licensePlate,
      @JsonKey(name: 'name') this.stockNumber,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'photos') this.photo,
      @JsonKey(name: 'price_type') this.priceType,
      @JsonKey(name: 'reserved') this.reserved})
      : assert(id != null),
        super._();

  factory _$_InventoryAdModel.fromJson(Map<String, dynamic> json) =>
      _$_$_InventoryAdModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'licence_plate')
  final String licensePlate;
  @override
  @JsonKey(name: 'name')
  final String stockNumber;
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
  @JsonKey(name: 'reserved')
  final int reserved;

  @override
  String toString() {
    return 'InventoryAdModel(id: $id, licensePlate: $licensePlate, stockNumber: $stockNumber, price: $price, photo: $photo, priceType: $priceType, reserved: $reserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryAdModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
            (identical(other.stockNumber, stockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.stockNumber, stockNumber)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.priceType, priceType) ||
                const DeepCollectionEquality()
                    .equals(other.priceType, priceType)) &&
            (identical(other.reserved, reserved) ||
                const DeepCollectionEquality()
                    .equals(other.reserved, reserved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(stockNumber) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(priceType) ^
      const DeepCollectionEquality().hash(reserved);

  @override
  _$InventoryAdModelCopyWith<_InventoryAdModel> get copyWith =>
      __$InventoryAdModelCopyWithImpl<_InventoryAdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InventoryAdModelToJson(this);
  }
}

abstract class _InventoryAdModel extends InventoryAdModel {
  const _InventoryAdModel._() : super._();
  const factory _InventoryAdModel(
      {@required @JsonKey(name: 'id') int id,
      @JsonKey(name: 'licence_plate') String licensePlate,
      @JsonKey(name: 'name') String stockNumber,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'photos') String photo,
      @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
      @JsonKey(name: 'reserved') int reserved}) = _$_InventoryAdModel;

  factory _InventoryAdModel.fromJson(Map<String, dynamic> json) =
      _$_InventoryAdModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @override
  @JsonKey(name: 'name')
  String get stockNumber;
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
  @JsonKey(name: 'reserved')
  int get reserved;
  @override
  _$InventoryAdModelCopyWith<_InventoryAdModel> get copyWith;
}
