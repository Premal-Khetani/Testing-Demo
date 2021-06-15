// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MailEntity _$MailEntityFromJson(Map<String, dynamic> json) {
  return _MailEntity.fromJson(json);
}

/// @nodoc
class _$MailEntityTearOff {
  const _$MailEntityTearOff();

// ignore: unused_element
  _MailEntity call(
      {@required String email,
      @required String name,
      @required String subject,
      @required String question}) {
    return _MailEntity(
      email: email,
      name: name,
      subject: subject,
      question: question,
    );
  }

// ignore: unused_element
  MailEntity fromJson(Map<String, Object> json) {
    return MailEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MailEntity = _$MailEntityTearOff();

/// @nodoc
mixin _$MailEntity {
  String get email;
  String get name;
  String get subject;
  String get question;

  Map<String, dynamic> toJson();
  $MailEntityCopyWith<MailEntity> get copyWith;
}

/// @nodoc
abstract class $MailEntityCopyWith<$Res> {
  factory $MailEntityCopyWith(
          MailEntity value, $Res Function(MailEntity) then) =
      _$MailEntityCopyWithImpl<$Res>;
  $Res call({String email, String name, String subject, String question});
}

/// @nodoc
class _$MailEntityCopyWithImpl<$Res> implements $MailEntityCopyWith<$Res> {
  _$MailEntityCopyWithImpl(this._value, this._then);

  final MailEntity _value;
  // ignore: unused_field
  final $Res Function(MailEntity) _then;

  @override
  $Res call({
    Object email = freezed,
    Object name = freezed,
    Object subject = freezed,
    Object question = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      subject: subject == freezed ? _value.subject : subject as String,
      question: question == freezed ? _value.question : question as String,
    ));
  }
}

/// @nodoc
abstract class _$MailEntityCopyWith<$Res> implements $MailEntityCopyWith<$Res> {
  factory _$MailEntityCopyWith(
          _MailEntity value, $Res Function(_MailEntity) then) =
      __$MailEntityCopyWithImpl<$Res>;
  @override
  $Res call({String email, String name, String subject, String question});
}

/// @nodoc
class __$MailEntityCopyWithImpl<$Res> extends _$MailEntityCopyWithImpl<$Res>
    implements _$MailEntityCopyWith<$Res> {
  __$MailEntityCopyWithImpl(
      _MailEntity _value, $Res Function(_MailEntity) _then)
      : super(_value, (v) => _then(v as _MailEntity));

  @override
  _MailEntity get _value => super._value as _MailEntity;

  @override
  $Res call({
    Object email = freezed,
    Object name = freezed,
    Object subject = freezed,
    Object question = freezed,
  }) {
    return _then(_MailEntity(
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      subject: subject == freezed ? _value.subject : subject as String,
      question: question == freezed ? _value.question : question as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MailEntity implements _MailEntity {
  const _$_MailEntity(
      {@required this.email,
      @required this.name,
      @required this.subject,
      @required this.question})
      : assert(email != null),
        assert(name != null),
        assert(subject != null),
        assert(question != null);

  factory _$_MailEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_MailEntityFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String subject;
  @override
  final String question;

  @override
  String toString() {
    return 'MailEntity(email: $email, name: $name, subject: $subject, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailEntity &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(question);

  @override
  _$MailEntityCopyWith<_MailEntity> get copyWith =>
      __$MailEntityCopyWithImpl<_MailEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MailEntityToJson(this);
  }
}

abstract class _MailEntity implements MailEntity {
  const factory _MailEntity(
      {@required String email,
      @required String name,
      @required String subject,
      @required String question}) = _$_MailEntity;

  factory _MailEntity.fromJson(Map<String, dynamic> json) =
      _$_MailEntity.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get subject;
  @override
  String get question;
  @override
  _$MailEntityCopyWith<_MailEntity> get copyWith;
}
