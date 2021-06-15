// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  ServerError serverError(
      {@required int statusCode, @required String massage}) {
    return ServerError(
      statusCode: statusCode,
      massage: massage,
    );
  }

// ignore: unused_element
  NoInternetError noInternerError() {
    return const NoInternetError();
  }

// ignore: unused_element
  GenericError genericError() {
    return const GenericError();
  }

// ignore: unused_element
  NoOperationError noOperationError() {
    return const NoOperationError();
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(int statusCode, String massage),
    @required TResult noInternerError(),
    @required TResult genericError(),
    @required TResult noOperationError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(int statusCode, String massage),
    TResult noInternerError(),
    TResult genericError(),
    TResult noOperationError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult noInternerError(NoInternetError value),
    @required TResult genericError(GenericError value),
    @required TResult noOperationError(NoOperationError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult noInternerError(NoInternetError value),
    TResult genericError(GenericError value),
    TResult noOperationError(NoOperationError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({int statusCode, String massage});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object statusCode = freezed,
    Object massage = freezed,
  }) {
    return _then(ServerError(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      massage: massage == freezed ? _value.massage : massage as String,
    ));
  }
}

/// @nodoc
class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError({@required this.statusCode, @required this.massage})
      : assert(statusCode != null),
        assert(massage != null);

  @override
  final int statusCode;
  @override
  final String massage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverError(statusCode: $statusCode, massage: $massage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.serverError'))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('massage', massage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.massage, massage) ||
                const DeepCollectionEquality().equals(other.massage, massage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(massage);

  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(int statusCode, String massage),
    @required TResult noInternerError(),
    @required TResult genericError(),
    @required TResult noOperationError(),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return serverError(statusCode, massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(int statusCode, String massage),
    TResult noInternerError(),
    TResult genericError(),
    TResult noOperationError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(statusCode, massage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult noInternerError(NoInternetError value),
    @required TResult genericError(GenericError value),
    @required TResult noOperationError(NoOperationError value),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult noInternerError(NoInternetError value),
    TResult genericError(GenericError value),
    TResult noOperationError(NoOperationError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError(
      {@required int statusCode, @required String massage}) = _$ServerError;

  int get statusCode;
  String get massage;
  $ServerErrorCopyWith<ServerError> get copyWith;
}

/// @nodoc
abstract class $NoInternetErrorCopyWith<$Res> {
  factory $NoInternetErrorCopyWith(
          NoInternetError value, $Res Function(NoInternetError) then) =
      _$NoInternetErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $NoInternetErrorCopyWith<$Res> {
  _$NoInternetErrorCopyWithImpl(
      NoInternetError _value, $Res Function(NoInternetError) _then)
      : super(_value, (v) => _then(v as NoInternetError));

  @override
  NoInternetError get _value => super._value as NoInternetError;
}

/// @nodoc
class _$NoInternetError
    with DiagnosticableTreeMixin
    implements NoInternetError {
  const _$NoInternetError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.noInternerError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.noInternerError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(int statusCode, String massage),
    @required TResult noInternerError(),
    @required TResult genericError(),
    @required TResult noOperationError(),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return noInternerError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(int statusCode, String massage),
    TResult noInternerError(),
    TResult genericError(),
    TResult noOperationError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternerError != null) {
      return noInternerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult noInternerError(NoInternetError value),
    @required TResult genericError(GenericError value),
    @required TResult noOperationError(NoOperationError value),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return noInternerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult noInternerError(NoInternetError value),
    TResult genericError(GenericError value),
    TResult noOperationError(NoOperationError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternerError != null) {
      return noInternerError(this);
    }
    return orElse();
  }
}

abstract class NoInternetError implements Failure {
  const factory NoInternetError() = _$NoInternetError;
}

/// @nodoc
abstract class $GenericErrorCopyWith<$Res> {
  factory $GenericErrorCopyWith(
          GenericError value, $Res Function(GenericError) then) =
      _$GenericErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenericErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $GenericErrorCopyWith<$Res> {
  _$GenericErrorCopyWithImpl(
      GenericError _value, $Res Function(GenericError) _then)
      : super(_value, (v) => _then(v as GenericError));

  @override
  GenericError get _value => super._value as GenericError;
}

/// @nodoc
class _$GenericError with DiagnosticableTreeMixin implements GenericError {
  const _$GenericError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.genericError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.genericError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GenericError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(int statusCode, String massage),
    @required TResult noInternerError(),
    @required TResult genericError(),
    @required TResult noOperationError(),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return genericError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(int statusCode, String massage),
    TResult noInternerError(),
    TResult genericError(),
    TResult noOperationError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genericError != null) {
      return genericError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult noInternerError(NoInternetError value),
    @required TResult genericError(GenericError value),
    @required TResult noOperationError(NoOperationError value),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return genericError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult noInternerError(NoInternetError value),
    TResult genericError(GenericError value),
    TResult noOperationError(NoOperationError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genericError != null) {
      return genericError(this);
    }
    return orElse();
  }
}

abstract class GenericError implements Failure {
  const factory GenericError() = _$GenericError;
}

/// @nodoc
abstract class $NoOperationErrorCopyWith<$Res> {
  factory $NoOperationErrorCopyWith(
          NoOperationError value, $Res Function(NoOperationError) then) =
      _$NoOperationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoOperationErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $NoOperationErrorCopyWith<$Res> {
  _$NoOperationErrorCopyWithImpl(
      NoOperationError _value, $Res Function(NoOperationError) _then)
      : super(_value, (v) => _then(v as NoOperationError));

  @override
  NoOperationError get _value => super._value as NoOperationError;
}

/// @nodoc
class _$NoOperationError
    with DiagnosticableTreeMixin
    implements NoOperationError {
  const _$NoOperationError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.noOperationError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.noOperationError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoOperationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(int statusCode, String massage),
    @required TResult noInternerError(),
    @required TResult genericError(),
    @required TResult noOperationError(),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return noOperationError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(int statusCode, String massage),
    TResult noInternerError(),
    TResult genericError(),
    TResult noOperationError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noOperationError != null) {
      return noOperationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult noInternerError(NoInternetError value),
    @required TResult genericError(GenericError value),
    @required TResult noOperationError(NoOperationError value),
  }) {
    assert(serverError != null);
    assert(noInternerError != null);
    assert(genericError != null);
    assert(noOperationError != null);
    return noOperationError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult noInternerError(NoInternetError value),
    TResult genericError(GenericError value),
    TResult noOperationError(NoOperationError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noOperationError != null) {
      return noOperationError(this);
    }
    return orElse();
  }
}

abstract class NoOperationError implements Failure {
  const factory NoOperationError() = _$NoOperationError;
}
