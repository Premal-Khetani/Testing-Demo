// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_lookup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountryLookupModel _$CountryLookupModelFromJson(Map<String, dynamic> json) {
  return _CountryLookupModel.fromJson(json);
}

/// @nodoc
class _$CountryLookupModelTearOff {
  const _$CountryLookupModelTearOff();

// ignore: unused_element
  _CountryLookupModel call(
      {@required
      @JsonKey(name: 'name')
          CountryNameLookupModel coutryNameLookup}) {
    return _CountryLookupModel(
      coutryNameLookup: coutryNameLookup,
    );
  }

// ignore: unused_element
  CountryLookupModel fromJson(Map<String, Object> json) {
    return CountryLookupModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountryLookupModel = _$CountryLookupModelTearOff();

/// @nodoc
mixin _$CountryLookupModel {
  @JsonKey(name: 'name')
  CountryNameLookupModel get coutryNameLookup;

  Map<String, dynamic> toJson();
  $CountryLookupModelCopyWith<CountryLookupModel> get copyWith;
}

/// @nodoc
abstract class $CountryLookupModelCopyWith<$Res> {
  factory $CountryLookupModelCopyWith(
          CountryLookupModel value, $Res Function(CountryLookupModel) then) =
      _$CountryLookupModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') CountryNameLookupModel coutryNameLookup});

  $CountryNameLookupModelCopyWith<$Res> get coutryNameLookup;
}

/// @nodoc
class _$CountryLookupModelCopyWithImpl<$Res>
    implements $CountryLookupModelCopyWith<$Res> {
  _$CountryLookupModelCopyWithImpl(this._value, this._then);

  final CountryLookupModel _value;
  // ignore: unused_field
  final $Res Function(CountryLookupModel) _then;

  @override
  $Res call({
    Object coutryNameLookup = freezed,
  }) {
    return _then(_value.copyWith(
      coutryNameLookup: coutryNameLookup == freezed
          ? _value.coutryNameLookup
          : coutryNameLookup as CountryNameLookupModel,
    ));
  }

  @override
  $CountryNameLookupModelCopyWith<$Res> get coutryNameLookup {
    if (_value.coutryNameLookup == null) {
      return null;
    }
    return $CountryNameLookupModelCopyWith<$Res>(_value.coutryNameLookup,
        (value) {
      return _then(_value.copyWith(coutryNameLookup: value));
    });
  }
}

/// @nodoc
abstract class _$CountryLookupModelCopyWith<$Res>
    implements $CountryLookupModelCopyWith<$Res> {
  factory _$CountryLookupModelCopyWith(
          _CountryLookupModel value, $Res Function(_CountryLookupModel) then) =
      __$CountryLookupModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') CountryNameLookupModel coutryNameLookup});

  @override
  $CountryNameLookupModelCopyWith<$Res> get coutryNameLookup;
}

/// @nodoc
class __$CountryLookupModelCopyWithImpl<$Res>
    extends _$CountryLookupModelCopyWithImpl<$Res>
    implements _$CountryLookupModelCopyWith<$Res> {
  __$CountryLookupModelCopyWithImpl(
      _CountryLookupModel _value, $Res Function(_CountryLookupModel) _then)
      : super(_value, (v) => _then(v as _CountryLookupModel));

  @override
  _CountryLookupModel get _value => super._value as _CountryLookupModel;

  @override
  $Res call({
    Object coutryNameLookup = freezed,
  }) {
    return _then(_CountryLookupModel(
      coutryNameLookup: coutryNameLookup == freezed
          ? _value.coutryNameLookup
          : coutryNameLookup as CountryNameLookupModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountryLookupModel extends _CountryLookupModel {
  const _$_CountryLookupModel(
      {@required @JsonKey(name: 'name') this.coutryNameLookup})
      : assert(coutryNameLookup != null),
        super._();

  factory _$_CountryLookupModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryLookupModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final CountryNameLookupModel coutryNameLookup;

  @override
  String toString() {
    return 'CountryLookupModel(coutryNameLookup: $coutryNameLookup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryLookupModel &&
            (identical(other.coutryNameLookup, coutryNameLookup) ||
                const DeepCollectionEquality()
                    .equals(other.coutryNameLookup, coutryNameLookup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coutryNameLookup);

  @override
  _$CountryLookupModelCopyWith<_CountryLookupModel> get copyWith =>
      __$CountryLookupModelCopyWithImpl<_CountryLookupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryLookupModelToJson(this);
  }
}

abstract class _CountryLookupModel extends CountryLookupModel {
  const _CountryLookupModel._() : super._();
  const factory _CountryLookupModel(
      {@required
      @JsonKey(name: 'name')
          CountryNameLookupModel coutryNameLookup}) = _$_CountryLookupModel;

  factory _CountryLookupModel.fromJson(Map<String, dynamic> json) =
      _$_CountryLookupModel.fromJson;

  @override
  @JsonKey(name: 'name')
  CountryNameLookupModel get coutryNameLookup;
  @override
  _$CountryLookupModelCopyWith<_CountryLookupModel> get copyWith;
}

CountryNameLookupModel _$CountryNameLookupModelFromJson(
    Map<String, dynamic> json) {
  return _CountryNameLookupModel.fromJson(json);
}

/// @nodoc
class _$CountryNameLookupModelTearOff {
  const _$CountryNameLookupModelTearOff();

// ignore: unused_element
  _CountryNameLookupModel call({@required String en, @required String nl}) {
    return _CountryNameLookupModel(
      en: en,
      nl: nl,
    );
  }

// ignore: unused_element
  CountryNameLookupModel fromJson(Map<String, Object> json) {
    return CountryNameLookupModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountryNameLookupModel = _$CountryNameLookupModelTearOff();

/// @nodoc
mixin _$CountryNameLookupModel {
  String get en;
  String get nl;

  Map<String, dynamic> toJson();
  $CountryNameLookupModelCopyWith<CountryNameLookupModel> get copyWith;
}

/// @nodoc
abstract class $CountryNameLookupModelCopyWith<$Res> {
  factory $CountryNameLookupModelCopyWith(CountryNameLookupModel value,
          $Res Function(CountryNameLookupModel) then) =
      _$CountryNameLookupModelCopyWithImpl<$Res>;
  $Res call({String en, String nl});
}

/// @nodoc
class _$CountryNameLookupModelCopyWithImpl<$Res>
    implements $CountryNameLookupModelCopyWith<$Res> {
  _$CountryNameLookupModelCopyWithImpl(this._value, this._then);

  final CountryNameLookupModel _value;
  // ignore: unused_field
  final $Res Function(CountryNameLookupModel) _then;

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
abstract class _$CountryNameLookupModelCopyWith<$Res>
    implements $CountryNameLookupModelCopyWith<$Res> {
  factory _$CountryNameLookupModelCopyWith(_CountryNameLookupModel value,
          $Res Function(_CountryNameLookupModel) then) =
      __$CountryNameLookupModelCopyWithImpl<$Res>;
  @override
  $Res call({String en, String nl});
}

/// @nodoc
class __$CountryNameLookupModelCopyWithImpl<$Res>
    extends _$CountryNameLookupModelCopyWithImpl<$Res>
    implements _$CountryNameLookupModelCopyWith<$Res> {
  __$CountryNameLookupModelCopyWithImpl(_CountryNameLookupModel _value,
      $Res Function(_CountryNameLookupModel) _then)
      : super(_value, (v) => _then(v as _CountryNameLookupModel));

  @override
  _CountryNameLookupModel get _value => super._value as _CountryNameLookupModel;

  @override
  $Res call({
    Object en = freezed,
    Object nl = freezed,
  }) {
    return _then(_CountryNameLookupModel(
      en: en == freezed ? _value.en : en as String,
      nl: nl == freezed ? _value.nl : nl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountryNameLookupModel extends _CountryNameLookupModel {
  const _$_CountryNameLookupModel({@required this.en, @required this.nl})
      : assert(en != null),
        assert(nl != null),
        super._();

  factory _$_CountryNameLookupModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryNameLookupModelFromJson(json);

  @override
  final String en;
  @override
  final String nl;

  @override
  String toString() {
    return 'CountryNameLookupModel(en: $en, nl: $nl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryNameLookupModel &&
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
  _$CountryNameLookupModelCopyWith<_CountryNameLookupModel> get copyWith =>
      __$CountryNameLookupModelCopyWithImpl<_CountryNameLookupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryNameLookupModelToJson(this);
  }
}

abstract class _CountryNameLookupModel extends CountryNameLookupModel {
  const _CountryNameLookupModel._() : super._();
  const factory _CountryNameLookupModel(
      {@required String en, @required String nl}) = _$_CountryNameLookupModel;

  factory _CountryNameLookupModel.fromJson(Map<String, dynamic> json) =
      _$_CountryNameLookupModel.fromJson;

  @override
  String get en;
  @override
  String get nl;
  @override
  _$CountryNameLookupModelCopyWith<_CountryNameLookupModel> get copyWith;
}
