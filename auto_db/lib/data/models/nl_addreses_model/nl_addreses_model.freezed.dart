// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nl_addreses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NlAddresesModel _$NlAddresesModelFromJson(Map<String, dynamic> json) {
  return _NlAddresesModel.fromJson(json);
}

/// @nodoc
class _$NlAddresesModelTearOff {
  const _$NlAddresesModelTearOff();

// ignore: unused_element
  _NlAddresesModel call(
      {@required String street,
      @required @JsonKey(name: 'number') int houseNumber,
      @required @JsonKey(name: 'postcode') String zipCode,
      @required String city}) {
    return _NlAddresesModel(
      street: street,
      houseNumber: houseNumber,
      zipCode: zipCode,
      city: city,
    );
  }

// ignore: unused_element
  NlAddresesModel fromJson(Map<String, Object> json) {
    return NlAddresesModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NlAddresesModel = _$NlAddresesModelTearOff();

/// @nodoc
mixin _$NlAddresesModel {
  String get street;
  @JsonKey(name: 'number')
  int get houseNumber;
  @JsonKey(name: 'postcode')
  String get zipCode;
  String get city;

  Map<String, dynamic> toJson();
  $NlAddresesModelCopyWith<NlAddresesModel> get copyWith;
}

/// @nodoc
abstract class $NlAddresesModelCopyWith<$Res> {
  factory $NlAddresesModelCopyWith(
          NlAddresesModel value, $Res Function(NlAddresesModel) then) =
      _$NlAddresesModelCopyWithImpl<$Res>;
  $Res call(
      {String street,
      @JsonKey(name: 'number') int houseNumber,
      @JsonKey(name: 'postcode') String zipCode,
      String city});
}

/// @nodoc
class _$NlAddresesModelCopyWithImpl<$Res>
    implements $NlAddresesModelCopyWith<$Res> {
  _$NlAddresesModelCopyWithImpl(this._value, this._then);

  final NlAddresesModel _value;
  // ignore: unused_field
  final $Res Function(NlAddresesModel) _then;

  @override
  $Res call({
    Object street = freezed,
    Object houseNumber = freezed,
    Object zipCode = freezed,
    Object city = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed ? _value.street : street as String,
      houseNumber:
          houseNumber == freezed ? _value.houseNumber : houseNumber as int,
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as String,
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
abstract class _$NlAddresesModelCopyWith<$Res>
    implements $NlAddresesModelCopyWith<$Res> {
  factory _$NlAddresesModelCopyWith(
          _NlAddresesModel value, $Res Function(_NlAddresesModel) then) =
      __$NlAddresesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String street,
      @JsonKey(name: 'number') int houseNumber,
      @JsonKey(name: 'postcode') String zipCode,
      String city});
}

/// @nodoc
class __$NlAddresesModelCopyWithImpl<$Res>
    extends _$NlAddresesModelCopyWithImpl<$Res>
    implements _$NlAddresesModelCopyWith<$Res> {
  __$NlAddresesModelCopyWithImpl(
      _NlAddresesModel _value, $Res Function(_NlAddresesModel) _then)
      : super(_value, (v) => _then(v as _NlAddresesModel));

  @override
  _NlAddresesModel get _value => super._value as _NlAddresesModel;

  @override
  $Res call({
    Object street = freezed,
    Object houseNumber = freezed,
    Object zipCode = freezed,
    Object city = freezed,
  }) {
    return _then(_NlAddresesModel(
      street: street == freezed ? _value.street : street as String,
      houseNumber:
          houseNumber == freezed ? _value.houseNumber : houseNumber as int,
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as String,
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NlAddresesModel extends _NlAddresesModel with DiagnosticableTreeMixin {
  const _$_NlAddresesModel(
      {@required this.street,
      @required @JsonKey(name: 'number') this.houseNumber,
      @required @JsonKey(name: 'postcode') this.zipCode,
      @required this.city})
      : assert(street != null),
        assert(houseNumber != null),
        assert(zipCode != null),
        assert(city != null),
        super._();

  factory _$_NlAddresesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NlAddresesModelFromJson(json);

  @override
  final String street;
  @override
  @JsonKey(name: 'number')
  final int houseNumber;
  @override
  @JsonKey(name: 'postcode')
  final String zipCode;
  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NlAddresesModel(street: $street, houseNumber: $houseNumber, zipCode: $zipCode, city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NlAddresesModel'))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('houseNumber', houseNumber))
      ..add(DiagnosticsProperty('zipCode', zipCode))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NlAddresesModel &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.houseNumber, houseNumber)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality()
                    .equals(other.zipCode, zipCode)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(city);

  @override
  _$NlAddresesModelCopyWith<_NlAddresesModel> get copyWith =>
      __$NlAddresesModelCopyWithImpl<_NlAddresesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NlAddresesModelToJson(this);
  }
}

abstract class _NlAddresesModel extends NlAddresesModel {
  const _NlAddresesModel._() : super._();
  const factory _NlAddresesModel(
      {@required String street,
      @required @JsonKey(name: 'number') int houseNumber,
      @required @JsonKey(name: 'postcode') String zipCode,
      @required String city}) = _$_NlAddresesModel;

  factory _NlAddresesModel.fromJson(Map<String, dynamic> json) =
      _$_NlAddresesModel.fromJson;

  @override
  String get street;
  @override
  @JsonKey(name: 'number')
  int get houseNumber;
  @override
  @JsonKey(name: 'postcode')
  String get zipCode;
  @override
  String get city;
  @override
  _$NlAddresesModelCopyWith<_NlAddresesModel> get copyWith;
}
