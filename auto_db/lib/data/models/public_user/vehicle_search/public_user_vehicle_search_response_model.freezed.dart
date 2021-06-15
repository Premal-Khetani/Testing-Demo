// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'public_user_vehicle_search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PublicUserVehicleSearchResponseModel
    _$PublicUserVehicleSearchResponseModelFromJson(Map<String, dynamic> json) {
  return _PublicUserVehicleSearchResponseModel.fromJson(json);
}

/// @nodoc
class _$PublicUserVehicleSearchResponseModelTearOff {
  const _$PublicUserVehicleSearchResponseModelTearOff();

// ignore: unused_element
  _PublicUserVehicleSearchResponseModel call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'carData') List<PublicUserVehicleAdModel> data}) {
    return _PublicUserVehicleSearchResponseModel(
      count: count,
      data: data,
    );
  }

// ignore: unused_element
  PublicUserVehicleSearchResponseModel fromJson(Map<String, Object> json) {
    return PublicUserVehicleSearchResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PublicUserVehicleSearchResponseModel =
    _$PublicUserVehicleSearchResponseModelTearOff();

/// @nodoc
mixin _$PublicUserVehicleSearchResponseModel {
  @JsonKey(name: 'count')
  int get count;
  @JsonKey(name: 'carData')
  List<PublicUserVehicleAdModel> get data;

  Map<String, dynamic> toJson();
  $PublicUserVehicleSearchResponseModelCopyWith<
      PublicUserVehicleSearchResponseModel> get copyWith;
}

/// @nodoc
abstract class $PublicUserVehicleSearchResponseModelCopyWith<$Res> {
  factory $PublicUserVehicleSearchResponseModelCopyWith(
          PublicUserVehicleSearchResponseModel value,
          $Res Function(PublicUserVehicleSearchResponseModel) then) =
      _$PublicUserVehicleSearchResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'carData') List<PublicUserVehicleAdModel> data});
}

/// @nodoc
class _$PublicUserVehicleSearchResponseModelCopyWithImpl<$Res>
    implements $PublicUserVehicleSearchResponseModelCopyWith<$Res> {
  _$PublicUserVehicleSearchResponseModelCopyWithImpl(this._value, this._then);

  final PublicUserVehicleSearchResponseModel _value;
  // ignore: unused_field
  final $Res Function(PublicUserVehicleSearchResponseModel) _then;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed
          ? _value.data
          : data as List<PublicUserVehicleAdModel>,
    ));
  }
}

/// @nodoc
abstract class _$PublicUserVehicleSearchResponseModelCopyWith<$Res>
    implements $PublicUserVehicleSearchResponseModelCopyWith<$Res> {
  factory _$PublicUserVehicleSearchResponseModelCopyWith(
          _PublicUserVehicleSearchResponseModel value,
          $Res Function(_PublicUserVehicleSearchResponseModel) then) =
      __$PublicUserVehicleSearchResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'carData') List<PublicUserVehicleAdModel> data});
}

/// @nodoc
class __$PublicUserVehicleSearchResponseModelCopyWithImpl<$Res>
    extends _$PublicUserVehicleSearchResponseModelCopyWithImpl<$Res>
    implements _$PublicUserVehicleSearchResponseModelCopyWith<$Res> {
  __$PublicUserVehicleSearchResponseModelCopyWithImpl(
      _PublicUserVehicleSearchResponseModel _value,
      $Res Function(_PublicUserVehicleSearchResponseModel) _then)
      : super(_value, (v) => _then(v as _PublicUserVehicleSearchResponseModel));

  @override
  _PublicUserVehicleSearchResponseModel get _value =>
      super._value as _PublicUserVehicleSearchResponseModel;

  @override
  $Res call({
    Object count = freezed,
    Object data = freezed,
  }) {
    return _then(_PublicUserVehicleSearchResponseModel(
      count: count == freezed ? _value.count : count as int,
      data: data == freezed
          ? _value.data
          : data as List<PublicUserVehicleAdModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PublicUserVehicleSearchResponseModel
    extends _PublicUserVehicleSearchResponseModel {
  const _$_PublicUserVehicleSearchResponseModel(
      {@JsonKey(name: 'count') this.count, @JsonKey(name: 'carData') this.data})
      : super._();

  factory _$_PublicUserVehicleSearchResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_PublicUserVehicleSearchResponseModelFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'carData')
  final List<PublicUserVehicleAdModel> data;

  @override
  String toString() {
    return 'PublicUserVehicleSearchResponseModel(count: $count, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublicUserVehicleSearchResponseModel &&
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
  _$PublicUserVehicleSearchResponseModelCopyWith<
          _PublicUserVehicleSearchResponseModel>
      get copyWith => __$PublicUserVehicleSearchResponseModelCopyWithImpl<
          _PublicUserVehicleSearchResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublicUserVehicleSearchResponseModelToJson(this);
  }
}

abstract class _PublicUserVehicleSearchResponseModel
    extends PublicUserVehicleSearchResponseModel {
  const _PublicUserVehicleSearchResponseModel._() : super._();
  const factory _PublicUserVehicleSearchResponseModel(
          {@JsonKey(name: 'count') int count,
          @JsonKey(name: 'carData') List<PublicUserVehicleAdModel> data}) =
      _$_PublicUserVehicleSearchResponseModel;

  factory _PublicUserVehicleSearchResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_PublicUserVehicleSearchResponseModel.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'carData')
  List<PublicUserVehicleAdModel> get data;
  @override
  _$PublicUserVehicleSearchResponseModelCopyWith<
      _PublicUserVehicleSearchResponseModel> get copyWith;
}
