part of 'user_register_bloc.dart';

@freezed
abstract class UserRegisterEvent with _$UserRegisterEvent {
  const factory UserRegisterEvent.createAccount() = CreateAcount;
  const factory UserRegisterEvent.cancelCreatingAccount() = CancelCreatingAccount;
  const factory UserRegisterEvent.accountTypeRadioButtonChanged({@required String value}) = AccountTypeRadioButtonChanged;
  const factory UserRegisterEvent.mrOrMrsRadioButtonChanged({@required String value}) = MrOrMrsRadioButtonChanged;
  const factory UserRegisterEvent.companyChanged({@required String value}) = CompanyChanged;
  const factory UserRegisterEvent.cocNumberChanged({@required String value}) = CocNumberChanged;
  const factory UserRegisterEvent.firstNameChanged({@required String value}) = FirstNameChanged;
  const factory UserRegisterEvent.insertsChanged({@required String value}) = InsertsChanged;
  const factory UserRegisterEvent.surnameChanged({@required String value}) = SurnameChanged;
  const factory UserRegisterEvent.zipCodeChanged({@required String value}) = ZipCodeChanged;
  const factory UserRegisterEvent.streetNumberChanged({@required String value}) = StreetNumberChanged;
  const factory UserRegisterEvent.additionChanged({@required String value}) = AditionChanged;
  const factory UserRegisterEvent.streetChanged({@required String value}) = StreetChanged;
  const factory UserRegisterEvent.cityChanged({@required String value}) = CityChanged;
  const factory UserRegisterEvent.countryChanged({@required String value}) = CountryChanged;
  const factory UserRegisterEvent.phoneNumberChanged({@required String value}) = PhoneNumberChanged;
  const factory UserRegisterEvent.alternativePhoneNumberChanged({@required String value}) = AlternativePhoneNumberChanged;
  const factory UserRegisterEvent.languageChanged({@required String value}) = LanguageChanged;
  const factory UserRegisterEvent.emailChanged({@required String value}) = EmailChanged;
  const factory UserRegisterEvent.passwordChanged({@required String value}) = PasswordChanged;
  const factory UserRegisterEvent.validatePassword() = ValidatePassword;
  const factory UserRegisterEvent.confirmPasswordChanged({@required String value}) = ConfirmPasswordChanged;
  const factory UserRegisterEvent.termsAndConditionsChanged({@required bool value}) = TermsAndConditionsChanged;
  const factory UserRegisterEvent.autoPopulateStreetAndCity() = AutoPopulateStreetAndCity;
  const factory UserRegisterEvent.close() = Close;
  const factory UserRegisterEvent.onRetryTapped() = OnRetryTapped;
}