// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'public_user_vehicle_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PublicUserVehicleSearchResponseTearOff {
  const _$PublicUserVehicleSearchResponseTearOff();

// ignore: unused_element
  _PublicUserVehicleSearchResponse call(
      {int count, List<PublicUserVehicleAd> data}) {
    return _PublicUserVehicleSearchResponse(
      count: count,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PublicUserVehicleSearchResponse =
    _$PublicUserVehicleSearchResponseTearOff();

/// @nodoc
mixin _$PublicUserVehicleSearchResponse {
  int get count;
  List<PublicUserVehicleAd> get data;

  $PublicUserVehicleSearchResponseCopyWith<PublicUserVehicleSearchResponse>
      get copyWith;
}

/// @nodoc
abstract class $PublicUserVehicleSearchResponseCopyWith<$Res> {
  factory $PublicUserVehicleSearchResponseCopyWith(
          PublicUserVehicleSearchResponse value,
          $Res Function(PublicUserVehicleSearchResponse) then) =
      _$PublicUserVehicleSearchResponseCopyWithImpl<$Res>;
  $Res call({int count, List<PublicUserVehicleAd> data});
}

/// @nodoc
class _$PublicUserVehicleSearchResponseCopyWithImpl<$Res>
    implements $PublicUserVehicleSearchResponseCopyWith<$Res> {
  _$PublicUserVehicleSearchResponseCopyWithImpl(this._value, this._then);

  final PublicUserVehicleSearchResponse _value;
  // ignore: unused_field
  final $Res Function(PublicUserVehicleSearchResponse) _then;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<PublicUserVehicleAd>,
    ));
  }
}

/// @nodoc
abstract class _$PublicUserVehicleSearchResponseCopyWith<$Res>
    implements $PublicUserVehicleSearchResponseCopyWith<$Res> {
  factory _$PublicUserVehicleSearchResponseCopyWith(
          _PublicUserVehicleSearchResponse value,
          $Res Function(_PublicUserVehicleSearchResponse) then) =
      __$PublicUserVehicleSearchResponseCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<PublicUserVehicleAd> data});
}

/// @nodoc
class __$PublicUserVehicleSearchResponseCopyWithImpl<$Res>
    extends _$PublicUserVehicleSearchResponseCopyWithImpl<$Res>
    implements _$PublicUserVehicleSearchResponseCopyWith<$Res> {
  __$PublicUserVehicleSearchResponseCopyWithImpl(
      _PublicUserVehicleSearchResponse _value,
      $Res Function(_PublicUserVehicleSearchResponse) _then)
      : super(_value, (v) => _then(v as _PublicUserVehicleSearchResponse));

  @override
  _PublicUserVehicleSearchResponse get _value =>
      super._value as _PublicUserVehicleSearchResponse;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_PublicUserVehicleSearchResponse(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<PublicUserVehicleAd>,
    ));
  }
}

/// @nodoc
class _$_PublicUserVehicleSearchResponse
    implements _PublicUserVehicleSearchResponse {
  const _$_PublicUserVehicleSearchResponse({this.count, this.data});

  @override
  final int count;
  @override
  final List<PublicUserVehicleAd> data;

  @override
  String toString() {
    return 'PublicUserVehicleSearchResponse(count: $count, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublicUserVehicleSearchResponse &&
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
  _$PublicUserVehicleSearchResponseCopyWith<_PublicUserVehicleSearchResponse>
      get copyWith => __$PublicUserVehicleSearchResponseCopyWithImpl<
          _PublicUserVehicleSearchResponse>(this, _$identity);
}

abstract class _PublicUserVehicleSearchResponse
    implements PublicUserVehicleSearchResponse {
  const factory _PublicUserVehicleSearchResponse(
      {int count,
      List<PublicUserVehicleAd> data}) = _$_PublicUserVehicleSearchResponse;

  @override
  int get count;
  @override
  List<PublicUserVehicleAd> get data;
  @override
  _$PublicUserVehicleSearchResponseCopyWith<_PublicUserVehicleSearchResponse>
      get copyWith;
}
