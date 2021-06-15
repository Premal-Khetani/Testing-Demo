part of 'user_login_bloc.dart';

@freezed
abstract class UserLoginState with _$UserLoginState {
  const factory UserLoginState({
    @required Email email,
    @required Password password,
    @required bool stayLoggedIn,
    @required bool isSubmitting,
    @required double cmsContentHeight
  }) = _UserLoginState;

  factory UserLoginState.initial() => UserLoginState(
    email: Email.initial(),
    password: Password.initial(),
    stayLoggedIn: false,
    isSubmitting: false,
    cmsContentHeight : 0.0
  );
}