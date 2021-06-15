// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserLoginEventTearOff {
  const _$UserLoginEventTearOff();

// ignore: unused_element
  OnRegisterTapped onRegisterTapped() {
    return const OnRegisterTapped();
  }

// ignore: unused_element
  Login login() {
    return const Login();
  }

// ignore: unused_element
  EmailChanged emailChanged({@required String value}) {
    return EmailChanged(
      value: value,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged({@required String value}) {
    return PasswordChanged(
      value: value,
    );
  }

// ignore: unused_element
  OnForgotPasswordTapped onForgotPasswordTapped() {
    return const OnForgotPasswordTapped();
  }

// ignore: unused_element
  StayLoggedInChanged stayLoggedInChanged({@required bool value}) {
    return StayLoggedInChanged(
      value: value,
    );
  }

// ignore: unused_element
  CmsContentWebViewCreated cmsContentWebViewCreated(
      {@required WebViewController webViewController}) {
    return CmsContentWebViewCreated(
      webViewController: webViewController,
    );
  }

// ignore: unused_element
  CmsContentPageFinishedLoading cmsContentPageFinishedLoading() {
    return const CmsContentPageFinishedLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $UserLoginEvent = _$UserLoginEventTearOff();

/// @nodoc
mixin _$UserLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserLoginEventCopyWith<$Res> {
  factory $UserLoginEventCopyWith(
          UserLoginEvent value, $Res Function(UserLoginEvent) then) =
      _$UserLoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoginEventCopyWithImpl<$Res>
    implements $UserLoginEventCopyWith<$Res> {
  _$UserLoginEventCopyWithImpl(this._value, this._then);

  final UserLoginEvent _value;
  // ignore: unused_field
  final $Res Function(UserLoginEvent) _then;
}

/// @nodoc
abstract class $OnRegisterTappedCopyWith<$Res> {
  factory $OnRegisterTappedCopyWith(
          OnRegisterTapped value, $Res Function(OnRegisterTapped) then) =
      _$OnRegisterTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRegisterTappedCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $OnRegisterTappedCopyWith<$Res> {
  _$OnRegisterTappedCopyWithImpl(
      OnRegisterTapped _value, $Res Function(OnRegisterTapped) _then)
      : super(_value, (v) => _then(v as OnRegisterTapped));

  @override
  OnRegisterTapped get _value => super._value as OnRegisterTapped;
}

/// @nodoc
class _$OnRegisterTapped implements OnRegisterTapped {
  const _$OnRegisterTapped();

  @override
  String toString() {
    return 'UserLoginEvent.onRegisterTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRegisterTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return onRegisterTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegisterTapped != null) {
      return onRegisterTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return onRegisterTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRegisterTapped != null) {
      return onRegisterTapped(this);
    }
    return orElse();
  }
}

abstract class OnRegisterTapped implements UserLoginEvent {
  const factory OnRegisterTapped() = _$OnRegisterTapped;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> extends _$UserLoginEventCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;
}

/// @nodoc
class _$Login implements Login {
  const _$Login();

  @override
  String toString() {
    return 'UserLoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return login();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements UserLoginEvent {
  const factory Login() = _$Login;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(EmailChanged(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'UserLoginEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements UserLoginEvent {
  const factory EmailChanged({@required String value}) = _$EmailChanged;

  String get value;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(PasswordChanged(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'UserLoginEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements UserLoginEvent {
  const factory PasswordChanged({@required String value}) = _$PasswordChanged;

  String get value;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $OnForgotPasswordTappedCopyWith<$Res> {
  factory $OnForgotPasswordTappedCopyWith(OnForgotPasswordTapped value,
          $Res Function(OnForgotPasswordTapped) then) =
      _$OnForgotPasswordTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnForgotPasswordTappedCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $OnForgotPasswordTappedCopyWith<$Res> {
  _$OnForgotPasswordTappedCopyWithImpl(OnForgotPasswordTapped _value,
      $Res Function(OnForgotPasswordTapped) _then)
      : super(_value, (v) => _then(v as OnForgotPasswordTapped));

  @override
  OnForgotPasswordTapped get _value => super._value as OnForgotPasswordTapped;
}

/// @nodoc
class _$OnForgotPasswordTapped implements OnForgotPasswordTapped {
  const _$OnForgotPasswordTapped();

  @override
  String toString() {
    return 'UserLoginEvent.onForgotPasswordTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnForgotPasswordTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return onForgotPasswordTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onForgotPasswordTapped != null) {
      return onForgotPasswordTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return onForgotPasswordTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onForgotPasswordTapped != null) {
      return onForgotPasswordTapped(this);
    }
    return orElse();
  }
}

abstract class OnForgotPasswordTapped implements UserLoginEvent {
  const factory OnForgotPasswordTapped() = _$OnForgotPasswordTapped;
}

/// @nodoc
abstract class $StayLoggedInChangedCopyWith<$Res> {
  factory $StayLoggedInChangedCopyWith(
          StayLoggedInChanged value, $Res Function(StayLoggedInChanged) then) =
      _$StayLoggedInChangedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$StayLoggedInChangedCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $StayLoggedInChangedCopyWith<$Res> {
  _$StayLoggedInChangedCopyWithImpl(
      StayLoggedInChanged _value, $Res Function(StayLoggedInChanged) _then)
      : super(_value, (v) => _then(v as StayLoggedInChanged));

  @override
  StayLoggedInChanged get _value => super._value as StayLoggedInChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(StayLoggedInChanged(
      value: value == freezed ? _value.value : value as bool,
    ));
  }
}

/// @nodoc
class _$StayLoggedInChanged implements StayLoggedInChanged {
  const _$StayLoggedInChanged({@required this.value}) : assert(value != null);

  @override
  final bool value;

  @override
  String toString() {
    return 'UserLoginEvent.stayLoggedInChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StayLoggedInChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $StayLoggedInChangedCopyWith<StayLoggedInChanged> get copyWith =>
      _$StayLoggedInChangedCopyWithImpl<StayLoggedInChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return stayLoggedInChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stayLoggedInChanged != null) {
      return stayLoggedInChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return stayLoggedInChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stayLoggedInChanged != null) {
      return stayLoggedInChanged(this);
    }
    return orElse();
  }
}

abstract class StayLoggedInChanged implements UserLoginEvent {
  const factory StayLoggedInChanged({@required bool value}) =
      _$StayLoggedInChanged;

  bool get value;
  $StayLoggedInChangedCopyWith<StayLoggedInChanged> get copyWith;
}

/// @nodoc
abstract class $CmsContentWebViewCreatedCopyWith<$Res> {
  factory $CmsContentWebViewCreatedCopyWith(CmsContentWebViewCreated value,
          $Res Function(CmsContentWebViewCreated) then) =
      _$CmsContentWebViewCreatedCopyWithImpl<$Res>;
  $Res call({WebViewController webViewController});
}

/// @nodoc
class _$CmsContentWebViewCreatedCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $CmsContentWebViewCreatedCopyWith<$Res> {
  _$CmsContentWebViewCreatedCopyWithImpl(CmsContentWebViewCreated _value,
      $Res Function(CmsContentWebViewCreated) _then)
      : super(_value, (v) => _then(v as CmsContentWebViewCreated));

  @override
  CmsContentWebViewCreated get _value =>
      super._value as CmsContentWebViewCreated;

  @override
  $Res call({
    Object webViewController = freezed,
  }) {
    return _then(CmsContentWebViewCreated(
      webViewController: webViewController == freezed
          ? _value.webViewController
          : webViewController as WebViewController,
    ));
  }
}

/// @nodoc
class _$CmsContentWebViewCreated implements CmsContentWebViewCreated {
  const _$CmsContentWebViewCreated({@required this.webViewController})
      : assert(webViewController != null);

  @override
  final WebViewController webViewController;

  @override
  String toString() {
    return 'UserLoginEvent.cmsContentWebViewCreated(webViewController: $webViewController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CmsContentWebViewCreated &&
            (identical(other.webViewController, webViewController) ||
                const DeepCollectionEquality()
                    .equals(other.webViewController, webViewController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(webViewController);

  @override
  $CmsContentWebViewCreatedCopyWith<CmsContentWebViewCreated> get copyWith =>
      _$CmsContentWebViewCreatedCopyWithImpl<CmsContentWebViewCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return cmsContentWebViewCreated(webViewController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cmsContentWebViewCreated != null) {
      return cmsContentWebViewCreated(webViewController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return cmsContentWebViewCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cmsContentWebViewCreated != null) {
      return cmsContentWebViewCreated(this);
    }
    return orElse();
  }
}

abstract class CmsContentWebViewCreated implements UserLoginEvent {
  const factory CmsContentWebViewCreated(
          {@required WebViewController webViewController}) =
      _$CmsContentWebViewCreated;

  WebViewController get webViewController;
  $CmsContentWebViewCreatedCopyWith<CmsContentWebViewCreated> get copyWith;
}

/// @nodoc
abstract class $CmsContentPageFinishedLoadingCopyWith<$Res> {
  factory $CmsContentPageFinishedLoadingCopyWith(
          CmsContentPageFinishedLoading value,
          $Res Function(CmsContentPageFinishedLoading) then) =
      _$CmsContentPageFinishedLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CmsContentPageFinishedLoadingCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res>
    implements $CmsContentPageFinishedLoadingCopyWith<$Res> {
  _$CmsContentPageFinishedLoadingCopyWithImpl(
      CmsContentPageFinishedLoading _value,
      $Res Function(CmsContentPageFinishedLoading) _then)
      : super(_value, (v) => _then(v as CmsContentPageFinishedLoading));

  @override
  CmsContentPageFinishedLoading get _value =>
      super._value as CmsContentPageFinishedLoading;
}

/// @nodoc
class _$CmsContentPageFinishedLoading implements CmsContentPageFinishedLoading {
  const _$CmsContentPageFinishedLoading();

  @override
  String toString() {
    return 'UserLoginEvent.cmsContentPageFinishedLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CmsContentPageFinishedLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRegisterTapped(),
    @required TResult login(),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult onForgotPasswordTapped(),
    @required TResult stayLoggedInChanged(bool value),
    @required
        TResult cmsContentWebViewCreated(WebViewController webViewController),
    @required TResult cmsContentPageFinishedLoading(),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return cmsContentPageFinishedLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRegisterTapped(),
    TResult login(),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult onForgotPasswordTapped(),
    TResult stayLoggedInChanged(bool value),
    TResult cmsContentWebViewCreated(WebViewController webViewController),
    TResult cmsContentPageFinishedLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cmsContentPageFinishedLoading != null) {
      return cmsContentPageFinishedLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRegisterTapped(OnRegisterTapped value),
    @required TResult login(Login value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    @required TResult stayLoggedInChanged(StayLoggedInChanged value),
    @required TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    @required
        TResult cmsContentPageFinishedLoading(
            CmsContentPageFinishedLoading value),
  }) {
    assert(onRegisterTapped != null);
    assert(login != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(onForgotPasswordTapped != null);
    assert(stayLoggedInChanged != null);
    assert(cmsContentWebViewCreated != null);
    assert(cmsContentPageFinishedLoading != null);
    return cmsContentPageFinishedLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRegisterTapped(OnRegisterTapped value),
    TResult login(Login value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult onForgotPasswordTapped(OnForgotPasswordTapped value),
    TResult stayLoggedInChanged(StayLoggedInChanged value),
    TResult cmsContentWebViewCreated(CmsContentWebViewCreated value),
    TResult cmsContentPageFinishedLoading(CmsContentPageFinishedLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cmsContentPageFinishedLoading != null) {
      return cmsContentPageFinishedLoading(this);
    }
    return orElse();
  }
}

abstract class CmsContentPageFinishedLoading implements UserLoginEvent {
  const factory CmsContentPageFinishedLoading() =
      _$CmsContentPageFinishedLoading;
}

/// @nodoc
class _$UserLoginStateTearOff {
  const _$UserLoginStateTearOff();

// ignore: unused_element
  _UserLoginState call(
      {@required Email email,
      @required Password password,
      @required bool stayLoggedIn,
      @required bool isSubmitting,
      @required double cmsContentHeight}) {
    return _UserLoginState(
      email: email,
      password: password,
      stayLoggedIn: stayLoggedIn,
      isSubmitting: isSubmitting,
      cmsContentHeight: cmsContentHeight,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserLoginState = _$UserLoginStateTearOff();

/// @nodoc
mixin _$UserLoginState {
  Email get email;
  Password get password;
  bool get stayLoggedIn;
  bool get isSubmitting;
  double get cmsContentHeight;

  $UserLoginStateCopyWith<UserLoginState> get copyWith;
}

/// @nodoc
abstract class $UserLoginStateCopyWith<$Res> {
  factory $UserLoginStateCopyWith(
          UserLoginState value, $Res Function(UserLoginState) then) =
      _$UserLoginStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      bool stayLoggedIn,
      bool isSubmitting,
      double cmsContentHeight});
}

/// @nodoc
class _$UserLoginStateCopyWithImpl<$Res>
    implements $UserLoginStateCopyWith<$Res> {
  _$UserLoginStateCopyWithImpl(this._value, this._then);

  final UserLoginState _value;
  // ignore: unused_field
  final $Res Function(UserLoginState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object stayLoggedIn = freezed,
    Object isSubmitting = freezed,
    Object cmsContentHeight = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      stayLoggedIn:
          stayLoggedIn == freezed ? _value.stayLoggedIn : stayLoggedIn as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      cmsContentHeight: cmsContentHeight == freezed
          ? _value.cmsContentHeight
          : cmsContentHeight as double,
    ));
  }
}

/// @nodoc
abstract class _$UserLoginStateCopyWith<$Res>
    implements $UserLoginStateCopyWith<$Res> {
  factory _$UserLoginStateCopyWith(
          _UserLoginState value, $Res Function(_UserLoginState) then) =
      __$UserLoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      bool stayLoggedIn,
      bool isSubmitting,
      double cmsContentHeight});
}

/// @nodoc
class __$UserLoginStateCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res>
    implements _$UserLoginStateCopyWith<$Res> {
  __$UserLoginStateCopyWithImpl(
      _UserLoginState _value, $Res Function(_UserLoginState) _then)
      : super(_value, (v) => _then(v as _UserLoginState));

  @override
  _UserLoginState get _value => super._value as _UserLoginState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object stayLoggedIn = freezed,
    Object isSubmitting = freezed,
    Object cmsContentHeight = freezed,
  }) {
    return _then(_UserLoginState(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      stayLoggedIn:
          stayLoggedIn == freezed ? _value.stayLoggedIn : stayLoggedIn as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      cmsContentHeight: cmsContentHeight == freezed
          ? _value.cmsContentHeight
          : cmsContentHeight as double,
    ));
  }
}

/// @nodoc
class _$_UserLoginState implements _UserLoginState {
  const _$_UserLoginState(
      {@required this.email,
      @required this.password,
      @required this.stayLoggedIn,
      @required this.isSubmitting,
      @required this.cmsContentHeight})
      : assert(email != null),
        assert(password != null),
        assert(stayLoggedIn != null),
        assert(isSubmitting != null),
        assert(cmsContentHeight != null);

  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool stayLoggedIn;
  @override
  final bool isSubmitting;
  @override
  final double cmsContentHeight;

  @override
  String toString() {
    return 'UserLoginState(email: $email, password: $password, stayLoggedIn: $stayLoggedIn, isSubmitting: $isSubmitting, cmsContentHeight: $cmsContentHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoginState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.stayLoggedIn, stayLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.stayLoggedIn, stayLoggedIn)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.cmsContentHeight, cmsContentHeight) ||
                const DeepCollectionEquality()
                    .equals(other.cmsContentHeight, cmsContentHeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(stayLoggedIn) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(cmsContentHeight);

  @override
  _$UserLoginStateCopyWith<_UserLoginState> get copyWith =>
      __$UserLoginStateCopyWithImpl<_UserLoginState>(this, _$identity);
}

abstract class _UserLoginState implements UserLoginState {
  const factory _UserLoginState(
      {@required Email email,
      @required Password password,
      @required bool stayLoggedIn,
      @required bool isSubmitting,
      @required double cmsContentHeight}) = _$_UserLoginState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  bool get stayLoggedIn;
  @override
  bool get isSubmitting;
  @override
  double get cmsContentHeight;
  @override
  _$UserLoginStateCopyWith<_UserLoginState> get copyWith;
}
