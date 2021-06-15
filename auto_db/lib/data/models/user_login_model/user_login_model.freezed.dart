// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserLoginModel _$UserLoginModelFromJson(Map<String, dynamic> json) {
  return _UserLoginModel.fromJson(json);
}

/// @nodoc
class _$UserLoginModelTearOff {
  const _$UserLoginModelTearOff();

// ignore: unused_element
  _UserLoginModel call({@required String email, @required String password}) {
    return _UserLoginModel(
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  UserLoginModel fromJson(Map<String, Object> json) {
    return UserLoginModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserLoginModel = _$UserLoginModelTearOff();

/// @nodoc
mixin _$UserLoginModel {
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $UserLoginModelCopyWith<UserLoginModel> get copyWith;
}

/// @nodoc
abstract class $UserLoginModelCopyWith<$Res> {
  factory $UserLoginModelCopyWith(
          UserLoginModel value, $Res Function(UserLoginModel) then) =
      _$UserLoginModelCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoginModelCopyWithImpl<$Res>
    implements $UserLoginModelCopyWith<$Res> {
  _$UserLoginModelCopyWithImpl(this._value, this._then);

  final UserLoginModel _value;
  // ignore: unused_field
  final $Res Function(UserLoginModel) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$UserLoginModelCopyWith<$Res>
    implements $UserLoginModelCopyWith<$Res> {
  factory _$UserLoginModelCopyWith(
          _UserLoginModel value, $Res Function(_UserLoginModel) then) =
      __$UserLoginModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$UserLoginModelCopyWithImpl<$Res>
    extends _$UserLoginModelCopyWithImpl<$Res>
    implements _$UserLoginModelCopyWith<$Res> {
  __$UserLoginModelCopyWithImpl(
      _UserLoginModel _value, $Res Function(_UserLoginModel) _then)
      : super(_value, (v) => _then(v as _UserLoginModel));

  @override
  _UserLoginModel get _value => super._value as _UserLoginModel;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_UserLoginModel(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserLoginModel extends _UserLoginModel {
  const _$_UserLoginModel({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null),
        super._();

  factory _$_UserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLoginModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoginModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$UserLoginModelCopyWith<_UserLoginModel> get copyWith =>
      __$UserLoginModelCopyWithImpl<_UserLoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLoginModelToJson(this);
  }
}

abstract class _UserLoginModel extends UserLoginModel {
  const _UserLoginModel._() : super._();
  const factory _UserLoginModel(
      {@required String email, @required String password}) = _$_UserLoginModel;

  factory _UserLoginModel.fromJson(Map<String, dynamic> json) =
      _$_UserLoginModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  _$UserLoginModelCopyWith<_UserLoginModel> get copyWith;
}
