// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nl_addreses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NlAddresesTearOff {
  const _$NlAddresesTearOff();

// ignore: unused_element
  _NlAddreses call(
      {@required String street,
      @required int houseNumber,
      @required String zipCode,
      @required String city}) {
    return _NlAddreses(
      street: street,
      houseNumber: houseNumber,
      zipCode: zipCode,
      city: city,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NlAddreses = _$NlAddresesTearOff();

/// @nodoc
mixin _$NlAddreses {
  String get street;
  int get houseNumber;
  String get zipCode;
  String get city;

  $NlAddresesCopyWith<NlAddreses> get copyWith;
}

/// @nodoc
abstract class $NlAddresesCopyWith<$Res> {
  factory $NlAddresesCopyWith(
          NlAddreses value, $Res Function(NlAddreses) then) =
      _$NlAddresesCopyWithImpl<$Res>;
  $Res call({String street, int houseNumber, String zipCode, String city});
}

/// @nodoc
class _$NlAddresesCopyWithImpl<$Res> implements $NlAddresesCopyWith<$Res> {
  _$NlAddresesCopyWithImpl(this._value, this._then);

  final NlAddreses _value;
  // ignore: unused_field
  final $Res Function(NlAddreses) _then;

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
abstract class _$NlAddresesCopyWith<$Res> implements $NlAddresesCopyWith<$Res> {
  factory _$NlAddresesCopyWith(
          _NlAddreses value, $Res Function(_NlAddreses) then) =
      __$NlAddresesCopyWithImpl<$Res>;
  @override
  $Res call({String street, int houseNumber, String zipCode, String city});
}

/// @nodoc
class __$NlAddresesCopyWithImpl<$Res> extends _$NlAddresesCopyWithImpl<$Res>
    implements _$NlAddresesCopyWith<$Res> {
  __$NlAddresesCopyWithImpl(
      _NlAddreses _value, $Res Function(_NlAddreses) _then)
      : super(_value, (v) => _then(v as _NlAddreses));

  @override
  _NlAddreses get _value => super._value as _NlAddreses;

  @override
  $Res call({
    Object street = freezed,
    Object houseNumber = freezed,
    Object zipCode = freezed,
    Object city = freezed,
  }) {
    return _then(_NlAddreses(
      street: street == freezed ? _value.street : street as String,
      houseNumber:
          houseNumber == freezed ? _value.houseNumber : houseNumber as int,
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as String,
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$_NlAddreses implements _NlAddreses {
  const _$_NlAddreses(
      {@required this.street,
      @required this.houseNumber,
      @required this.zipCode,
      @required this.city})
      : assert(street != null),
        assert(houseNumber != null),
        assert(zipCode != null),
        assert(city != null);

  @override
  final String street;
  @override
  final int houseNumber;
  @override
  final String zipCode;
  @override
  final String city;

  @override
  String toString() {
    return 'NlAddreses(street: $street, houseNumber: $houseNumber, zipCode: $zipCode, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NlAddreses &&
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
  _$NlAddresesCopyWith<_NlAddreses> get copyWith =>
      __$NlAddresesCopyWithImpl<_NlAddreses>(this, _$identity);
}

abstract class _NlAddreses implements NlAddreses {
  const factory _NlAddreses(
      {@required String street,
      @required int houseNumber,
      @required String zipCode,
      @required String city}) = _$_NlAddreses;

  @override
  String get street;
  @override
  int get houseNumber;
  @override
  String get zipCode;
  @override
  String get city;
  @override
  _$NlAddresesCopyWith<_NlAddreses> get copyWith;
}
