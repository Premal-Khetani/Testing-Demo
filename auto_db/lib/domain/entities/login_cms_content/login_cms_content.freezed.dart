// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_cms_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginCMSContentTearOff {
  const _$LoginCMSContentTearOff();

// ignore: unused_element
  _LoginCMSContent call({@required String body}) {
    return _LoginCMSContent(
      body: body,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginCMSContent = _$LoginCMSContentTearOff();

/// @nodoc
mixin _$LoginCMSContent {
  String get body;

  $LoginCMSContentCopyWith<LoginCMSContent> get copyWith;
}

/// @nodoc
abstract class $LoginCMSContentCopyWith<$Res> {
  factory $LoginCMSContentCopyWith(
          LoginCMSContent value, $Res Function(LoginCMSContent) then) =
      _$LoginCMSContentCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class _$LoginCMSContentCopyWithImpl<$Res>
    implements $LoginCMSContentCopyWith<$Res> {
  _$LoginCMSContentCopyWithImpl(this._value, this._then);

  final LoginCMSContent _value;
  // ignore: unused_field
  final $Res Function(LoginCMSContent) _then;

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
abstract class _$LoginCMSContentCopyWith<$Res>
    implements $LoginCMSContentCopyWith<$Res> {
  factory _$LoginCMSContentCopyWith(
          _LoginCMSContent value, $Res Function(_LoginCMSContent) then) =
      __$LoginCMSContentCopyWithImpl<$Res>;
  @override
  $Res call({String body});
}

/// @nodoc
class __$LoginCMSContentCopyWithImpl<$Res>
    extends _$LoginCMSContentCopyWithImpl<$Res>
    implements _$LoginCMSContentCopyWith<$Res> {
  __$LoginCMSContentCopyWithImpl(
      _LoginCMSContent _value, $Res Function(_LoginCMSContent) _then)
      : super(_value, (v) => _then(v as _LoginCMSContent));

  @override
  _LoginCMSContent get _value => super._value as _LoginCMSContent;

  @override
  $Res call({
    Object body = freezed,
  }) {
    return _then(_LoginCMSContent(
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
class _$_LoginCMSContent implements _LoginCMSContent {
  const _$_LoginCMSContent({@required this.body}) : assert(body != null);

  @override
  final String body;

  @override
  String toString() {
    return 'LoginCMSContent(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginCMSContent &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @override
  _$LoginCMSContentCopyWith<_LoginCMSContent> get copyWith =>
      __$LoginCMSContentCopyWithImpl<_LoginCMSContent>(this, _$identity);
}

abstract class _LoginCMSContent implements LoginCMSContent {
  const factory _LoginCMSContent({@required String body}) = _$_LoginCMSContent;

  @override
  String get body;
  @override
  _$LoginCMSContentCopyWith<_LoginCMSContent> get copyWith;
}
