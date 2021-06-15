// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'inventory_ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InventoryAdTearOff {
  const _$InventoryAdTearOff();

// ignore: unused_element
  _InventoryAd call(
      {@required int id,
      String licensePlate,
      String stockNumber,
      String price,
      String photo,
      AddVehicleLookup priceType,
      bool reserved}) {
    return _InventoryAd(
      id: id,
      licensePlate: licensePlate,
      stockNumber: stockNumber,
      price: price,
      photo: photo,
      priceType: priceType,
      reserved: reserved,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InventoryAd = _$InventoryAdTearOff();

/// @nodoc
mixin _$InventoryAd {
  int get id;
  String get licensePlate;
  String get stockNumber;
  String get price;
  String get photo;
  AddVehicleLookup get priceType;
  bool get reserved;

  $InventoryAdCopyWith<InventoryAd> get copyWith;
}

/// @nodoc
abstract class $InventoryAdCopyWith<$Res> {
  factory $InventoryAdCopyWith(
          InventoryAd value, $Res Function(InventoryAd) then) =
      _$InventoryAdCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String licensePlate,
      String stockNumber,
      String price,
      String photo,
      AddVehicleLookup priceType,
      bool reserved});

  $AddVehicleLookupCopyWith<$Res> get priceType;
}

/// @nodoc
class _$InventoryAdCopyWithImpl<$Res> implements $InventoryAdCopyWith<$Res> {
  _$InventoryAdCopyWithImpl(this._value, this._then);

  final InventoryAd _value;
  // ignore: unused_field
  final $Res Function(InventoryAd) _then;

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
          : priceType as AddVehicleLookup,
      reserved: reserved == freezed ? _value.reserved : reserved as bool,
    ));
  }

  @override
  $AddVehicleLookupCopyWith<$Res> get priceType {
    if (_value.priceType == null) {
      return null;
    }
    return $AddVehicleLookupCopyWith<$Res>(_value.priceType, (value) {
      return _then(_value.copyWith(priceType: value));
    });
  }
}

/// @nodoc
abstract class _$InventoryAdCopyWith<$Res>
    implements $InventoryAdCopyWith<$Res> {
  factory _$InventoryAdCopyWith(
          _InventoryAd value, $Res Function(_InventoryAd) then) =
      __$InventoryAdCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String licensePlate,
      String stockNumber,
      String price,
      String photo,
      AddVehicleLookup priceType,
      bool reserved});

  @override
  $AddVehicleLookupCopyWith<$Res> get priceType;
}

/// @nodoc
class __$InventoryAdCopyWithImpl<$Res> extends _$InventoryAdCopyWithImpl<$Res>
    implements _$InventoryAdCopyWith<$Res> {
  __$InventoryAdCopyWithImpl(
      _InventoryAd _value, $Res Function(_InventoryAd) _then)
      : super(_value, (v) => _then(v as _InventoryAd));

  @override
  _InventoryAd get _value => super._value as _InventoryAd;

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
    return _then(_InventoryAd(
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
          : priceType as AddVehicleLookup,
      reserved: reserved == freezed ? _value.reserved : reserved as bool,
    ));
  }
}

/// @nodoc
class _$_InventoryAd implements _InventoryAd {
  const _$_InventoryAd(
      {@required this.id,
      this.licensePlate,
      this.stockNumber,
      this.price,
      this.photo,
      this.priceType,
      this.reserved})
      : assert(id != null);

  @override
  final int id;
  @override
  final String licensePlate;
  @override
  final String stockNumber;
  @override
  final String price;
  @override
  final String photo;
  @override
  final AddVehicleLookup priceType;
  @override
  final bool reserved;

  @override
  String toString() {
    return 'InventoryAd(id: $id, licensePlate: $licensePlate, stockNumber: $stockNumber, price: $price, photo: $photo, priceType: $priceType, reserved: $reserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryAd &&
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
  _$InventoryAdCopyWith<_InventoryAd> get copyWith =>
      __$InventoryAdCopyWithImpl<_InventoryAd>(this, _$identity);
}

abstract class _InventoryAd implements InventoryAd {
  const factory _InventoryAd(
      {@required int id,
      String licensePlate,
      String stockNumber,
      String price,
      String photo,
      AddVehicleLookup priceType,
      bool reserved}) = _$_InventoryAd;

  @override
  int get id;
  @override
  String get licensePlate;
  @override
  String get stockNumber;
  @override
  String get price;
  @override
  String get photo;
  @override
  AddVehicleLookup get priceType;
  @override
  bool get reserved;
  @override
  _$InventoryAdCopyWith<_InventoryAd> get copyWith;
}
