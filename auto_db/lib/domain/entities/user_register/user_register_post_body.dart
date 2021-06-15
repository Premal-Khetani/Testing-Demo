import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_post_body.freezed.dart';

@freezed
abstract class UserRegisterPostBody with _$UserRegisterPostBody {
  const factory UserRegisterPostBody({
    @required String accountType,
    String company, 
    String cocNumber,
    @required String sex,
    @required String firstName,
    String inserts,
    @required String surname,
    String zipCode,
    @required int streetNumber,
    String addition,
    @required String street,
    @required String city,
    @required String country,
    String phoneNumber,
    String alternativePhoneNumber,
    // @required String language,
    @required String email,
    String password,
    String confirmPassword
  }) = _UserRegisterPostBody;
}