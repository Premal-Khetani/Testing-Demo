// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserLoginResponseTearOff {
  const _$UserLoginResponseTearOff();

// ignore: unused_element
  _UserLoginResponse call({@required User user, @required Token token}) {
    return _UserLoginResponse(
      user: user,
      token: token,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserLoginResponse = _$UserLoginResponseTearOff();

/// @nodoc
mixin _$UserLoginResponse {
  User get user;
  Token get token;

  $UserLoginResponseCopyWith<UserLoginResponse> get copyWith;
}

/// @nodoc
abstract class $UserLoginResponseCopyWith<$Res> {
  factory $UserLoginResponseCopyWith(
          UserLoginResponse value, $Res Function(UserLoginResponse) then) =
      _$UserLoginResponseCopyWithImpl<$Res>;
  $Res call({User user, Token token});

  $UserCopyWith<$Res> get user;
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$UserLoginResponseCopyWithImpl<$Res>
    implements $UserLoginResponseCopyWith<$Res> {
  _$UserLoginResponseCopyWithImpl(this._value, this._then);

  final UserLoginResponse _value;
  // ignore: unused_field
  final $Res Function(UserLoginResponse) _then;

  @override
  $Res call({
    Object user = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      token: token == freezed ? _value.token : token as Token,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $TokenCopyWith<$Res> get token {
    if (_value.token == null) {
      return null;
    }
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc
abstract class _$UserLoginResponseCopyWith<$Res>
    implements $UserLoginResponseCopyWith<$Res> {
  factory _$UserLoginResponseCopyWith(
          _UserLoginResponse value, $Res Function(_UserLoginResponse) then) =
      __$UserLoginResponseCopyWithImpl<$Res>;
  @override
  $Res call({User user, Token token});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$UserLoginResponseCopyWithImpl<$Res>
    extends _$UserLoginResponseCopyWithImpl<$Res>
    implements _$UserLoginResponseCopyWith<$Res> {
  __$UserLoginResponseCopyWithImpl(
      _UserLoginResponse _value, $Res Function(_UserLoginResponse) _then)
      : super(_value, (v) => _then(v as _UserLoginResponse));

  @override
  _UserLoginResponse get _value => super._value as _UserLoginResponse;

  @override
  $Res call({
    Object user = freezed,
    Object token = freezed,
  }) {
    return _then(_UserLoginResponse(
      user: user == freezed ? _value.user : user as User,
      token: token == freezed ? _value.token : token as Token,
    ));
  }
}

/// @nodoc
class _$_UserLoginResponse
    with DiagnosticableTreeMixin
    implements _UserLoginResponse {
  const _$_UserLoginResponse({@required this.user, @required this.token})
      : assert(user != null),
        assert(token != null);

  @override
  final User user;
  @override
  final Token token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserLoginResponse(user: $user, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserLoginResponse'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoginResponse &&
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
  _$UserLoginResponseCopyWith<_UserLoginResponse> get copyWith =>
      __$UserLoginResponseCopyWithImpl<_UserLoginResponse>(this, _$identity);
}

abstract class _UserLoginResponse implements UserLoginResponse {
  const factory _UserLoginResponse(
      {@required User user, @required Token token}) = _$_UserLoginResponse;

  @override
  User get user;
  @override
  Token get token;
  @override
  _$UserLoginResponseCopyWith<_UserLoginResponse> get copyWith;
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required int id,
      @required String name,
      String firstName,
      String lastName,
      String inserts,
      @required String email,
      String accountType,
      String company,
      @required List<UserRole> roles}) {
    return _User(
      id: id,
      name: name,
      firstName: firstName,
      lastName: lastName,
      inserts: inserts,
      email: email,
      accountType: accountType,
      company: company,
      roles: roles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id;
  String get name;
  String get firstName;
  String get lastName;
  String get inserts;
  String get email;
  String get accountType;
  String get company;
  List<UserRole> get roles;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String firstName,
      String lastName,
      String inserts,
      String email,
      String accountType,
      String company,
      List<UserRole> roles});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object inserts = freezed,
    Object email = freezed,
    Object accountType = freezed,
    Object company = freezed,
    Object roles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      inserts: inserts == freezed ? _value.inserts : inserts as String,
      email: email == freezed ? _value.email : email as String,
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
      company: company == freezed ? _value.company : company as String,
      roles: roles == freezed ? _value.roles : roles as List<UserRole>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String firstName,
      String lastName,
      String inserts,
      String email,
      String accountType,
      String company,
      List<UserRole> roles});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object inserts = freezed,
    Object email = freezed,
    Object accountType = freezed,
    Object company = freezed,
    Object roles = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      inserts: inserts == freezed ? _value.inserts : inserts as String,
      email: email == freezed ? _value.email : email as String,
      accountType:
          accountType == freezed ? _value.accountType : accountType as String,
      company: company == freezed ? _value.company : company as String,
      roles: roles == freezed ? _value.roles : roles as List<UserRole>,
    ));
  }
}

/// @nodoc
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      this.firstName,
      this.lastName,
      this.inserts,
      @required this.email,
      this.accountType,
      this.company,
      @required this.roles})
      : assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(roles != null);

  @override
  final int id;
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String inserts;
  @override
  final String email;
  @override
  final String accountType;
  @override
  final String company;
  @override
  final List<UserRole> roles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, firstName: $firstName, lastName: $lastName, inserts: $inserts, email: $email, accountType: $accountType, company: $company, roles: $roles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('inserts', inserts))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('accountType', accountType))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('roles', roles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.inserts, inserts) ||
                const DeepCollectionEquality()
                    .equals(other.inserts, inserts)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)) &&
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
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(inserts) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(accountType) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(roles);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required int id,
      @required String name,
      String firstName,
      String lastName,
      String inserts,
      @required String email,
      String accountType,
      String company,
      @required List<UserRole> roles}) = _$_User;

  @override
  int get id;
  @override
  String get name;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get inserts;
  @override
  String get email;
  @override
  String get accountType;
  @override
  String get company;
  @override
  List<UserRole> get roles;
  @override
  _$UserCopyWith<_User> get copyWith;
}

/// @nodoc
class _$UserRoleTearOff {
  const _$UserRoleTearOff();

// ignore: unused_element
  _UserRole call({@required String name}) {
    return _UserRole(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserRole = _$UserRoleTearOff();

/// @nodoc
mixin _$UserRole {
  String get name;

  $UserRoleCopyWith<UserRole> get copyWith;
}

/// @nodoc
abstract class $UserRoleCopyWith<$Res> {
  factory $UserRoleCopyWith(UserRole value, $Res Function(UserRole) then) =
      _$UserRoleCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$UserRoleCopyWithImpl<$Res> implements $UserRoleCopyWith<$Res> {
  _$UserRoleCopyWithImpl(this._value, this._then);

  final UserRole _value;
  // ignore: unused_field
  final $Res Function(UserRole) _then;

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
abstract class _$UserRoleCopyWith<$Res> implements $UserRoleCopyWith<$Res> {
  factory _$UserRoleCopyWith(_UserRole value, $Res Function(_UserRole) then) =
      __$UserRoleCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$UserRoleCopyWithImpl<$Res> extends _$UserRoleCopyWithImpl<$Res>
    implements _$UserRoleCopyWith<$Res> {
  __$UserRoleCopyWithImpl(_UserRole _value, $Res Function(_UserRole) _then)
      : super(_value, (v) => _then(v as _UserRole));

  @override
  _UserRole get _value => super._value as _UserRole;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_UserRole(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_UserRole with DiagnosticableTreeMixin implements _UserRole {
  const _$_UserRole({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRole(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRole'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRole &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$UserRoleCopyWith<_UserRole> get copyWith =>
      __$UserRoleCopyWithImpl<_UserRole>(this, _$identity);
}

abstract class _UserRole implements UserRole {
  const factory _UserRole({@required String name}) = _$_UserRole;

  @override
  String get name;
  @override
  _$UserRoleCopyWith<_UserRole> get copyWith;
}

/// @nodoc
class _$TokenTearOff {
  const _$TokenTearOff();

// ignore: unused_element
  _Token call(
      {@required String tokenType,
      @required int expiresIn,
      @required String accessToken,
      @required String refreshToken}) {
    return _Token(
      tokenType: tokenType,
      expiresIn: expiresIn,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Token = _$TokenTearOff();

/// @nodoc
mixin _$Token {
  String get tokenType;
  int get expiresIn;
  String get accessToken;
  String get refreshToken;

  $TokenCopyWith<Token> get copyWith;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {String tokenType,
      int expiresIn,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

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
abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String tokenType,
      int expiresIn,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object tokenType = freezed,
    Object expiresIn = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_Token(
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
class _$_Token with DiagnosticableTreeMixin implements _Token {
  const _$_Token(
      {@required this.tokenType,
      @required this.expiresIn,
      @required this.accessToken,
      @required this.refreshToken})
      : assert(tokenType != null),
        assert(expiresIn != null),
        assert(accessToken != null),
        assert(refreshToken != null);

  @override
  final String tokenType;
  @override
  final int expiresIn;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Token(tokenType: $tokenType, expiresIn: $expiresIn, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Token'))
      ..add(DiagnosticsProperty('tokenType', tokenType))
      ..add(DiagnosticsProperty('expiresIn', expiresIn))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Token &&
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
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);
}

abstract class _Token implements Token {
  const factory _Token(
      {@required String tokenType,
      @required int expiresIn,
      @required String accessToken,
      @required String refreshToken}) = _$_Token;

  @override
  String get tokenType;
  @override
  int get expiresIn;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  _$TokenCopyWith<_Token> get copyWith;
}
