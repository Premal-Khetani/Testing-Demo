import 'package:auto_db/domain/entities/user_login/user_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_model.freezed.dart';
part 'user_login_model.g.dart';

@freezed
abstract class UserLoginModel with _$UserLoginModel {
  const UserLoginModel._();

  const factory UserLoginModel({
    @required String email, 
    @required String password,
  }) = _UserLoginModel;

  factory UserLoginModel.fromDomain(UserLogin userLogin){
    return UserLoginModel(
      email: userLogin.email,
      password: userLogin.password
    );
  }

  factory UserLoginModel.fromJson(Map<String, dynamic> json) =>_$UserLoginModelFromJson(json);
}