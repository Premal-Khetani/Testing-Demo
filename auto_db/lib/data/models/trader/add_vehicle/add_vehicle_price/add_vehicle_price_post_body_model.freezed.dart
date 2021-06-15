// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_price_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehiclePricePostBodyModel _$AddVehiclePricePostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehiclePricePostBodyModel.fromJson(json);
}

/// @nodoc
class _$AddVehiclePricePostBodyModelTearOff {
  const _$AddVehiclePricePostBodyModelTearOff();

// ignore: unused_element
  _AddVehiclePricePostBodyModel call(
      {@required @JsonKey(name: 'id') int id,
      @required @JsonKey(name: 'price_type_id') int priceTypeId,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'bpm') int bpm,
      @JsonKey(name: 'vat') int vat,
      @JsonKey(name: 'trading_price') int tradingPrice,
      @JsonKey(name: 'export_price') int exportPrice}) {
    return _AddVehiclePricePostBodyModel(
      id: id,
      priceTypeId: priceTypeId,
      price: price,
      bpm: bpm,
      vat: vat,
      tradingPrice: tradingPrice,
      exportPrice: exportPrice,
    );
  }

// ignore: unused_element
  AddVehiclePricePostBodyModel fromJson(Map<String, Object> json) {
    return AddVehiclePricePostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehiclePricePostBodyModel = _$AddVehiclePricePostBodyModelTearOff();

/// @nodoc
mixin _$AddVehiclePricePostBodyModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'price_type_id')
  int get priceTypeId;
  @JsonKey(name: 'price')
  int get price;
  @JsonKey(name: 'bpm')
  int get bpm;
  @JsonKey(name: 'vat')
  int get vat;
  @JsonKey(name: 'trading_price')
  int get tradingPrice;
  @JsonKey(name: 'export_price')
  int get exportPrice;

  Map<String, dynamic> toJson();
  $AddVehiclePricePostBodyModelCopyWith<AddVehiclePricePostBodyModel>
      get copyWith;
}

/// @nodoc
abstract class $AddVehiclePricePostBodyModelCopyWith<$Res> {
  factory $AddVehiclePricePostBodyModelCopyWith(
          AddVehiclePricePostBodyModel value,
          $Res Function(AddVehiclePricePostBodyModel) then) =
      _$AddVehiclePricePostBodyModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price_type_id') int priceTypeId,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'bpm') int bpm,
      @JsonKey(name: 'vat') int vat,
      @JsonKey(name: 'trading_price') int tradingPrice,
      @JsonKey(name: 'export_price') int exportPrice});
}

/// @nodoc
class _$AddVehiclePricePostBodyModelCopyWithImpl<$Res>
    implements $AddVehiclePricePostBodyModelCopyWith<$Res> {
  _$AddVehiclePricePostBodyModelCopyWithImpl(this._value, this._then);

  final AddVehiclePricePostBodyModel _value;
  // ignore: unused_field
  final $Res Function(AddVehiclePricePostBodyModel) _then;

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
abstract class _$AddVehiclePricePostBodyModelCopyWith<$Res>
    implements $AddVehiclePricePostBodyModelCopyWith<$Res> {
  factory _$AddVehiclePricePostBodyModelCopyWith(
          _AddVehiclePricePostBodyModel value,
          $Res Function(_AddVehiclePricePostBodyModel) then) =
      __$AddVehiclePricePostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price_type_id') int priceTypeId,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'bpm') int bpm,
      @JsonKey(name: 'vat') int vat,
      @JsonKey(name: 'trading_price') int tradingPrice,
      @JsonKey(name: 'export_price') int exportPrice});
}

/// @nodoc
class __$AddVehiclePricePostBodyModelCopyWithImpl<$Res>
    extends _$AddVehiclePricePostBodyModelCopyWithImpl<$Res>
    implements _$AddVehiclePricePostBodyModelCopyWith<$Res> {
  __$AddVehiclePricePostBodyModelCopyWithImpl(
      _AddVehiclePricePostBodyModel _value,
      $Res Function(_AddVehiclePricePostBodyModel) _then)
      : super(_value, (v) => _then(v as _AddVehiclePricePostBodyModel));

  @override
  _AddVehiclePricePostBodyModel get _value =>
      super._value as _AddVehiclePricePostBodyModel;

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
    return _then(_AddVehiclePricePostBodyModel(
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

@JsonSerializable()

/// @nodoc
class _$_AddVehiclePricePostBodyModel extends _AddVehiclePricePostBodyModel {
  const _$_AddVehiclePricePostBodyModel(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'price_type_id') this.priceTypeId,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'bpm') this.bpm,
      @JsonKey(name: 'vat') this.vat,
      @JsonKey(name: 'trading_price') this.tradingPrice,
      @JsonKey(name: 'export_price') this.exportPrice})
      : assert(id != null),
        assert(priceTypeId != null),
        super._();

  factory _$_AddVehiclePricePostBodyModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddVehiclePricePostBodyModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'price_type_id')
  final int priceTypeId;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'bpm')
  final int bpm;
  @override
  @JsonKey(name: 'vat')
  final int vat;
  @override
  @JsonKey(name: 'trading_price')
  final int tradingPrice;
  @override
  @JsonKey(name: 'export_price')
  final int exportPrice;

  @override
  String toString() {
    return 'AddVehiclePricePostBodyModel(id: $id, priceTypeId: $priceTypeId, price: $price, bpm: $bpm, vat: $vat, tradingPrice: $tradingPrice, exportPrice: $exportPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehiclePricePostBodyModel &&
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
  _$AddVehiclePricePostBodyModelCopyWith<_AddVehiclePricePostBodyModel>
      get copyWith => __$AddVehiclePricePostBodyModelCopyWithImpl<
          _AddVehiclePricePostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehiclePricePostBodyModelToJson(this);
  }
}

abstract class _AddVehiclePricePostBodyModel
    extends AddVehiclePricePostBodyModel {
  const _AddVehiclePricePostBodyModel._() : super._();
  const factory _AddVehiclePricePostBodyModel(
          {@required @JsonKey(name: 'id') int id,
          @required @JsonKey(name: 'price_type_id') int priceTypeId,
          @JsonKey(name: 'price') int price,
          @JsonKey(name: 'bpm') int bpm,
          @JsonKey(name: 'vat') int vat,
          @JsonKey(name: 'trading_price') int tradingPrice,
          @JsonKey(name: 'export_price') int exportPrice}) =
      _$_AddVehiclePricePostBodyModel;

  factory _AddVehiclePricePostBodyModel.fromJson(Map<String, dynamic> json) =
      _$_AddVehiclePricePostBodyModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'price_type_id')
  int get priceTypeId;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'bpm')
  int get bpm;
  @override
  @JsonKey(name: 'vat')
  int get vat;
  @override
  @JsonKey(name: 'trading_price')
  int get tradingPrice;
  @override
  @JsonKey(name: 'export_price')
  int get exportPrice;
  @override
  _$AddVehiclePricePostBodyModelCopyWith<_AddVehiclePricePostBodyModel>
      get copyWith;
}
