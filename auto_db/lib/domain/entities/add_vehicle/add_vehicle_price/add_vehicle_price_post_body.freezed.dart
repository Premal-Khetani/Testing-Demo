// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_price_post_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehiclePricePostBodyTearOff {
  const _$AddVehiclePricePostBodyTearOff();

// ignore: unused_element
  _AddVehiclePricePostBody call(
      {@required int id,
      @required int priceTypeId,
      int price,
      int bpm,
      int vat,
      int tradingPrice,
      int exportPrice}) {
    return _AddVehiclePricePostBody(
      id: id,
      priceTypeId: priceTypeId,
      price: price,
      bpm: bpm,
      vat: vat,
      tradingPrice: tradingPrice,
      exportPrice: exportPrice,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehiclePricePostBody = _$AddVehiclePricePostBodyTearOff();

/// @nodoc
mixin _$AddVehiclePricePostBody {
  int get id;
  int get priceTypeId;
  int get price;
  int get bpm;
  int get vat;
  int get tradingPrice;
  int get exportPrice;

  $AddVehiclePricePostBodyCopyWith<AddVehiclePricePostBody> get copyWith;
}

/// @nodoc
abstract class $AddVehiclePricePostBodyCopyWith<$Res> {
  factory $AddVehiclePricePostBodyCopyWith(AddVehiclePricePostBody value,
          $Res Function(AddVehiclePricePostBody) then) =
      _$AddVehiclePricePostBodyCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int priceTypeId,
      int price,
      int bpm,
      int vat,
      int tradingPrice,
      int exportPrice});
}

/// @nodoc
class _$AddVehiclePricePostBodyCopyWithImpl<$Res>
    implements $AddVehiclePricePostBodyCopyWith<$Res> {
  _$AddVehiclePricePostBodyCopyWithImpl(this._value, this._then);

  final AddVehiclePricePostBody _value;
  // ignore: unused_field
  final $Res Function(AddVehiclePricePostBody) _then;

  @override
  $Res call({
    Object id = freezed,
    Object priceTypeId = freezed,
    Object price = freezed,
    Object bpm = freezed,
    Object vat = freezed,
    Object tradingPrice = freezed,
    Object exportPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      priceTypeId:
          priceTypeId == freezed ? _value.priceTypeId : priceTypeId as int,
      price: price == freezed ? _value.price : price as int,
      bpm: bpm == freezed ? _value.bpm : bpm as int,
      vat: vat == freezed ? _value.vat : vat as int,
      tradingPrice:
          tradingPrice == freezed ? _value.tradingPrice : tradingPrice as int,
      exportPrice:
          exportPrice == freezed ? _value.exportPrice : exportPrice as int,
    ));
  }
}

/// @nodoc
abstract class _$AddVehiclePricePostBodyCopyWith<$Res>
    implements $AddVehiclePricePostBodyCopyWith<$Res> {
  factory _$AddVehiclePricePostBodyCopyWith(_AddVehiclePricePostBody value,
          $Res Function(_AddVehiclePricePostBody) then) =
      __$AddVehiclePricePostBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int priceTypeId,
      int price,
      int bpm,
      int vat,
      int tradingPrice,
      int exportPrice});
}

/// @nodoc
class __$AddVehiclePricePostBodyCopyWithImpl<$Res>
    extends _$AddVehiclePricePostBodyCopyWithImpl<$Res>
    implements _$AddVehiclePricePostBodyCopyWith<$Res> {
  __$AddVehiclePricePostBodyCopyWithImpl(_AddVehiclePricePostBody _value,
      $Res Function(_AddVehiclePricePostBody) _then)
      : super(_value, (v) => _then(v as _AddVehiclePricePostBody));

  @override
  _AddVehiclePricePostBody get _value =>
      super._value as _AddVehiclePricePostBody;

  @override
  $Res call({
    Object id = freezed,
    Object priceTypeId = freezed,
    Object price = freezed,
    Object bpm = freezed,
    Object vat = freezed,
    Object tradingPrice = freezed,
    Object exportPrice = freezed,
  }) {
    return _then(_AddVehiclePricePostBody(
      id: id == freezed ? _value.id : id as int,
      priceTypeId:
          priceTypeId == freezed ? _value.priceTypeId : priceTypeId as int,
      price: price == freezed ? _value.price : price as int,
      bpm: bpm == freezed ? _value.bpm : bpm as int,
      vat: vat == freezed ? _value.vat : vat as int,
      tradingPrice:
          tradingPrice == freezed ? _value.tradingPrice : tradingPrice as int,
      exportPrice:
          exportPrice == freezed ? _value.exportPrice : exportPrice as int,
    ));
  }
}

/// @nodoc
class _$_AddVehiclePricePostBody implements _AddVehiclePricePostBody {
  const _$_AddVehiclePricePostBody(
      {@required this.id,
      @required this.priceTypeId,
      this.price,
      this.bpm,
      this.vat,
      this.tradingPrice,
      this.exportPrice})
      : assert(id != null),
        assert(priceTypeId != null);

  @override
  final int id;
  @override
  final int priceTypeId;
  @override
  final int price;
  @override
  final int bpm;
  @override
  final int vat;
  @override
  final int tradingPrice;
  @override
  final int exportPrice;

  @override
  String toString() {
    return 'AddVehiclePricePostBody(id: $id, priceTypeId: $priceTypeId, price: $price, bpm: $bpm, vat: $vat, tradingPrice: $tradingPrice, exportPrice: $exportPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehiclePricePostBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.priceTypeId, priceTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.priceTypeId, priceTypeId)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.bpm, bpm) ||
                const DeepCollectionEquality().equals(other.bpm, bpm)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.tradingPrice, tradingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.tradingPrice, tradingPrice)) &&
            (identical(other.exportPrice, exportPrice) ||
                const DeepCollectionEquality()
                    .equals(other.exportPrice, exportPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(priceTypeId) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(bpm) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(tradingPrice) ^
      const DeepCollectionEquality().hash(exportPrice);

  @override
  _$AddVehiclePricePostBodyCopyWith<_AddVehiclePricePostBody> get copyWith =>
      __$AddVehiclePricePostBodyCopyWithImpl<_AddVehiclePricePostBody>(
          this, _$identity);
}

abstract class _AddVehiclePricePostBody implements AddVehiclePricePostBody {
  const factory _AddVehiclePricePostBody(
      {@required int id,
      @required int priceTypeId,
      int price,
      int bpm,
      int vat,
      int tradingPrice,
      int exportPrice}) = _$_AddVehiclePricePostBody;

  @override
  int get id;
  @override
  int get priceTypeId;
  @override
  int get price;
  @override
  int get bpm;
  @override
  int get vat;
  @override
  int get tradingPrice;
  @override
  int get exportPrice;
  @override
  _$AddVehiclePricePostBodyCopyWith<_AddVehiclePricePostBody> get copyWith;
}
