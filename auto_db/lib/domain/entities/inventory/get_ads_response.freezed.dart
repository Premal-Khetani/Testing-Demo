// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_ads_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetAdsResponseTearOff {
  const _$GetAdsResponseTearOff();

// ignore: unused_element
  _GetAdsResponse call({int count, List<InventoryAd> data}) {
    return _GetAdsResponse(
      count: count,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetAdsResponse = _$GetAdsResponseTearOff();

/// @nodoc
mixin _$GetAdsResponse {
  int get count;
  List<InventoryAd> get data;

  $GetAdsResponseCopyWith<GetAdsResponse> get copyWith;
}

/// @nodoc
abstract class $GetAdsResponseCopyWith<$Res> {
  factory $GetAdsResponseCopyWith(
          GetAdsResponse value, $Res Function(GetAdsResponse) then) =
      _$GetAdsResponseCopyWithImpl<$Res>;
  $Res call({int count, List<InventoryAd> data});
}

/// @nodoc
class _$GetAdsResponseCopyWithImpl<$Res>
    implements $GetAdsResponseCopyWith<$Res> {
  _$GetAdsResponseCopyWithImpl(this._value, this._then);

  final GetAdsResponse _value;
  // ignore: unused_field
  final $Res Function(GetAdsResponse) _then;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<InventoryAd>,
    ));
  }
}

/// @nodoc
abstract class _$GetAdsResponseCopyWith<$Res>
    implements $GetAdsResponseCopyWith<$Res> {
  factory _$GetAdsResponseCopyWith(
          _GetAdsResponse value, $Res Function(_GetAdsResponse) then) =
      __$GetAdsResponseCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<InventoryAd> data});
}

/// @nodoc
class __$GetAdsResponseCopyWithImpl<$Res>
    extends _$GetAdsResponseCopyWithImpl<$Res>
    implements _$GetAdsResponseCopyWith<$Res> {
  __$GetAdsResponseCopyWithImpl(
      _GetAdsResponse _value, $Res Function(_GetAdsResponse) _then)
      : super(_value, (v) => _then(v as _GetAdsResponse));

  @override
  _GetAdsResponse get _value => super._value as _GetAdsResponse;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_GetAdsResponse(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<InventoryAd>,
    ));
  }
}

/// @nodoc
class _$_GetAdsResponse implements _GetAdsResponse {
  const _$_GetAdsResponse({this.count, this.data});

  @override
  final int count;
  @override
  final List<InventoryAd> data;

  @override
  String toString() {
    return 'GetAdsResponse(count: $count, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAdsResponse &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$GetAdsResponseCopyWith<_GetAdsResponse> get copyWith =>
      __$GetAdsResponseCopyWithImpl<_GetAdsResponse>(this, _$identity);
}

abstract class _GetAdsResponse implements GetAdsResponse {
  const factory _GetAdsResponse({int count, List<InventoryAd> data}) =
      _$_GetAdsResponse;

  @override
  int get count;
  @override
  List<InventoryAd> get data;
  @override
  _$GetAdsResponseCopyWith<_GetAdsResponse> get copyWith;
}
