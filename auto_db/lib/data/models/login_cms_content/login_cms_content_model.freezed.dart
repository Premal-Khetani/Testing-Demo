// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_cms_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginCMSContentModel _$LoginCMSContentModelFromJson(Map<String, dynamic> json) {
  return _LoginCMSContentModel.fromJson(json);
}

/// @nodoc
class _$LoginCMSContentModelTearOff {
  const _$LoginCMSContentModelTearOff();

// ignore: unused_element
  _LoginCMSContentModel call({@required String body}) {
    return _LoginCMSContentModel(
      body: body,
    );
  }

// ignore: unused_element
  LoginCMSContentModel fromJson(Map<String, Object> json) {
    return LoginCMSContentModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginCMSContentModel = _$LoginCMSContentModelTearOff();

/// @nodoc
mixin _$LoginCMSContentModel {
  String get body;

  Map<String, dynamic> toJson();
  $LoginCMSContentModelCopyWith<LoginCMSContentModel> get copyWith;
}

/// @nodoc
abstract class $LoginCMSContentModelCopyWith<$Res> {
  factory $LoginCMSContentModelCopyWith(LoginCMSContentModel value,
          $Res Function(LoginCMSContentModel) then) =
      _$LoginCMSContentModelCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class _$LoginCMSContentModelCopyWithImpl<$Res>
    implements $LoginCMSContentModelCopyWith<$Res> {
  _$LoginCMSContentModelCopyWithImpl(this._value, this._then);

  final LoginCMSContentModel _value;
  // ignore: unused_field
  final $Res Function(LoginCMSContentModel) _then;

  @override
  $Res call({
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginCMSContentModelCopyWith<$Res>
    implements $LoginCMSContentModelCopyWith<$Res> {
  factory _$LoginCMSContentModelCopyWith(_LoginCMSContentModel value,
          $Res Function(_LoginCMSContentModel) then) =
      __$LoginCMSContentModelCopyWithImpl<$Res>;
  @override
  $Res call({String body});
}

/// @nodoc
class __$LoginCMSContentModelCopyWithImpl<$Res>
    extends _$LoginCMSContentModelCopyWithImpl<$Res>
    implements _$LoginCMSContentModelCopyWith<$Res> {
  __$LoginCMSContentModelCopyWithImpl(
      _LoginCMSContentModel _value, $Res Function(_LoginCMSContentModel) _then)
      : super(_value, (v) => _then(v as _LoginCMSContentModel));

  @override
  _LoginCMSContentModel get _value => super._value as _LoginCMSContentModel;

  @override
  $Res call({
    Object body = freezed,
  }) {
    return _then(_LoginCMSContentModel(
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginCMSContentModel extends _LoginCMSContentModel {
  const _$_LoginCMSContentModel({@required this.body})
      : assert(body != null),
        super._();

  factory _$_LoginCMSContentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginCMSContentModelFromJson(json);

  @override
  final String body;

  @override
  String toString() {
    return 'LoginCMSContentModel(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginCMSContentModel &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @override
  _$LoginCMSContentModelCopyWith<_LoginCMSContentModel> get copyWith =>
      __$LoginCMSContentModelCopyWithImpl<_LoginCMSContentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginCMSContentModelToJson(this);
  }
}

abstract class _LoginCMSContentModel extends LoginCMSContentModel {
  const _LoginCMSContentModel._() : super._();
  const factory _LoginCMSContentModel({@required String body}) =
      _$_LoginCMSContentModel;

  factory _LoginCMSContentModel.fromJson(Map<String, dynamic> json) =
      _$_LoginCMSContentModel.fromJson;

  @override
  String get body;
  @override
  _$LoginCMSContentModelCopyWith<_LoginCMSContentModel> get copyWith;
}
