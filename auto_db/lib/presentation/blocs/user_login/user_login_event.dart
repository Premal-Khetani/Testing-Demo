part of 'user_login_bloc.dart';

@freezed
abstract class UserLoginEvent with _$UserLoginEvent {
  const factory UserLoginEvent.onRegisterTapped() = OnRegisterTapped;
  const factory UserLoginEvent.login() = Login;
  const factory UserLoginEvent.emailChanged({@required String value}) = EmailChanged;
  const factory UserLoginEvent.passwordChanged({@required String value}) = PasswordChanged;
  const factory UserLoginEvent.onForgotPasswordTapped() = OnForgotPasswordTapped;
  const factory UserLoginEvent.stayLoggedInChanged({@required bool value}) = StayLoggedInChanged;
  const factory UserLoginEvent.cmsContentWebViewCreated({@required WebViewController webViewController}) = CmsContentWebViewCreated;
  const factory UserLoginEvent.cmsContentPageFinishedLoading() = CmsContentPageFinishedLoading;
}