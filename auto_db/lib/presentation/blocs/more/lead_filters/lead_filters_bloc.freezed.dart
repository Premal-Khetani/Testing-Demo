// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lead_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LeadFilterEventTearOff {
  const _$LeadFilterEventTearOff();

// ignore: unused_element
  Close close() {
    return const Close();
  }

// ignore: unused_element
  Add add() {
    return const Add();
  }

// ignore: unused_element
  Update update(LeadFilter filter) {
    return Update(
      filter,
    );
  }

// ignore: unused_element
  Delete delete(LeadFilter filter) {
    return Delete(
      filter,
    );
  }

// ignore: unused_element
  OnRetryTapped onRetryTapped() {
    return const OnRetryTapped();
  }
}

/// @nodoc
// ignore: unused_element
const $LeadFilterEvent = _$LeadFilterEventTearOff();

/// @nodoc
mixin _$LeadFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult add(),
    @required TResult update(LeadFilter filter),
    @required TResult delete(LeadFilter filter),
    @required TResult onRetryTapped(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult add(),
    TResult update(LeadFilter filter),
    TResult delete(LeadFilter filter),
    TResult onRetryTapped(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult add(Add value),
    @required TResult update(Update value),
    @required TResult delete(Delete value),
    @required TResult onRetryTapped(OnRetryTapped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult add(Add value),
    TResult update(Update value),
    TResult delete(Delete value),
    TResult onRetryTapped(OnRetryTapped value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LeadFilterEventCopyWith<$Res> {
  factory $LeadFilterEventCopyWith(
          LeadFilterEvent value, $Res Function(LeadFilterEvent) then) =
      _$LeadFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeadFilterEventCopyWithImpl<$Res>
    implements $LeadFilterEventCopyWith<$Res> {
  _$LeadFilterEventCopyWithImpl(this._value, this._then);

  final LeadFilterEvent _value;
  // ignore: unused_field
  final $Res Function(LeadFilterEvent) _then;
}

/// @nodoc
abstract class $CloseCopyWith<$Res> {
  factory $CloseCopyWith(Close value, $Res Function(Close) then) =
      _$CloseCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseCopyWithImpl<$Res> extends _$LeadFilterEventCopyWithImpl<$Res>
    implements $CloseCopyWith<$Res> {
  _$CloseCopyWithImpl(Close _value, $Res Function(Close) _then)
      : super(_value, (v) => _then(v as Close));

  @override
  Close get _value => super._value as Close;
}

/// @nodoc
class _$Close implements Close {
  const _$Close();

  @override
  String toString() {
    return 'LeadFilterEvent.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult add(),
    @required TResult update(LeadFilter filter),
    @required TResult delete(LeadFilter filter),
    @required TResult onRetryTapped(),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return close();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult add(),
    TResult update(LeadFilter filter),
    TResult delete(LeadFilter filter),
    TResult onRetryTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult add(Add value),
    @required TResult update(Update value),
    @required TResult delete(Delete value),
    @required TResult onRetryTapped(OnRetryTapped value),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult add(Add value),
    TResult update(Update value),
    TResult delete(Delete value),
    TResult onRetryTapped(OnRetryTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class Close implements LeadFilterEvent {
  const factory Close() = _$Close;
}

/// @nodoc
abstract class $AddCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) then) =
      _$AddCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCopyWithImpl<$Res> extends _$LeadFilterEventCopyWithImpl<$Res>
    implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(Add _value, $Res Function(Add) _then)
      : super(_value, (v) => _then(v as Add));

  @override
  Add get _value => super._value as Add;
}

/// @nodoc
class _$Add implements Add {
  const _$Add();

  @override
  String toString() {
    return 'LeadFilterEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Add);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult add(),
    @required TResult update(LeadFilter filter),
    @required TResult delete(LeadFilter filter),
    @required TResult onRetryTapped(),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return add();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult add(),
    TResult update(LeadFilter filter),
    TResult delete(LeadFilter filter),
    TResult onRetryTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult add(Add value),
    @required TResult update(Update value),
    @required TResult delete(Delete value),
    @required TResult onRetryTapped(OnRetryTapped value),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult add(Add value),
    TResult update(Update value),
    TResult delete(Delete value),
    TResult onRetryTapped(OnRetryTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements LeadFilterEvent {
  const factory Add() = _$Add;
}

/// @nodoc
abstract class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  $Res call({LeadFilter filter});

  $LeadFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res> extends _$LeadFilterEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(Update(
      filter == freezed ? _value.filter : filter as LeadFilter,
    ));
  }

  @override
  $LeadFilterCopyWith<$Res> get filter {
    if (_value.filter == null) {
      return null;
    }
    return $LeadFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
class _$Update implements Update {
  const _$Update(this.filter) : assert(filter != null);

  @override
  final LeadFilter filter;

  @override
  String toString() {
    return 'LeadFilterEvent.update(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Update &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @override
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult add(),
    @required TResult update(LeadFilter filter),
    @required TResult delete(LeadFilter filter),
    @required TResult onRetryTapped(),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return update(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult add(),
    TResult update(LeadFilter filter),
    TResult delete(LeadFilter filter),
    TResult onRetryTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult add(Add value),
    @required TResult update(Update value),
    @required TResult delete(Delete value),
    @required TResult onRetryTapped(OnRetryTapped value),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult add(Add value),
    TResult update(Update value),
    TResult delete(Delete value),
    TResult onRetryTapped(OnRetryTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements LeadFilterEvent {
  const factory Update(LeadFilter filter) = _$Update;

  LeadFilter get filter;
  $UpdateCopyWith<Update> get copyWith;
}

/// @nodoc
abstract class $DeleteCopyWith<$Res> {
  factory $DeleteCopyWith(Delete value, $Res Function(Delete) then) =
      _$DeleteCopyWithImpl<$Res>;
  $Res call({LeadFilter filter});

  $LeadFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$DeleteCopyWithImpl<$Res> extends _$LeadFilterEventCopyWithImpl<$Res>
    implements $DeleteCopyWith<$Res> {
  _$DeleteCopyWithImpl(Delete _value, $Res Function(Delete) _then)
      : super(_value, (v) => _then(v as Delete));

  @override
  Delete get _value => super._value as Delete;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(Delete(
      filter == freezed ? _value.filter : filter as LeadFilter,
    ));
  }

  @override
  $LeadFilterCopyWith<$Res> get filter {
    if (_value.filter == null) {
      return null;
    }
    return $LeadFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
class _$Delete implements Delete {
  const _$Delete(this.filter) : assert(filter != null);

  @override
  final LeadFilter filter;

  @override
  String toString() {
    return 'LeadFilterEvent.delete(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Delete &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @override
  $DeleteCopyWith<Delete> get copyWith =>
      _$DeleteCopyWithImpl<Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult add(),
    @required TResult update(LeadFilter filter),
    @required TResult delete(LeadFilter filter),
    @required TResult onRetryTapped(),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return delete(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult add(),
    TResult update(LeadFilter filter),
    TResult delete(LeadFilter filter),
    TResult onRetryTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult add(Add value),
    @required TResult update(Update value),
    @required TResult delete(Delete value),
    @required TResult onRetryTapped(OnRetryTapped value),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult add(Add value),
    TResult update(Update value),
    TResult delete(Delete value),
    TResult onRetryTapped(OnRetryTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements LeadFilterEvent {
  const factory Delete(LeadFilter filter) = _$Delete;

  LeadFilter get filter;
  $DeleteCopyWith<Delete> get copyWith;
}

/// @nodoc
abstract class $OnRetryTappedCopyWith<$Res> {
  factory $OnRetryTappedCopyWith(
          OnRetryTapped value, $Res Function(OnRetryTapped) then) =
      _$OnRetryTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRetryTappedCopyWithImpl<$Res>
    extends _$LeadFilterEventCopyWithImpl<$Res>
    implements $OnRetryTappedCopyWith<$Res> {
  _$OnRetryTappedCopyWithImpl(
      OnRetryTapped _value, $Res Function(OnRetryTapped) _then)
      : super(_value, (v) => _then(v as OnRetryTapped));

  @override
  OnRetryTapped get _value => super._value as OnRetryTapped;
}

/// @nodoc
class _$OnRetryTapped implements OnRetryTapped {
  const _$OnRetryTapped();

  @override
  String toString() {
    return 'LeadFilterEvent.onRetryTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRetryTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult add(),
    @required TResult update(LeadFilter filter),
    @required TResult delete(LeadFilter filter),
    @required TResult onRetryTapped(),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return onRetryTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult add(),
    TResult update(LeadFilter filter),
    TResult delete(LeadFilter filter),
    TResult onRetryTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRetryTapped != null) {
      return onRetryTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult add(Add value),
    @required TResult update(Update value),
    @required TResult delete(Delete value),
    @required TResult onRetryTapped(OnRetryTapped value),
  }) {
    assert(close != null);
    assert(add != null);
    assert(update != null);
    assert(delete != null);
    assert(onRetryTapped != null);
    return onRetryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult add(Add value),
    TResult update(Update value),
    TResult delete(Delete value),
    TResult onRetryTapped(OnRetryTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRetryTapped != null) {
      return onRetryTapped(this);
    }
    return orElse();
  }
}

abstract class OnRetryTapped implements LeadFilterEvent {
  const factory OnRetryTapped() = _$OnRetryTapped;
}

/// @nodoc
class _$LeadFiltersStateTearOff {
  const _$LeadFiltersStateTearOff();

// ignore: unused_element
  _LeadFiltersState call(
      {@required List<LeadFilter> filters,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) {
    return _LeadFiltersState(
      filters: filters,
      isSubmitting: isSubmitting,
      isError: isError,
      errorMessage: errorMessage,
      noInternetConnection: noInternetConnection,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LeadFiltersState = _$LeadFiltersStateTearOff();

/// @nodoc
mixin _$LeadFiltersState {
  List<LeadFilter> get filters;
  bool get isSubmitting;
  bool get isError;
  String get errorMessage;
  bool get noInternetConnection;

  $LeadFiltersStateCopyWith<LeadFiltersState> get copyWith;
}

/// @nodoc
abstract class $LeadFiltersStateCopyWith<$Res> {
  factory $LeadFiltersStateCopyWith(
          LeadFiltersState value, $Res Function(LeadFiltersState) then) =
      _$LeadFiltersStateCopyWithImpl<$Res>;
  $Res call(
      {List<LeadFilter> filters,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class _$LeadFiltersStateCopyWithImpl<$Res>
    implements $LeadFiltersStateCopyWith<$Res> {
  _$LeadFiltersStateCopyWithImpl(this._value, this._then);

  final LeadFiltersState _value;
  // ignore: unused_field
  final $Res Function(LeadFiltersState) _then;

  @override
  $Res call({
    Object filters = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_value.copyWith(
      filters:
          filters == freezed ? _value.filters : filters as List<LeadFilter>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      noInternetConnection: noInternetConnection == freezed
          ? _value.noInternetConnection
          : noInternetConnection as bool,
    ));
  }
}

/// @nodoc
abstract class _$LeadFiltersStateCopyWith<$Res>
    implements $LeadFiltersStateCopyWith<$Res> {
  factory _$LeadFiltersStateCopyWith(
          _LeadFiltersState value, $Res Function(_LeadFiltersState) then) =
      __$LeadFiltersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<LeadFilter> filters,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class __$LeadFiltersStateCopyWithImpl<$Res>
    extends _$LeadFiltersStateCopyWithImpl<$Res>
    implements _$LeadFiltersStateCopyWith<$Res> {
  __$LeadFiltersStateCopyWithImpl(
      _LeadFiltersState _value, $Res Function(_LeadFiltersState) _then)
      : super(_value, (v) => _then(v as _LeadFiltersState));

  @override
  _LeadFiltersState get _value => super._value as _LeadFiltersState;

  @override
  $Res call({
    Object filters = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_LeadFiltersState(
      filters:
          filters == freezed ? _value.filters : filters as List<LeadFilter>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      noInternetConnection: noInternetConnection == freezed
          ? _value.noInternetConnection
          : noInternetConnection as bool,
    ));
  }
}

/// @nodoc
class _$_LeadFiltersState implements _LeadFiltersState {
  const _$_LeadFiltersState(
      {@required this.filters,
      @required this.isSubmitting,
      @required this.isError,
      @required this.errorMessage,
      @required this.noInternetConnection})
      : assert(filters != null),
        assert(isSubmitting != null),
        assert(isError != null),
        assert(errorMessage != null),
        assert(noInternetConnection != null);

  @override
  final List<LeadFilter> filters;
  @override
  final bool isSubmitting;
  @override
  final bool isError;
  @override
  final String errorMessage;
  @override
  final bool noInternetConnection;

  @override
  String toString() {
    return 'LeadFiltersState(filters: $filters, isSubmitting: $isSubmitting, isError: $isError, errorMessage: $errorMessage, noInternetConnection: $noInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeadFiltersState &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.noInternetConnection, noInternetConnection) ||
                const DeepCollectionEquality()
                    .equals(other.noInternetConnection, noInternetConnection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(noInternetConnection);

  @override
  _$LeadFiltersStateCopyWith<_LeadFiltersState> get copyWith =>
      __$LeadFiltersStateCopyWithImpl<_LeadFiltersState>(this, _$identity);
}

abstract class _LeadFiltersState implements LeadFiltersState {
  const factory _LeadFiltersState(
      {@required List<LeadFilter> filters,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) = _$_LeadFiltersState;

  @override
  List<LeadFilter> get filters;
  @override
  bool get isSubmitting;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  bool get noInternetConnection;
  @override
  _$LeadFiltersStateCopyWith<_LeadFiltersState> get copyWith;
}
