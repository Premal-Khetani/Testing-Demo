// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'string_lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StringLookupTearOff {
  const _$StringLookupTearOff();

// ignore: unused_element
  _StringLookup call({@required String en, @required String nl}) {
    return _StringLookup(
      en: en,
      nl: nl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StringLookup = _$StringLookupTearOff();

/// @nodoc
mixin _$StringLookup {
  String get en;
  String get nl;

  $StringLookupCopyWith<StringLookup> get copyWith;
}

/// @nodoc
abstract class $StringLookupCopyWith<$Res> {
  factory $StringLookupCopyWith(
          StringLookup value, $Res Function(StringLookup) then) =
      _$StringLookupCopyWithImpl<$Res>;
  $Res call({String en, String nl});
}

/// @nodoc
class _$StringLookupCopyWithImpl<$Res> implements $StringLookupCopyWith<$Res> {
  _$StringLookupCopyWithImpl(this._value, this._then);

  final StringLookup _value;
  // ignore: unused_field
  final $Res Function(StringLookup) _then;

  @override
  $Res call({
    Object en = freezed,
    Object nl = freezed,
  }) {
    return _then(_value.copyWith(
      en: en == freezed ? _value.en : en as String,
      nl: nl == freezed ? _value.nl : nl as String,
    ));
  }
}

/// @nodoc
abstract class _$StringLookupCopyWith<$Res>
    implements $StringLookupCopyWith<$Res> {
  factory _$StringLookupCopyWith(
          _StringLookup value, $Res Function(_StringLookup) then) =
      __$StringLookupCopyWithImpl<$Res>;
  @override
  $Res call({String en, String nl});
}

/// @nodoc
class __$StringLookupCopyWithImpl<$Res> extends _$StringLookupCopyWithImpl<$Res>
    implements _$StringLookupCopyWith<$Res> {
  __$StringLookupCopyWithImpl(
      _StringLookup _value, $Res Function(_StringLookup) _then)
      : super(_value, (v) => _then(v as _StringLookup));

  @override
  _StringLookup get _value => super._value as _StringLookup;

  @override
  $Res call({
    Object en = freezed,
    Object nl = freezed,
  }) {
    return _then(_StringLookup(
      en: en == freezed ? _value.en : en as String,
      nl: nl == freezed ? _value.nl : nl as String,
    ));
  }
}

/// @nodoc
class _$_StringLookup implements _StringLookup {
  const _$_StringLookup({@required this.en, @required this.nl})
      : assert(en != null),
        assert(nl != null);

  @override
  final String en;
  @override
  final String nl;

  @override
  String toString() {
    return 'StringLookup(en: $en, nl: $nl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StringLookup &&
            (identical(other.en, en) ||
                const DeepCollectionEquality().equals(other.en, en)) &&
            (identical(other.nl, nl) ||
                const DeepCollectionEquality().equals(other.nl, nl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(en) ^
      const DeepCollectionEquality().hash(nl);

  @override
  _$StringLookupCopyWith<_StringLookup> get copyWith =>
      __$StringLookupCopyWithImpl<_StringLookup>(this, _$identity);
}

abstract class _StringLookup implements StringLookup {
  const factory _StringLookup({@required String en, @required String nl}) =
      _$_StringLookup;

  @override
  String get en;
  @override
  String get nl;
  @override
  _$StringLookupCopyWith<_StringLookup> get copyWith;
}
