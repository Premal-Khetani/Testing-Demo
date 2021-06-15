// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserLoginResponseModel _$UserLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserLoginResponseModel.fromJson(json);
}

/// @nodoc
class _$UserLoginResponseModelTearOff {
  const _$UserLoginResponseModelTearOff();

// ignore: unused_element
  _UserLoginResponseModel call(
      {@required UserModel user, @required TokenModel token}) {
    return _UserLoginResponseModel(
      user: user,
      token: token,
    );
  }

// ignore: unused_element
  UserLoginResponseModel fromJson(Map<String, Object> json) {
    return UserLoginResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserLoginResponseModel = _$UserLoginResponseModelTearOff();

/// @nodoc
mixin _$UserLoginResponseModel {
  UserModel get user;
  TokenModel get token;

  Map<String, dynamic> toJson();
  $UserLoginResponseModelCopyWith<UserLoginResponseModel> get copyWith;
}

/// @nodoc
abstract class $UserLoginResponseModelCopyWith<$Res> {
  factory $UserLoginResponseModelCopyWith(UserLoginResponseModel value,
          $Res Function(UserLoginResponseModel) then) =
      _$UserLoginResponseModelCopyWithImpl<$Res>;
  $Res call({UserModel user, TokenModel token});

  $UserModelCopyWith<$Res> get user;
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class _$UserLoginResponseModelCopyWithImpl<$Res>
    implements $UserLoginResponseModelCopyWith<$Res> {
  _$UserLoginResponseModelCopyWithImpl(this._value, this._then);

  final UserLoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(UserLoginResponseModel) _then;

  @override
  $Res call({
    Object user = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserModel,
      token: token == freezed ? _value.token : token as TokenModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $TokenModelCopyWith<$Res> get token {
    if (_value.token == null) {
      return null;
    }
    return $TokenModelCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc
abstract class _$UserLoginResponseModelCopyWith<$Res>
    implements $UserLoginResponseModelCopyWith<$Res> {
  factory _$UserLoginResponseModelCopyWith(_UserLoginResponseModel value,
          $Res Function(_UserLoginResponseModel) then) =
      __$UserLoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user, TokenModel token});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$UserLoginResponseModelCopyWithImpl<$Res>
    extends _$UserLoginResponseModelCopyWithImpl<$Res>
    implements _$UserLoginResponseModelCopyWith<$Res> {
  __$UserLoginResponseModelCopyWithImpl(_UserLoginResponseModel _value,
      $Res Function(_UserLoginResponseModel) _then)
      : super(_value, (v) => _then(v as _UserLoginResponseModel));

  @override
  _UserLoginResponseModel get _value => super._value as _UserLoginResponseModel;

  @override
  $Res call({
    Object user = freezed,
    Object token = freezed,
  }) {
    return _then(_UserLoginResponseModel(
      user: user == freezed ? _value.user : user as UserModel,
      token: token == freezed ? _value.token : token as TokenModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserLoginResponseModel extends _UserLoginResponseModel {
  const _$_UserLoginResponseModel({@required this.user, @required this.token})
      : assert(user != null),
        assert(token != null),
        super._();

  factory _$_UserLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLoginResponseModelFromJson(json);

  @override
  final UserModel user;
  @override
  final TokenModel token;

  @override
  String toString() {
    return 'UserLoginResponseModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoginResponseModel &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$UserLoginResponseModelCopyWith<_UserLoginResponseModel> get copyWith =>
      __$UserLoginResponseModelCopyWithImpl<_UserLoginResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLoginResponseModelToJson(this);
  }
}

abstract class _UserLoginResponseModel extends UserLoginResponseModel {
  const _UserLoginResponseModel._() : super._();
  const factory _UserLoginResponseModel(
      {@required UserModel user,
      @required TokenModel token}) = _$_UserLoginResponseModel;

  factory _UserLoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_UserLoginResponseModel.fromJson;

  @override
  UserModel get user;
  @override
  TokenModel get token;
  @override
  _$UserLoginResponseModelCopyWith<_UserLoginResponseModel> get copyWith;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

// ignore: unused_element
  _UserModel call(
      {@required int id,
      @required String name,
      @required String email,
      String inserts,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'company') String company,
      @required List<UserRoleModel> roles}) {
    return _UserModel(
      id: id,
      name: name,
      email: email,
      inserts: inserts,
      accountType: accountType,
      firstName: firstName,
      lastName: lastName,
      company: company,
      roles: roles,
    );
  }

// ignore: unused_element
  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  int get id;
  String get name;
  String get email;
  String get inserts;
  @JsonKey(name: 'account_type')
  String get accountType;
  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String get lastName;
  @JsonKey(name: 'company')
  String get company;
  List<UserRoleModel> get roles;

  Map<String, dynamic> toJson();
  $UserModelCopyWith<UserModel> get copyWith;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String email,
      String inserts,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'company') String company,
      List<UserRoleModel> roles});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object inserts = freezed,
    Object accountType = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object company = freezed,
    Object roles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      inserts: inserts == freezed ? _value.inserts : inserts as String,
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      company: company == freezed ? _value.company : company as String,
      roles: roles == freezed ? _value.roles : roles as List<UserRoleModel>,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String email,
      String inserts,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'company') String company,
      List<UserRoleModel> roles});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object inserts = freezed,
    Object accountType = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object company = freezed,
    Object roles = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      inserts: inserts == freezed ? _value.inserts : inserts as String,
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      company: company == freezed ? _value.company : company as String,
      roles: roles == freezed ? _value.roles : roles as List<UserRoleModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {@required this.id,
      @required this.name,
      @required this.email,
      this.inserts,
      @JsonKey(name: 'account_type') this.accountType,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'company') this.company,
      @required this.roles})
      : assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(roles != null),
        super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String inserts;
  @override
  @JsonKey(name: 'account_type')
  final String accountType;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'company')
  final String company;
  @override
  final List<UserRoleModel> roles;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, inserts: $inserts, accountType: $accountType, firstName: $firstName, lastName: $lastName, company: $company, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.inserts, inserts) ||
                const DeepCollectionEquality()
                    .equals(other.inserts, inserts)) &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(inserts) ^
      const DeepCollectionEquality().hash(accountType) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(roles);

  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel extends UserModel {
  const _UserModel._() : super._();
  const factory _UserModel(
      {@required int id,
      @required String name,
      @required String email,
      String inserts,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'company') String company,
      @required List<UserRoleModel> roles}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get inserts;
  @override
  @JsonKey(name: 'account_type')
  String get accountType;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'company')
  String get company;
  @override
  List<UserRoleModel> get roles;
  @override
  _$UserModelCopyWith<_UserModel> get copyWith;
}

UserRoleModel _$UserRoleModelFromJson(Map<String, dynamic> json) {
  return _UserRoleModel.fromJson(json);
}

/// @nodoc
class _$UserRoleModelTearOff {
  const _$UserRoleModelTearOff();

// ignore: unused_element
  _UserRoleModel call({@required String name}) {
    return _UserRoleModel(
      name: name,
    );
  }

// ignore: unused_element
  UserRoleModel fromJson(Map<String, Object> json) {
    return UserRoleModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserRoleModel = _$UserRoleModelTearOff();

/// @nodoc
mixin _$UserRoleModel {
  String get name;

  Map<String, dynamic> toJson();
  $UserRoleModelCopyWith<UserRoleModel> get copyWith;
}

/// @nodoc
abstract class $UserRoleModelCopyWith<$Res> {
  factory $UserRoleModelCopyWith(
          UserRoleModel value, $Res Function(UserRoleModel) then) =
      _$UserRoleModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$UserRoleModelCopyWithImpl<$Res>
    implements $UserRoleModelCopyWith<$Res> {
  _$UserRoleModelCopyWithImpl(this._value, this._then);

  final UserRoleModel _value;
  // ignore: unused_field
  final $Res Function(UserRoleModel) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRoleModelCopyWith<$Res>
    implements $UserRoleModelCopyWith<$Res> {
  factory _$UserRoleModelCopyWith(
          _UserRoleModel value, $Res Function(_UserRoleModel) then) =
      __$UserRoleModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$UserRoleModelCopyWithImpl<$Res>
    extends _$UserRoleModelCopyWithImpl<$Res>
    implements _$UserRoleModelCopyWith<$Res> {
  __$UserRoleModelCopyWithImpl(
      _UserRoleModel _value, $Res Function(_UserRoleModel) _then)
      : super(_value, (v) => _then(v as _UserRoleModel));

  @override
  _UserRoleModel get _value => super._value as _UserRoleModel;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_UserRoleModel(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserRoleModel extends _UserRoleModel {
  const _$_UserRoleModel({@required this.name})
      : assert(name != null),
        super._();

  factory _$_UserRoleModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRoleModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'UserRoleModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRoleModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$UserRoleModelCopyWith<_UserRoleModel> get copyWith =>
      __$UserRoleModelCopyWithImpl<_UserRoleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRoleModelToJson(this);
  }
}

abstract class _UserRoleModel extends UserRoleModel {
  const _UserRoleModel._() : super._();
  const factory _UserRoleModel({@required String name}) = _$_UserRoleModel;

  factory _UserRoleModel.fromJson(Map<String, dynamic> json) =
      _$_UserRoleModel.fromJson;

  @override
  String get name;
  @override
  _$UserRoleModelCopyWith<_UserRoleModel> get copyWith;
}

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
class _$TokenModelTearOff {
  const _$TokenModelTearOff();

// ignore: unused_element
  _TokenModel call(
      {@required @JsonKey(name: 'token_type') String tokenType,
      @required @JsonKey(name: 'expires_in') int expiresIn,
      @required @JsonKey(name: 'access_token') String accessToken,
      @required @JsonKey(name: 'refresh_token') String refreshToken}) {
    return _TokenModel(
      tokenType: tokenType,
      expiresIn: expiresIn,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

// ignore: unused_element
  TokenModel fromJson(Map<String, Object> json) {
    return TokenModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TokenModel = _$TokenModelTearOff();

/// @nodoc
mixin _$TokenModel {
  @JsonKey(name: 'token_type')
  String get tokenType;
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  Map<String, dynamic> toJson();
  $TokenModelCopyWith<TokenModel> get copyWith;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res> implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

  final TokenModel _value;
  // ignore: unused_field
  final $Res Function(TokenModel) _then;

  @override
  $Res call({
    Object tokenType = freezed,
    Object expiresIn = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

/// @nodoc
abstract class _$TokenModelCopyWith<$Res> implements $TokenModelCopyWith<$Res> {
  factory _$TokenModelCopyWith(
          _TokenModel value, $Res Function(_TokenModel) then) =
      __$TokenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$TokenModelCopyWithImpl<$Res> extends _$TokenModelCopyWithImpl<$Res>
    implements _$TokenModelCopyWith<$Res> {
  __$TokenModelCopyWithImpl(
      _TokenModel _value, $Res Function(_TokenModel) _then)
      : super(_value, (v) => _then(v as _TokenModel));

  @override
  _TokenModel get _value => super._value as _TokenModel;

  @override
  $Res call({
    Object tokenType = freezed,
    Object expiresIn = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_TokenModel(
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TokenModel extends _TokenModel {
  const _$_TokenModel(
      {@required @JsonKey(name: 'token_type') this.tokenType,
      @required @JsonKey(name: 'expires_in') this.expiresIn,
      @required @JsonKey(name: 'access_token') this.accessToken,
      @required @JsonKey(name: 'refresh_token') this.refreshToken})
      : assert(tokenType != null),
        assert(expiresIn != null),
        assert(accessToken != null),
        assert(refreshToken != null),
        super._();

  factory _$_TokenModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenModelFromJson(json);

  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'TokenModel(tokenType: $tokenType, expiresIn: $expiresIn, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenModel &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @override
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      __$TokenModelCopyWithImpl<_TokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenModelToJson(this);
  }
}

abstract class _TokenModel extends TokenModel {
  const _TokenModel._() : super._();
  const factory _TokenModel(
          {@required @JsonKey(name: 'token_type') String tokenType,
          @required @JsonKey(name: 'expires_in') int expiresIn,
          @required @JsonKey(name: 'access_token') String accessToken,
          @required @JsonKey(name: 'refresh_token') String refreshToken}) =
      _$_TokenModel;

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$_TokenModel.fromJson;

  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  _$TokenModelCopyWith<_TokenModel> get copyWith;
}
