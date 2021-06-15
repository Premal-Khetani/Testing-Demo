// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'string_lookup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StringLookupModel _$StringLookupModelFromJson(Map<String, dynamic> json) {
  return _StringLookupModel.fromJson(json);
}

/// @nodoc
class _$StringLookupModelTearOff {
  const _$StringLookupModelTearOff();

// ignore: unused_element
  _StringLookupModel call({@required String en, @required String nl}) {
    return _StringLookupModel(
      en: en,
      nl: nl,
    );
  }

// ignore: unused_element
  StringLookupModel fromJson(Map<String, Object> json) {
    return StringLookupModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StringLookupModel = _$StringLookupModelTearOff();

/// @nodoc
mixin _$StringLookupModel {
  String get en;
  String get nl;

  Map<String, dynamic> toJson();
  $StringLookupModelCopyWith<StringLookupModel> get copyWith;
}

/// @nodoc
abstract class $StringLookupModelCopyWith<$Res> {
  factory $StringLookupModelCopyWith(
          StringLookupModel value, $Res Function(StringLookupModel) then) =
      _$StringLookupModelCopyWithImpl<$Res>;
  $Res call({String en, String nl});
}

/// @nodoc
class _$StringLookupModelCopyWithImpl<$Res>
    implements $StringLookupModelCopyWith<$Res> {
  _$StringLookupModelCopyWithImpl(this._value, this._then);

  final StringLookupModel _value;
  // ignore: unused_field
  final $Res Function(StringLookupModel) _then;

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
abstract class _$StringLookupModelCopyWith<$Res>
    implements $StringLookupModelCopyWith<$Res> {
  factory _$StringLookupModelCopyWith(
          _StringLookupModel value, $Res Function(_StringLookupModel) then) =
      __$StringLookupModelCopyWithImpl<$Res>;
  @override
  $Res call({String en, String nl});
}

/// @nodoc
class __$StringLookupModelCopyWithImpl<$Res>
    extends _$StringLookupModelCopyWithImpl<$Res>
    implements _$StringLookupModelCopyWith<$Res> {
  __$StringLookupModelCopyWithImpl(
      _StringLookupModel _value, $Res Function(_StringLookupModel) _then)
      : super(_value, (v) => _then(v as _StringLookupModel));

  @override
  _StringLookupModel get _value => super._value as _StringLookupModel;

  @override
  $Res call({
    Object en = freezed,
    Object nl = freezed,
  }) {
    return _then(_StringLookupModel(
      en: en == freezed ? _value.en : en as String,
      nl: nl == freezed ? _value.nl : nl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StringLookupModel extends _StringLookupModel {
  const _$_StringLookupModel({@required this.en, @required this.nl})
      : assert(en != null),
        assert(nl != null),
        super._();

  factory _$_StringLookupModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StringLookupModelFromJson(json);

  @override
  final String en;
  @override
  final String nl;

  @override
  String toString() {
    return 'StringLookupModel(en: $en, nl: $nl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StringLookupModel &&
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
  _$StringLookupModelCopyWith<_StringLookupModel> get copyWith =>
      __$StringLookupModelCopyWithImpl<_StringLookupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StringLookupModelToJson(this);
  }
}

abstract class _StringLookupModel extends StringLookupModel {
  const _StringLookupModel._() : super._();
  const factory _StringLookupModel({@required String en, @required String nl}) =
      _$_StringLookupModel;

  factory _StringLookupModel.fromJson(Map<String, dynamic> json) =
      _$_StringLookupModel.fromJson;

  @override
  String get en;
  @override
  String get nl;
  @override
  _$StringLookupModelCopyWith<_StringLookupModel> get copyWith;
}
