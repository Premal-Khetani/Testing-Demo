// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_register_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserRegisterPostBodyModel _$UserRegisterPostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _UserRegisterPostBodyModel.fromJson(json);
}

/// @nodoc
class _$UserRegisterPostBodyModelTearOff {
  const _$UserRegisterPostBodyModelTearOff();

// ignore: unused_element
  _UserRegisterPostBodyModel call(
      {@required @JsonKey(name: 'account_type') String accountType,
      String company,
      @JsonKey(name: 'coc_number') String cocNumber,
      @required String sex,
      @required @JsonKey(name: 'first_name') String firstName,
      String inserts,
      @required @JsonKey(name: 'last_name') String surname,
      @JsonKey(name: 'zip_code') String zipCode,
      @required @JsonKey(name: 'street_number') int streetNumber,
      String addition,
      @required String street,
      @required String city,
      @required String country,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'alt_phone_number') String alternativePhoneNumber,
      @required String email,
      String password,
      @JsonKey(name: 'confirm_password') String confirmPassword}) {
    return _UserRegisterPostBodyModel(
      accountType: accountType,
      company: company,
      cocNumber: cocNumber,
      sex: sex,
      firstName: firstName,
      inserts: inserts,
      surname: surname,
      zipCode: zipCode,
      streetNumber: streetNumber,
      addition: addition,
      street: street,
      city: city,
      country: country,
      phoneNumber: phoneNumber,
      alternativePhoneNumber: alternativePhoneNumber,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

// ignore: unused_element
  UserRegisterPostBodyModel fromJson(Map<String, Object> json) {
    return UserRegisterPostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserRegisterPostBodyModel = _$UserRegisterPostBodyModelTearOff();

/// @nodoc
mixin _$UserRegisterPostBodyModel {
  @JsonKey(name: 'account_type')
  String get accountType;
  String get company;
  @JsonKey(name: 'coc_number')
  String get cocNumber;
  String get sex;
  @JsonKey(name: 'first_name')
  String get firstName;
  String get inserts;
  @JsonKey(name: 'last_name')
  String get surname;
  @JsonKey(name: 'zip_code')
  String get zipCode;
  @JsonKey(name: 'street_number')
  int get streetNumber;
  String get addition;
  String get street;
  String get city;
  String get country;
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @JsonKey(name: 'alt_phone_number')
  String get alternativePhoneNumber; // @required String language,
  String get email;
  String get password;
  @JsonKey(name: 'confirm_password')
  String get confirmPassword;

  Map<String, dynamic> toJson();
  $UserRegisterPostBodyModelCopyWith<UserRegisterPostBodyModel> get copyWith;
}

/// @nodoc
abstract class $UserRegisterPostBodyModelCopyWith<$Res> {
  factory $UserRegisterPostBodyModelCopyWith(UserRegisterPostBodyModel value,
          $Res Function(UserRegisterPostBodyModel) then) =
      _$UserRegisterPostBodyModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'account_type') String accountType,
      String company,
      @JsonKey(name: 'coc_number') String cocNumber,
      String sex,
      @JsonKey(name: 'first_name') String firstName,
      String inserts,
      @JsonKey(name: 'last_name') String surname,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'street_number') int streetNumber,
      String addition,
      String street,
      String city,
      String country,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'alt_phone_number') String alternativePhoneNumber,
      String email,
      String password,
      @JsonKey(name: 'confirm_password') String confirmPassword});
}

/// @nodoc
class _$UserRegisterPostBodyModelCopyWithImpl<$Res>
    implements $UserRegisterPostBodyModelCopyWith<$Res> {
  _$UserRegisterPostBodyModelCopyWithImpl(this._value, this._then);

  final UserRegisterPostBodyModel _value;
  // ignore: unused_field
  final $Res Function(UserRegisterPostBodyModel) _then;

  @override
  $Res call({
    Object accountType = freezed,
    Object company = freezed,
    Object cocNumber = freezed,
    Object sex = freezed,
    Object firstName = freezed,
    Object inserts = freezed,
    Object surname = freezed,
    Object zipCode = freezed,
    Object streetNumber = freezed,
    Object addition = freezed,
    Object street = freezed,
    Object city = freezed,
    Object country = freezed,
    Object phoneNumber = freezed,
    Object alternativePhoneNumber = freezed,
    Object email = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
      company: company == freezed ? _value.company : company as String,
      cocNumber: cocNumber == freezed ? _value.cocNumber : cocNumber as String,
      sex: sex == freezed ? _value.sex : sex as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      inserts: inserts == freezed ? _value.inserts : inserts as String,
      surname: surname == freezed ? _value.surname : surname as String,
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as String,
      streetNumber:
          streetNumber == freezed ? _value.streetNumber : streetNumber as int,
      addition: addition == freezed ? _value.addition : addition as String,
      street: street == freezed ? _value.street : street as String,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      alternativePhoneNumber: alternativePhoneNumber == freezed
          ? _value.alternativePhoneNumber
          : alternativePhoneNumber as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRegisterPostBodyModelCopyWith<$Res>
    implements $UserRegisterPostBodyModelCopyWith<$Res> {
  factory _$UserRegisterPostBodyModelCopyWith(_UserRegisterPostBodyModel value,
          $Res Function(_UserRegisterPostBodyModel) then) =
      __$UserRegisterPostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'account_type') String accountType,
      String company,
      @JsonKey(name: 'coc_number') String cocNumber,
      String sex,
      @JsonKey(name: 'first_name') String firstName,
      String inserts,
      @JsonKey(name: 'last_name') String surname,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'street_number') int streetNumber,
      String addition,
      String street,
      String city,
      String country,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'alt_phone_number') String alternativePhoneNumber,
      String email,
      String password,
      @JsonKey(name: 'confirm_password') String confirmPassword});
}

/// @nodoc
class __$UserRegisterPostBodyModelCopyWithImpl<$Res>
    extends _$UserRegisterPostBodyModelCopyWithImpl<$Res>
    implements _$UserRegisterPostBodyModelCopyWith<$Res> {
  __$UserRegisterPostBodyModelCopyWithImpl(_UserRegisterPostBodyModel _value,
      $Res Function(_UserRegisterPostBodyModel) _then)
      : super(_value, (v) => _then(v as _UserRegisterPostBodyModel));

  @override
  _UserRegisterPostBodyModel get _value =>
      super._value as _UserRegisterPostBodyModel;

  @override
  $Res call({
    Object accountType = freezed,
    Object company = freezed,
    Object cocNumber = freezed,
    Object sex = freezed,
    Object firstName = freezed,
    Object inserts = freezed,
    Object surname = freezed,
    Object zipCode = freezed,
    Object streetNumber = freezed,
    Object addition = freezed,
    Object street = freezed,
    Object city = freezed,
    Object country = freezed,
    Object phoneNumber = freezed,
    Object alternativePhoneNumber = freezed,
    Object email = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
  }) {
    return _then(_UserRegisterPostBodyModel(
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
      company: company == freezed ? _value.company : company as String,
      cocNumber: cocNumber == freezed ? _value.cocNumber : cocNumber as String,
      sex: sex == freezed ? _value.sex : sex as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      inserts: inserts == freezed ? _value.inserts : inserts as String,
      surname: surname == freezed ? _value.surname : surname as String,
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as String,
      streetNumber:
          streetNumber == freezed ? _value.streetNumber : streetNumber as int,
      addition: addition == freezed ? _value.addition : addition as String,
      street: street == freezed ? _value.street : street as String,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      alternativePhoneNumber: alternativePhoneNumber == freezed
          ? _value.alternativePhoneNumber
          : alternativePhoneNumber as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserRegisterPostBodyModel extends _UserRegisterPostBodyModel {
  const _$_UserRegisterPostBodyModel(
      {@required @JsonKey(name: 'account_type') this.accountType,
      this.company,
      @JsonKey(name: 'coc_number') this.cocNumber,
      @required this.sex,
      @required @JsonKey(name: 'first_name') this.firstName,
      this.inserts,
      @required @JsonKey(name: 'last_name') this.surname,
      @JsonKey(name: 'zip_code') this.zipCode,
      @required @JsonKey(name: 'street_number') this.streetNumber,
      this.addition,
      @required this.street,
      @required this.city,
      @required this.country,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'alt_phone_number') this.alternativePhoneNumber,
      @required this.email,
      this.password,
      @JsonKey(name: 'confirm_password') this.confirmPassword})
      : assert(accountType != null),
        assert(sex != null),
        assert(firstName != null),
        assert(surname != null),
        assert(streetNumber != null),
        assert(street != null),
        assert(city != null),
        assert(country != null),
        assert(email != null),
        super._();

  factory _$_UserRegisterPostBodyModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRegisterPostBodyModelFromJson(json);

  @override
  @JsonKey(name: 'account_type')
  final String accountType;
  @override
  final String company;
  @override
  @JsonKey(name: 'coc_number')
  final String cocNumber;
  @override
  final String sex;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  final String inserts;
  @override
  @JsonKey(name: 'last_name')
  final String surname;
  @override
  @JsonKey(name: 'zip_code')
  final String zipCode;
  @override
  @JsonKey(name: 'street_number')
  final int streetNumber;
  @override
  final String addition;
  @override
  final String street;
  @override
  final String city;
  @override
  final String country;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'alt_phone_number')
  final String alternativePhoneNumber;
  @override // @required String language,
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;

  @override
  String toString() {
    return 'UserRegisterPostBodyModel(accountType: $accountType, company: $company, cocNumber: $cocNumber, sex: $sex, firstName: $firstName, inserts: $inserts, surname: $surname, zipCode: $zipCode, streetNumber: $streetNumber, addition: $addition, street: $street, city: $city, country: $country, phoneNumber: $phoneNumber, alternativePhoneNumber: $alternativePhoneNumber, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegisterPostBodyModel &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.cocNumber, cocNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cocNumber, cocNumber)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.inserts, inserts) ||
                const DeepCollectionEquality()
                    .equals(other.inserts, inserts)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality()
                    .equals(other.zipCode, zipCode)) &&
            (identical(other.streetNumber, streetNumber) ||
                const DeepCollectionEquality()
                    .equals(other.streetNumber, streetNumber)) &&
            (identical(other.addition, addition) ||
                const DeepCollectionEquality()
                    .equals(other.addition, addition)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.alternativePhoneNumber, alternativePhoneNumber) ||
                const DeepCollectionEquality().equals(
                    other.alternativePhoneNumber, alternativePhoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountType) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(cocNumber) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(inserts) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(streetNumber) ^
      const DeepCollectionEquality().hash(addition) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(alternativePhoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword);

  @override
  _$UserRegisterPostBodyModelCopyWith<_UserRegisterPostBodyModel>
      get copyWith =>
          __$UserRegisterPostBodyModelCopyWithImpl<_UserRegisterPostBodyModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRegisterPostBodyModelToJson(this);
  }
}

abstract class _UserRegisterPostBodyModel extends UserRegisterPostBodyModel {
  const _UserRegisterPostBodyModel._() : super._();
  const factory _UserRegisterPostBodyModel(
          {@required @JsonKey(name: 'account_type') String accountType,
          String company,
          @JsonKey(name: 'coc_number') String cocNumber,
          @required String sex,
          @required @JsonKey(name: 'first_name') String firstName,
          String inserts,
          @required @JsonKey(name: 'last_name') String surname,
          @JsonKey(name: 'zip_code') String zipCode,
          @required @JsonKey(name: 'street_number') int streetNumber,
          String addition,
          @required String street,
          @required String city,
          @required String country,
          @JsonKey(name: 'phone_number') String phoneNumber,
          @JsonKey(name: 'alt_phone_number') String alternativePhoneNumber,
          @required String email,
          String password,
          @JsonKey(name: 'confirm_password') String confirmPassword}) =
      _$_UserRegisterPostBodyModel;

  factory _UserRegisterPostBodyModel.fromJson(Map<String, dynamic> json) =
      _$_UserRegisterPostBodyModel.fromJson;

  @override
  @JsonKey(name: 'account_type')
  String get accountType;
  @override
  String get company;
  @override
  @JsonKey(name: 'coc_number')
  String get cocNumber;
  @override
  String get sex;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  String get inserts;
  @override
  @JsonKey(name: 'last_name')
  String get surname;
  @override
  @JsonKey(name: 'zip_code')
  String get zipCode;
  @override
  @JsonKey(name: 'street_number')
  int get streetNumber;
  @override
  String get addition;
  @override
  String get street;
  @override
  String get city;
  @override
  String get country;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'alt_phone_number')
  String get alternativePhoneNumber;
  @override // @required String language,
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'confirm_password')
  String get confirmPassword;
  @override
  _$UserRegisterPostBodyModelCopyWith<_UserRegisterPostBodyModel> get copyWith;
}
