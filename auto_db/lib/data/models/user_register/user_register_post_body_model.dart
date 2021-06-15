import 'package:auto_db/domain/entities/user_register/user_register_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_post_body_model.freezed.dart';
part 'user_register_post_body_model.g.dart';

@freezed
abstract class UserRegisterPostBodyModel with _$UserRegisterPostBodyModel {
  const UserRegisterPostBodyModel._();

  const factory UserRegisterPostBodyModel(
          {@JsonKey(name: 'account_type') @required String accountType,
          String company,
          @JsonKey(name: 'coc_number') String cocNumber,
          @required String sex,
          @JsonKey(name: 'first_name') @required String firstName,
          String inserts,
          @JsonKey(name: 'last_name') @required String surname,
          @JsonKey(name: 'zip_code') String zipCode,
          @JsonKey(name: 'street_number') @required int streetNumber,
          String addition,
          @required String street,
          @required String city,
          @required String country,
          @JsonKey(name: 'phone_number') String phoneNumber,
          @JsonKey(name: 'alt_phone_number') String alternativePhoneNumber,
          // @required String language,
          @required String email,
          String password,
          @JsonKey(name: 'confirm_password') String confirmPassword}) =
      _UserRegisterPostBodyModel;

  factory UserRegisterPostBodyModel.fromDomain(
      UserRegisterPostBody userRegisterPostBody) {
    return UserRegisterPostBodyModel(
        accountType: userRegisterPostBody.accountType,
        company: userRegisterPostBody.company,
        cocNumber: userRegisterPostBody.cocNumber,
        sex: userRegisterPostBody.sex,
        firstName: userRegisterPostBody.firstName,
        inserts: userRegisterPostBody.inserts,
        surname: userRegisterPostBody.surname,
        zipCode: userRegisterPostBody.zipCode,
        streetNumber: userRegisterPostBody.streetNumber,
        addition: userRegisterPostBody.addition,
        street: userRegisterPostBody.street,
        city: userRegisterPostBody.city,
        country: userRegisterPostBody.country,
        phoneNumber: userRegisterPostBody.phoneNumber,
        alternativePhoneNumber: userRegisterPostBody.alternativePhoneNumber,
        // language: userRegisterPostBody.language,
        email: userRegisterPostBody.email,
        password: userRegisterPostBody.password,
        confirmPassword: userRegisterPostBody.confirmPassword);
  }

  UserRegisterPostBody toDomain() {
    final userRegisterPostBody = this;
    return UserRegisterPostBody(
        accountType: userRegisterPostBody.accountType,
        company: userRegisterPostBody.company,
        cocNumber: userRegisterPostBody.cocNumber,
        sex: userRegisterPostBody.sex,
        firstName: userRegisterPostBody.firstName,
        inserts: userRegisterPostBody.inserts,
        surname: userRegisterPostBody.surname,
        zipCode: userRegisterPostBody.zipCode,
        streetNumber: userRegisterPostBody.streetNumber,
        addition: userRegisterPostBody.addition,
        street: userRegisterPostBody.street,
        city: userRegisterPostBody.city,
        country: userRegisterPostBody.country,
        phoneNumber: userRegisterPostBody.phoneNumber,
        alternativePhoneNumber: userRegisterPostBody.alternativePhoneNumber,
        // language: userRegisterPostBody.language,
        email: userRegisterPostBody.email,
        password: userRegisterPostBody.password,
        confirmPassword: userRegisterPostBody.confirmPassword);
  }

  factory UserRegisterPostBodyModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterPostBodyModelFromJson(json);
}
