import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';

part 'user_login_response_model.freezed.dart';
part 'user_login_response_model.g.dart';

@freezed
abstract class UserLoginResponseModel with _$UserLoginResponseModel {
  const UserLoginResponseModel._();

  const factory UserLoginResponseModel({
    @required UserModel user, 
    @required TokenModel token,
  }) = _UserLoginResponseModel;

  UserLoginResponse toDomain(){
    return UserLoginResponse(
      user: user.toDomain(),
      token: token.toDomain()
    );
  }

  factory UserLoginResponseModel.fromDomain(UserLoginResponse userLoginResponse){
    return UserLoginResponseModel(
      user: UserModel.fromDomain(userLoginResponse.user),
      token: TokenModel.fromDomain(userLoginResponse.token)
    );
  }

  factory UserLoginResponseModel.fromJson(Map<String, dynamic> json) =>_$UserLoginResponseModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @required int id, 
    @required String name,
    @required String email,
    String inserts,
    @JsonKey(name: 'account_type') String accountType,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'company') String company,
    @required List<UserRoleModel> roles
  }) = _UserModel;

  User toDomain(){
    return User(
      id: id,
      name: name,
      email: email,
      inserts: inserts,
      accountType: accountType,
      firstName: firstName,
      lastName: lastName,
      company: company,
      roles: roles == null ? null : roles.map((e) => e.toDomain()).toList()
    );
  }

  factory UserModel.fromDomain(User user){
    return UserModel(
      id: user.id,
      name: user.name,
      email: user.email,
      inserts: user.inserts,
      accountType: user.accountType,
      firstName: user.firstName,
      lastName: user.lastName,
      company: user.company,
      roles: user.roles == null ? null : user.roles.map((e) => UserRoleModel.fromDomain(e)).toList()
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>_$UserModelFromJson(json);
}

@freezed
abstract class UserRoleModel with _$UserRoleModel {
  const UserRoleModel._();

  const factory UserRoleModel({
    @required String name,
  }) = _UserRoleModel;

  UserRole toDomain(){
    return UserRole(
      name: name,
    );
  }

  factory UserRoleModel.fromDomain(UserRole userRole){
    return UserRoleModel(
      name: userRole.name,
    );
  }

  factory UserRoleModel.fromJson(Map<String, dynamic> json) =>_$UserRoleModelFromJson(json);
}

@freezed
abstract class TokenModel with _$TokenModel {
  const TokenModel._();

  const factory TokenModel({
    @JsonKey(name: 'token_type') @required String tokenType,
    @JsonKey(name: 'expires_in') @required int expiresIn,
    @JsonKey(name: 'access_token') @required String accessToken,
    @JsonKey(name: 'refresh_token') @required String refreshToken,
  }) = _TokenModel;

  Token toDomain(){
    return Token(
      tokenType: tokenType,
      expiresIn: expiresIn,
      accessToken: accessToken,
      refreshToken: refreshToken
    );
  }

  factory TokenModel.fromDomain(Token token){
    return TokenModel(
      tokenType: token.tokenType, 
      expiresIn: token.expiresIn, 
      accessToken: token.accessToken, 
      refreshToken: token.refreshToken
    );
  }

  factory TokenModel.fromJson(Map<String, dynamic> json) =>_$TokenModelFromJson(json);
}


