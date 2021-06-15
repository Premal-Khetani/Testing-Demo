// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CountryLookupTearOff {
  const _$CountryLookupTearOff();

// ignore: unused_element
  _CountryLookup call({@required CountryNameLookup coutryNameLookup}) {
    return _CountryLookup(
      coutryNameLookup: coutryNameLookup,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountryLookup = _$CountryLookupTearOff();

/// @nodoc
mixin _$CountryLookup {
  CountryNameLookup get coutryNameLookup;

  $CountryLookupCopyWith<CountryLookup> get copyWith;
}

/// @nodoc
abstract class $CountryLookupCopyWith<$Res> {
  factory $CountryLookupCopyWith(
          CountryLookup value, $Res Function(CountryLookup) then) =
      _$CountryLookupCopyWithImpl<$Res>;
  $Res call({CountryNameLookup coutryNameLookup});

  $CountryNameLookupCopyWith<$Res> get coutryNameLookup;
}

/// @nodoc
class _$CountryLookupCopyWithImpl<$Res>
    implements $CountryLookupCopyWith<$Res> {
  _$CountryLookupCopyWithImpl(this._value, this._then);

  final CountryLookup _value;
  // ignore: unused_field
  final $Res Function(CountryLookup) _then;

  @override
  $Res call({
    Object coutryNameLookup = freezed,
  }) {
    return _then(_value.copyWith(
      coutryNameLookup: coutryNameLookup == freezed
          ? _value.coutryNameLookup
          : coutryNameLookup as CountryNameLookup,
    ));
  }

  @override
  $CountryNameLookupCopyWith<$Res> get coutryNameLookup {
    if (_value.coutryNameLookup == null) {
      return null;
    }
    return $CountryNameLookupCopyWith<$Res>(_value.coutryNameLookup, (value) {
      return _then(_value.copyWith(coutryNameLookup: value));
    });
  }
}

/// @nodoc
abstract class _$CountryLookupCopyWith<$Res>
    implements $CountryLookupCopyWith<$Res> {
  factory _$CountryLookupCopyWith(
          _CountryLookup value, $Res Function(_CountryLookup) then) =
      __$CountryLookupCopyWithImpl<$Res>;
  @override
  $Res call({CountryNameLookup coutryNameLookup});

  @override
  $CountryNameLookupCopyWith<$Res> get coutryNameLookup;
}

/// @nodoc
class __$CountryLookupCopyWithImpl<$Res>
    extends _$CountryLookupCopyWithImpl<$Res>
    implements _$CountryLookupCopyWith<$Res> {
  __$CountryLookupCopyWithImpl(
      _CountryLookup _value, $Res Function(_CountryLookup) _then)
      : super(_value, (v) => _then(v as _CountryLookup));

  @override
  _CountryLookup get _value => super._value as _CountryLookup;

  @override
  $Res call({
    Object coutryNameLookup = freezed,
  }) {
    return _then(_CountryLookup(
      coutryNameLookup: coutryNameLookup == freezed
          ? _value.coutryNameLookup
          : coutryNameLookup as CountryNameLookup,
    ));
  }
}

/// @nodoc
class _$_CountryLookup with DiagnosticableTreeMixin implements _CountryLookup {
  const _$_CountryLookup({@required this.coutryNameLookup})
      : assert(coutryNameLookup != null);

  @override
  final CountryNameLookup coutryNameLookup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryLookup(coutryNameLookup: $coutryNameLookup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryLookup'))
      ..add(DiagnosticsProperty('coutryNameLookup', coutryNameLookup));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryLookup &&
            (identical(other.coutryNameLookup, coutryNameLookup) ||
                const DeepCollectionEquality()
                    .equals(other.coutryNameLookup, coutryNameLookup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coutryNameLookup);

  @override
  _$CountryLookupCopyWith<_CountryLookup> get copyWith =>
      __$CountryLookupCopyWithImpl<_CountryLookup>(this, _$identity);
}

abstract class _CountryLookup implements CountryLookup {
  const factory _CountryLookup({@required CountryNameLookup coutryNameLookup}) =
      _$_CountryLookup;

  @override
  CountryNameLookup get coutryNameLookup;
  @override
  _$CountryLookupCopyWith<_CountryLookup> get copyWith;
}

/// @nodoc
class _$CountryNameLookupTearOff {
  const _$CountryNameLookupTearOff();

// ignore: unused_element
  _CountryNameLookup call({@required String en, @required String nl}) {
    return _CountryNameLookup(
      en: en,
      nl: nl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountryNameLookup = _$CountryNameLookupTearOff();

/// @nodoc
mixin _$CountryNameLookup {
  String get en;
  String get nl;

  $CountryNameLookupCopyWith<CountryNameLookup> get copyWith;
}

/// @nodoc
abstract class $CountryNameLookupCopyWith<$Res> {
  factory $CountryNameLookupCopyWith(
          CountryNameLookup value, $Res Function(CountryNameLookup) then) =
      _$CountryNameLookupCopyWithImpl<$Res>;
  $Res call({String en, String nl});
}

/// @nodoc
class _$CountryNameLookupCopyWithImpl<$Res>
    implements $CountryNameLookupCopyWith<$Res> {
  _$CountryNameLookupCopyWithImpl(this._value, this._then);

  final CountryNameLookup _value;
  // ignore: unused_field
  final $Res Function(CountryNameLookup) _then;

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
abstract class _$CountryNameLookupCopyWith<$Res>
    implements $CountryNameLookupCopyWith<$Res> {
  factory _$CountryNameLookupCopyWith(
          _CountryNameLookup value, $Res Function(_CountryNameLookup) then) =
      __$CountryNameLookupCopyWithImpl<$Res>;
  @override
  $Res call({String en, String nl});
}

/// @nodoc
class __$CountryNameLookupCopyWithImpl<$Res>
    extends _$CountryNameLookupCopyWithImpl<$Res>
    implements _$CountryNameLookupCopyWith<$Res> {
  __$CountryNameLookupCopyWithImpl(
      _CountryNameLookup _value, $Res Function(_CountryNameLookup) _then)
      : super(_value, (v) => _then(v as _CountryNameLookup));

  @override
  _CountryNameLookup get _value => super._value as _CountryNameLookup;

  @override
  $Res call({
    Object en = freezed,
    Object nl = freezed,
  }) {
    return _then(_CountryNameLookup(
      en: en == freezed ? _value.en : en as String,
      nl: nl == freezed ? _value.nl : nl as String,
    ));
  }
}

/// @nodoc
class _$_CountryNameLookup
    with DiagnosticableTreeMixin
    implements _CountryNameLookup {
  const _$_CountryNameLookup({@required this.en, @required this.nl})
      : assert(en != null),
        assert(nl != null);

  @override
  final String en;
  @override
  final String nl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryNameLookup(en: $en, nl: $nl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryNameLookup'))
      ..add(DiagnosticsProperty('en', en))
      ..add(DiagnosticsProperty('nl', nl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryNameLookup &&
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
  _$CountryNameLookupCopyWith<_CountryNameLookup> get copyWith =>
      __$CountryNameLookupCopyWithImpl<_CountryNameLookup>(this, _$identity);
}

abstract class _CountryNameLookup implements CountryNameLookup {
  const factory _CountryNameLookup({@required String en, @required String nl}) =
      _$_CountryNameLookup;

  @override
  String get en;
  @override
  String get nl;
  @override
  _$CountryNameLookupCopyWith<_CountryNameLookup> get copyWith;
}
