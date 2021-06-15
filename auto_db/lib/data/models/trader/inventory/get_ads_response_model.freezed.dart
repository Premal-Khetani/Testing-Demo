// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_ads_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GetAdsResponseModel _$GetAdsResponseModelFromJson(Map<String, dynamic> json) {
  return _GetAdsResponseModel.fromJson(json);
}

/// @nodoc
class _$GetAdsResponseModelTearOff {
  const _$GetAdsResponseModelTearOff();

// ignore: unused_element
  _GetAdsResponseModel call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'carData') List<InventoryAdModel> data}) {
    return _GetAdsResponseModel(
      count: count,
      data: data,
    );
  }

// ignore: unused_element
  GetAdsResponseModel fromJson(Map<String, Object> json) {
    return GetAdsResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GetAdsResponseModel = _$GetAdsResponseModelTearOff();

/// @nodoc
mixin _$GetAdsResponseModel {
  @JsonKey(name: 'count')
  int get count;
  @JsonKey(name: 'carData')
  List<InventoryAdModel> get data;

  Map<String, dynamic> toJson();
  $GetAdsResponseModelCopyWith<GetAdsResponseModel> get copyWith;
}

/// @nodoc
abstract class $GetAdsResponseModelCopyWith<$Res> {
  factory $GetAdsResponseModelCopyWith(
          GetAdsResponseModel value, $Res Function(GetAdsResponseModel) then) =
      _$GetAdsResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'carData') List<InventoryAdModel> data});
}

/// @nodoc
class _$GetAdsResponseModelCopyWithImpl<$Res>
    implements $GetAdsResponseModelCopyWith<$Res> {
  _$GetAdsResponseModelCopyWithImpl(this._value, this._then);

  final GetAdsResponseModel _value;
  // ignore: unused_field
  final $Res Function(GetAdsResponseModel) _then;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<InventoryAdModel>,
    ));
  }
}

/// @nodoc
abstract class _$GetAdsResponseModelCopyWith<$Res>
    implements $GetAdsResponseModelCopyWith<$Res> {
  factory _$GetAdsResponseModelCopyWith(_GetAdsResponseModel value,
          $Res Function(_GetAdsResponseModel) then) =
      __$GetAdsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'carData') List<InventoryAdModel> data});
}

/// @nodoc
class __$GetAdsResponseModelCopyWithImpl<$Res>
    extends _$GetAdsResponseModelCopyWithImpl<$Res>
    implements _$GetAdsResponseModelCopyWith<$Res> {
  __$GetAdsResponseModelCopyWithImpl(
      _GetAdsResponseModel _value, $Res Function(_GetAdsResponseModel) _then)
      : super(_value, (v) => _then(v as _GetAdsResponseModel));

  @override
  _GetAdsResponseModel get _value => super._value as _GetAdsResponseModel;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_GetAdsResponseModel(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed ? _value.data : data as List<InventoryAdModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GetAdsResponseModel extends _GetAdsResponseModel {
  const _$_GetAdsResponseModel(
      {@JsonKey(name: 'count') this.count, @JsonKey(name: 'carData') this.data})
      : super._();

  factory _$_GetAdsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GetAdsResponseModelFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'carData')
  final List<InventoryAdModel> data;

  @override
  String toString() {
    return 'GetAdsResponseModel(count: $count, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAdsResponseModel &&
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
  _$GetAdsResponseModelCopyWith<_GetAdsResponseModel> get copyWith =>
      __$GetAdsResponseModelCopyWithImpl<_GetAdsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetAdsResponseModelToJson(this);
  }
}

abstract class _GetAdsResponseModel extends GetAdsResponseModel {
  const _GetAdsResponseModel._() : super._();
  const factory _GetAdsResponseModel(
          {@JsonKey(name: 'count') int count,
          @JsonKey(name: 'carData') List<InventoryAdModel> data}) =
      _$_GetAdsResponseModel;

  factory _GetAdsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GetAdsResponseModel.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'carData')
  List<InventoryAdModel> get data;
  @override
  _$GetAdsResponseModelCopyWith<_GetAdsResponseModel> get copyWith;
}
