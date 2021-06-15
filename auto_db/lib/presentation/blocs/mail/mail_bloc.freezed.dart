// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MailStateTearOff {
  const _$MailStateTearOff();

// ignore: unused_element
  _MailState call(
      {@required NotEmptyString subject,
      @required NotEmptyString question,
      @required NotEmptyString fullName,
      @required Email email,
      @required bool isSubmitting}) {
    return _MailState(
      subject: subject,
      question: question,
      fullName: fullName,
      email: email,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MailState = _$MailStateTearOff();

/// @nodoc
mixin _$MailState {
  NotEmptyString get subject;
  NotEmptyString get question;
  NotEmptyString get fullName;
  Email get email;
  bool get isSubmitting;

  $MailStateCopyWith<MailState> get copyWith;
}

/// @nodoc
abstract class $MailStateCopyWith<$Res> {
  factory $MailStateCopyWith(MailState value, $Res Function(MailState) then) =
      _$MailStateCopyWithImpl<$Res>;
  $Res call(
      {NotEmptyString subject,
      NotEmptyString question,
      NotEmptyString fullName,
      Email email,
      bool isSubmitting});
}

/// @nodoc
class _$MailStateCopyWithImpl<$Res> implements $MailStateCopyWith<$Res> {
  _$MailStateCopyWithImpl(this._value, this._then);

  final MailState _value;
  // ignore: unused_field
  final $Res Function(MailState) _then;

  @override
  $Res call({
    Object subject = freezed,
    Object question = freezed,
    Object fullName = freezed,
    Object email = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      subject: subject == freezed ? _value.subject : subject as NotEmptyString,
      question:
          question == freezed ? _value.question : question as NotEmptyString,
      fullName:
          fullName == freezed ? _value.fullName : fullName as NotEmptyString,
      email: email == freezed ? _value.email : email as Email,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$MailStateCopyWith<$Res> implements $MailStateCopyWith<$Res> {
  factory _$MailStateCopyWith(
          _MailState value, $Res Function(_MailState) then) =
      __$MailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NotEmptyString subject,
      NotEmptyString question,
      NotEmptyString fullName,
      Email email,
      bool isSubmitting});
}

/// @nodoc
class __$MailStateCopyWithImpl<$Res> extends _$MailStateCopyWithImpl<$Res>
    implements _$MailStateCopyWith<$Res> {
  __$MailStateCopyWithImpl(_MailState _value, $Res Function(_MailState) _then)
      : super(_value, (v) => _then(v as _MailState));

  @override
  _MailState get _value => super._value as _MailState;

  @override
  $Res call({
    Object subject = freezed,
    Object question = freezed,
    Object fullName = freezed,
    Object email = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_MailState(
      subject: subject == freezed ? _value.subject : subject as NotEmptyString,
      question:
          question == freezed ? _value.question : question as NotEmptyString,
      fullName:
          fullName == freezed ? _value.fullName : fullName as NotEmptyString,
      email: email == freezed ? _value.email : email as Email,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_MailState implements _MailState {
  const _$_MailState(
      {@required this.subject,
      @required this.question,
      @required this.fullName,
      @required this.email,
      @required this.isSubmitting})
      : assert(subject != null),
        assert(question != null),
        assert(fullName != null),
        assert(email != null),
        assert(isSubmitting != null);

  @override
  final NotEmptyString subject;
  @override
  final NotEmptyString question;
  @override
  final NotEmptyString fullName;
  @override
  final Email email;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'MailState(subject: $subject, question: $question, fullName: $fullName, email: $email, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailState &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$MailStateCopyWith<_MailState> get copyWith =>
      __$MailStateCopyWithImpl<_MailState>(this, _$identity);
}

abstract class _MailState implements MailState {
  const factory _MailState(
      {@required NotEmptyString subject,
      @required NotEmptyString question,
      @required NotEmptyString fullName,
      @required Email email,
      @required bool isSubmitting}) = _$_MailState;

  @override
  NotEmptyString get subject;
  @override
  NotEmptyString get question;
  @override
  NotEmptyString get fullName;
  @override
  Email get email;
  @override
  bool get isSubmitting;
  @override
  _$MailStateCopyWith<_MailState> get copyWith;
}

/// @nodoc
class _$MailEventTearOff {
  const _$MailEventTearOff();

// ignore: unused_element
  OnSend onSend() {
    return const OnSend();
  }

// ignore: unused_element
  OnBack onBack() {
    return const OnBack();
  }

// ignore: unused_element
  OnSubjectChange onSubjectChange({@required String value}) {
    return OnSubjectChange(
      value: value,
    );
  }

// ignore: unused_element
  OnQuestionChange onQuestionChange({@required String value}) {
    return OnQuestionChange(
      value: value,
    );
  }

// ignore: unused_element
  OnEmailChange onEmailChange({@required String value}) {
    return OnEmailChange(
      value: value,
    );
  }

// ignore: unused_element
  OnFullNameChange onFullNameChange({@required String value}) {
    return OnFullNameChange(
      value: value,
    );
  }

// ignore: unused_element
  OnHelpButtonTapped onHelpButtonTapped() {
    return const OnHelpButtonTapped();
  }
}

/// @nodoc
// ignore: unused_element
const $MailEvent = _$MailEventTearOff();

/// @nodoc
mixin _$MailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MailEventCopyWith<$Res> {
  factory $MailEventCopyWith(MailEvent value, $Res Function(MailEvent) then) =
      _$MailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MailEventCopyWithImpl<$Res> implements $MailEventCopyWith<$Res> {
  _$MailEventCopyWithImpl(this._value, this._then);

  final MailEvent _value;
  // ignore: unused_field
  final $Res Function(MailEvent) _then;
}

/// @nodoc
abstract class $OnSendCopyWith<$Res> {
  factory $OnSendCopyWith(OnSend value, $Res Function(OnSend) then) =
      _$OnSendCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSendCopyWithImpl<$Res> extends _$MailEventCopyWithImpl<$Res>
    implements $OnSendCopyWith<$Res> {
  _$OnSendCopyWithImpl(OnSend _value, $Res Function(OnSend) _then)
      : super(_value, (v) => _then(v as OnSend));

  @override
  OnSend get _value => super._value as OnSend;
}

/// @nodoc
class _$OnSend implements OnSend {
  const _$OnSend();

  @override
  String toString() {
    return 'MailEvent.onSend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onSend();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSend != null) {
      return onSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onSend(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSend != null) {
      return onSend(this);
    }
    return orElse();
  }
}

abstract class OnSend implements MailEvent {
  const factory OnSend() = _$OnSend;
}

/// @nodoc
abstract class $OnBackCopyWith<$Res> {
  factory $OnBackCopyWith(OnBack value, $Res Function(OnBack) then) =
      _$OnBackCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBackCopyWithImpl<$Res> extends _$MailEventCopyWithImpl<$Res>
    implements $OnBackCopyWith<$Res> {
  _$OnBackCopyWithImpl(OnBack _value, $Res Function(OnBack) _then)
      : super(_value, (v) => _then(v as OnBack));

  @override
  OnBack get _value => super._value as OnBack;
}

/// @nodoc
class _$OnBack implements OnBack {
  const _$OnBack();

  @override
  String toString() {
    return 'MailEvent.onBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onBack();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onBack != null) {
      return onBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onBack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onBack != null) {
      return onBack(this);
    }
    return orElse();
  }
}

abstract class OnBack implements MailEvent {
  const factory OnBack() = _$OnBack;
}

/// @nodoc
abstract class $OnSubjectChangeCopyWith<$Res> {
  factory $OnSubjectChangeCopyWith(
          OnSubjectChange value, $Res Function(OnSubjectChange) then) =
      _$OnSubjectChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$OnSubjectChangeCopyWithImpl<$Res> extends _$MailEventCopyWithImpl<$Res>
    implements $OnSubjectChangeCopyWith<$Res> {
  _$OnSubjectChangeCopyWithImpl(
      OnSubjectChange _value, $Res Function(OnSubjectChange) _then)
      : super(_value, (v) => _then(v as OnSubjectChange));

  @override
  OnSubjectChange get _value => super._value as OnSubjectChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(OnSubjectChange(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$OnSubjectChange implements OnSubjectChange {
  const _$OnSubjectChange({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'MailEvent.onSubjectChange(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSubjectChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $OnSubjectChangeCopyWith<OnSubjectChange> get copyWith =>
      _$OnSubjectChangeCopyWithImpl<OnSubjectChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onSubjectChange(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSubjectChange != null) {
      return onSubjectChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onSubjectChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSubjectChange != null) {
      return onSubjectChange(this);
    }
    return orElse();
  }
}

abstract class OnSubjectChange implements MailEvent {
  const factory OnSubjectChange({@required String value}) = _$OnSubjectChange;

  String get value;
  $OnSubjectChangeCopyWith<OnSubjectChange> get copyWith;
}

/// @nodoc
abstract class $OnQuestionChangeCopyWith<$Res> {
  factory $OnQuestionChangeCopyWith(
          OnQuestionChange value, $Res Function(OnQuestionChange) then) =
      _$OnQuestionChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$OnQuestionChangeCopyWithImpl<$Res> extends _$MailEventCopyWithImpl<$Res>
    implements $OnQuestionChangeCopyWith<$Res> {
  _$OnQuestionChangeCopyWithImpl(
      OnQuestionChange _value, $Res Function(OnQuestionChange) _then)
      : super(_value, (v) => _then(v as OnQuestionChange));

  @override
  OnQuestionChange get _value => super._value as OnQuestionChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(OnQuestionChange(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$OnQuestionChange implements OnQuestionChange {
  const _$OnQuestionChange({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'MailEvent.onQuestionChange(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnQuestionChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $OnQuestionChangeCopyWith<OnQuestionChange> get copyWith =>
      _$OnQuestionChangeCopyWithImpl<OnQuestionChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onQuestionChange(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onQuestionChange != null) {
      return onQuestionChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onQuestionChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onQuestionChange != null) {
      return onQuestionChange(this);
    }
    return orElse();
  }
}

abstract class OnQuestionChange implements MailEvent {
  const factory OnQuestionChange({@required String value}) = _$OnQuestionChange;

  String get value;
  $OnQuestionChangeCopyWith<OnQuestionChange> get copyWith;
}

/// @nodoc
abstract class $OnEmailChangeCopyWith<$Res> {
  factory $OnEmailChangeCopyWith(
          OnEmailChange value, $Res Function(OnEmailChange) then) =
      _$OnEmailChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$OnEmailChangeCopyWithImpl<$Res> extends _$MailEventCopyWithImpl<$Res>
    implements $OnEmailChangeCopyWith<$Res> {
  _$OnEmailChangeCopyWithImpl(
      OnEmailChange _value, $Res Function(OnEmailChange) _then)
      : super(_value, (v) => _then(v as OnEmailChange));

  @override
  OnEmailChange get _value => super._value as OnEmailChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(OnEmailChange(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$OnEmailChange implements OnEmailChange {
  const _$OnEmailChange({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'MailEvent.onEmailChange(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEmailChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $OnEmailChangeCopyWith<OnEmailChange> get copyWith =>
      _$OnEmailChangeCopyWithImpl<OnEmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onEmailChange(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onEmailChange != null) {
      return onEmailChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onEmailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onEmailChange != null) {
      return onEmailChange(this);
    }
    return orElse();
  }
}

abstract class OnEmailChange implements MailEvent {
  const factory OnEmailChange({@required String value}) = _$OnEmailChange;

  String get value;
  $OnEmailChangeCopyWith<OnEmailChange> get copyWith;
}

/// @nodoc
abstract class $OnFullNameChangeCopyWith<$Res> {
  factory $OnFullNameChangeCopyWith(
          OnFullNameChange value, $Res Function(OnFullNameChange) then) =
      _$OnFullNameChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$OnFullNameChangeCopyWithImpl<$Res> extends _$MailEventCopyWithImpl<$Res>
    implements $OnFullNameChangeCopyWith<$Res> {
  _$OnFullNameChangeCopyWithImpl(
      OnFullNameChange _value, $Res Function(OnFullNameChange) _then)
      : super(_value, (v) => _then(v as OnFullNameChange));

  @override
  OnFullNameChange get _value => super._value as OnFullNameChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(OnFullNameChange(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$OnFullNameChange implements OnFullNameChange {
  const _$OnFullNameChange({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'MailEvent.onFullNameChange(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnFullNameChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $OnFullNameChangeCopyWith<OnFullNameChange> get copyWith =>
      _$OnFullNameChangeCopyWithImpl<OnFullNameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onFullNameChange(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onFullNameChange != null) {
      return onFullNameChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onFullNameChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onFullNameChange != null) {
      return onFullNameChange(this);
    }
    return orElse();
  }
}

abstract class OnFullNameChange implements MailEvent {
  const factory OnFullNameChange({@required String value}) = _$OnFullNameChange;

  String get value;
  $OnFullNameChangeCopyWith<OnFullNameChange> get copyWith;
}

/// @nodoc
abstract class $OnHelpButtonTappedCopyWith<$Res> {
  factory $OnHelpButtonTappedCopyWith(
          OnHelpButtonTapped value, $Res Function(OnHelpButtonTapped) then) =
      _$OnHelpButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnHelpButtonTappedCopyWithImpl<$Res>
    extends _$MailEventCopyWithImpl<$Res>
    implements $OnHelpButtonTappedCopyWith<$Res> {
  _$OnHelpButtonTappedCopyWithImpl(
      OnHelpButtonTapped _value, $Res Function(OnHelpButtonTapped) _then)
      : super(_value, (v) => _then(v as OnHelpButtonTapped));

  @override
  OnHelpButtonTapped get _value => super._value as OnHelpButtonTapped;
}

/// @nodoc
class _$OnHelpButtonTapped implements OnHelpButtonTapped {
  const _$OnHelpButtonTapped();

  @override
  String toString() {
    return 'MailEvent.onHelpButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnHelpButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSend(),
    @required TResult onBack(),
    @required TResult onSubjectChange(String value),
    @required TResult onQuestionChange(String value),
    @required TResult onEmailChange(String value),
    @required TResult onFullNameChange(String value),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onHelpButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSend(),
    TResult onBack(),
    TResult onSubjectChange(String value),
    TResult onQuestionChange(String value),
    TResult onEmailChange(String value),
    TResult onFullNameChange(String value),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onHelpButtonTapped != null) {
      return onHelpButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSend(OnSend value),
    @required TResult onBack(OnBack value),
    @required TResult onSubjectChange(OnSubjectChange value),
    @required TResult onQuestionChange(OnQuestionChange value),
    @required TResult onEmailChange(OnEmailChange value),
    @required TResult onFullNameChange(OnFullNameChange value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onSend != null);
    assert(onBack != null);
    assert(onSubjectChange != null);
    assert(onQuestionChange != null);
    assert(onEmailChange != null);
    assert(onFullNameChange != null);
    assert(onHelpButtonTapped != null);
    return onHelpButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSend(OnSend value),
    TResult onBack(OnBack value),
    TResult onSubjectChange(OnSubjectChange value),
    TResult onQuestionChange(OnQuestionChange value),
    TResult onEmailChange(OnEmailChange value),
    TResult onFullNameChange(OnFullNameChange value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onHelpButtonTapped != null) {
      return onHelpButtonTapped(this);
    }
    return orElse();
  }
}

abstract class OnHelpButtonTapped implements MailEvent {
  const factory OnHelpButtonTapped() = _$OnHelpButtonTapped;
}
