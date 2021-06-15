part of 'user_register_bloc.dart';

@freezed
abstract class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState({
    @required RadioButton accountTypeRadioButton,
    @required Company company,
    @required CoCNumber cocNumber,
    @required RadioButton mrOrMrsRadioButton,
    @required FirstName firstName,
    @required Inserts inserts,
    @required Surname surname,
    @required ZipCode zipCode,
    @required StreetNumber streetNumber,
    @required Addition addition,
    @required Street street,
    @required City city,
    @required Country country,
    @required PhoneNumber phoneNumber,
    @required PhoneNumber alternativePhoneNumber,
    // @required Language language,
    @required Email email,
    @required PasswordWithValidationsRules password,
    @required Password passwordConfirm,
    @required bool isTermsAndConditionsAccepted,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _UserRegisterState;

  factory UserRegisterState.initial() => UserRegisterState(
    accountTypeRadioButton: RadioButton(
      options: [StringConstants.private ,StringConstants.business],
      value: StringConstants.private
    ),
    company: Company.initial(),
    cocNumber: CoCNumber.initial(),
    mrOrMrsRadioButton: RadioButton(
      options: [StringConstants.mr ,StringConstants.mrs],
      value: StringConstants.mr
    ),
    firstName: FirstName.initial(),
    inserts: Inserts.initial(),
    surname: Surname.initial(),
    zipCode: ZipCode.initial(),
    streetNumber: StreetNumber.initial(),
    addition: Addition.initial(),
    street: Street.initial(),
    city: City.initial(),
    country: Country.initial(),
    phoneNumber: PhoneNumber.initial(),
    alternativePhoneNumber: PhoneNumber.initial(),
    // language: Language(
    //   options: [StringConstants.english, StringConstants.dutch],
    //   value: null,
    //   errorMessage: ''
    // ),
    email: Email.initial(),
    password: PasswordWithValidationsRules.initial(),
    passwordConfirm: Password.initial(),
    isTermsAndConditionsAccepted: false,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}