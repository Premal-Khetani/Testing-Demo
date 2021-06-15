// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'searches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchesEventTearOff {
  const _$SearchesEventTearOff();

// ignore: unused_element
  OnRetryTapped onRetryTapped() {
    return const OnRetryTapped();
  }

// ignore: unused_element
  OnNewSearchTapped onNewSearchTapped() {
    return const OnNewSearchTapped();
  }

// ignore: unused_element
  OnEditSearchTapped onEditSearchTapped({@required SearchListingModel search}) {
    return OnEditSearchTapped(
      search: search,
    );
  }

// ignore: unused_element
  OnDeleteSearchTapped onDeleteSearchTapped(
      {@required SearchListingModel search}) {
    return OnDeleteSearchTapped(
      search: search,
    );
  }

// ignore: unused_element
  OnHelpButtonTapped onHelpButtonTapped() {
    return const OnHelpButtonTapped();
  }
}

/// @nodoc
// ignore: unused_element
const $SearchesEvent = _$SearchesEventTearOff();

/// @nodoc
mixin _$SearchesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult onNewSearchTapped(),
    @required TResult onEditSearchTapped(SearchListingModel search),
    @required TResult onDeleteSearchTapped(SearchListingModel search),
    @required TResult onHelpButtonTapped(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult onNewSearchTapped(),
    TResult onEditSearchTapped(SearchListingModel search),
    TResult onDeleteSearchTapped(SearchListingModel search),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onNewSearchTapped(OnNewSearchTapped value),
    @required TResult onEditSearchTapped(OnEditSearchTapped value),
    @required TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult onNewSearchTapped(OnNewSearchTapped value),
    TResult onEditSearchTapped(OnEditSearchTapped value),
    TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchesEventCopyWith<$Res> {
  factory $SearchesEventCopyWith(
          SearchesEvent value, $Res Function(SearchesEvent) then) =
      _$SearchesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchesEventCopyWithImpl<$Res>
    implements $SearchesEventCopyWith<$Res> {
  _$SearchesEventCopyWithImpl(this._value, this._then);

  final SearchesEvent _value;
  // ignore: unused_field
  final $Res Function(SearchesEvent) _then;
}

/// @nodoc
abstract class $OnRetryTappedCopyWith<$Res> {
  factory $OnRetryTappedCopyWith(
          OnRetryTapped value, $Res Function(OnRetryTapped) then) =
      _$OnRetryTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRetryTappedCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res>
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
    return 'SearchesEvent.onRetryTapped()';
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
    @required TResult onRetryTapped(),
    @required TResult onNewSearchTapped(),
    @required TResult onEditSearchTapped(SearchListingModel search),
    @required TResult onDeleteSearchTapped(SearchListingModel search),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onRetryTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult onNewSearchTapped(),
    TResult onEditSearchTapped(SearchListingModel search),
    TResult onDeleteSearchTapped(SearchListingModel search),
    TResult onHelpButtonTapped(),
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
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onNewSearchTapped(OnNewSearchTapped value),
    @required TResult onEditSearchTapped(OnEditSearchTapped value),
    @required TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onRetryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult onNewSearchTapped(OnNewSearchTapped value),
    TResult onEditSearchTapped(OnEditSearchTapped value),
    TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRetryTapped != null) {
      return onRetryTapped(this);
    }
    return orElse();
  }
}

abstract class OnRetryTapped implements SearchesEvent {
  const factory OnRetryTapped() = _$OnRetryTapped;
}

/// @nodoc
abstract class $OnNewSearchTappedCopyWith<$Res> {
  factory $OnNewSearchTappedCopyWith(
          OnNewSearchTapped value, $Res Function(OnNewSearchTapped) then) =
      _$OnNewSearchTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnNewSearchTappedCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res>
    implements $OnNewSearchTappedCopyWith<$Res> {
  _$OnNewSearchTappedCopyWithImpl(
      OnNewSearchTapped _value, $Res Function(OnNewSearchTapped) _then)
      : super(_value, (v) => _then(v as OnNewSearchTapped));

  @override
  OnNewSearchTapped get _value => super._value as OnNewSearchTapped;
}

/// @nodoc
class _$OnNewSearchTapped implements OnNewSearchTapped {
  const _$OnNewSearchTapped();

  @override
  String toString() {
    return 'SearchesEvent.onNewSearchTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnNewSearchTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult onNewSearchTapped(),
    @required TResult onEditSearchTapped(SearchListingModel search),
    @required TResult onDeleteSearchTapped(SearchListingModel search),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onNewSearchTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult onNewSearchTapped(),
    TResult onEditSearchTapped(SearchListingModel search),
    TResult onDeleteSearchTapped(SearchListingModel search),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onNewSearchTapped != null) {
      return onNewSearchTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onNewSearchTapped(OnNewSearchTapped value),
    @required TResult onEditSearchTapped(OnEditSearchTapped value),
    @required TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onNewSearchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult onNewSearchTapped(OnNewSearchTapped value),
    TResult onEditSearchTapped(OnEditSearchTapped value),
    TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onNewSearchTapped != null) {
      return onNewSearchTapped(this);
    }
    return orElse();
  }
}

abstract class OnNewSearchTapped implements SearchesEvent {
  const factory OnNewSearchTapped() = _$OnNewSearchTapped;
}

/// @nodoc
abstract class $OnEditSearchTappedCopyWith<$Res> {
  factory $OnEditSearchTappedCopyWith(
          OnEditSearchTapped value, $Res Function(OnEditSearchTapped) then) =
      _$OnEditSearchTappedCopyWithImpl<$Res>;
  $Res call({SearchListingModel search});
}

/// @nodoc
class _$OnEditSearchTappedCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res>
    implements $OnEditSearchTappedCopyWith<$Res> {
  _$OnEditSearchTappedCopyWithImpl(
      OnEditSearchTapped _value, $Res Function(OnEditSearchTapped) _then)
      : super(_value, (v) => _then(v as OnEditSearchTapped));

  @override
  OnEditSearchTapped get _value => super._value as OnEditSearchTapped;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(OnEditSearchTapped(
      search: search == freezed ? _value.search : search as SearchListingModel,
    ));
  }
}

/// @nodoc
class _$OnEditSearchTapped implements OnEditSearchTapped {
  const _$OnEditSearchTapped({@required this.search}) : assert(search != null);

  @override
  final SearchListingModel search;

  @override
  String toString() {
    return 'SearchesEvent.onEditSearchTapped(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEditSearchTapped &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  $OnEditSearchTappedCopyWith<OnEditSearchTapped> get copyWith =>
      _$OnEditSearchTappedCopyWithImpl<OnEditSearchTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult onNewSearchTapped(),
    @required TResult onEditSearchTapped(SearchListingModel search),
    @required TResult onDeleteSearchTapped(SearchListingModel search),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onEditSearchTapped(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult onNewSearchTapped(),
    TResult onEditSearchTapped(SearchListingModel search),
    TResult onDeleteSearchTapped(SearchListingModel search),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onEditSearchTapped != null) {
      return onEditSearchTapped(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onNewSearchTapped(OnNewSearchTapped value),
    @required TResult onEditSearchTapped(OnEditSearchTapped value),
    @required TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onEditSearchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult onNewSearchTapped(OnNewSearchTapped value),
    TResult onEditSearchTapped(OnEditSearchTapped value),
    TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onEditSearchTapped != null) {
      return onEditSearchTapped(this);
    }
    return orElse();
  }
}

abstract class OnEditSearchTapped implements SearchesEvent {
  const factory OnEditSearchTapped({@required SearchListingModel search}) =
      _$OnEditSearchTapped;

  SearchListingModel get search;
  $OnEditSearchTappedCopyWith<OnEditSearchTapped> get copyWith;
}

/// @nodoc
abstract class $OnDeleteSearchTappedCopyWith<$Res> {
  factory $OnDeleteSearchTappedCopyWith(OnDeleteSearchTapped value,
          $Res Function(OnDeleteSearchTapped) then) =
      _$OnDeleteSearchTappedCopyWithImpl<$Res>;
  $Res call({SearchListingModel search});
}

/// @nodoc
class _$OnDeleteSearchTappedCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res>
    implements $OnDeleteSearchTappedCopyWith<$Res> {
  _$OnDeleteSearchTappedCopyWithImpl(
      OnDeleteSearchTapped _value, $Res Function(OnDeleteSearchTapped) _then)
      : super(_value, (v) => _then(v as OnDeleteSearchTapped));

  @override
  OnDeleteSearchTapped get _value => super._value as OnDeleteSearchTapped;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(OnDeleteSearchTapped(
      search: search == freezed ? _value.search : search as SearchListingModel,
    ));
  }
}

/// @nodoc
class _$OnDeleteSearchTapped implements OnDeleteSearchTapped {
  const _$OnDeleteSearchTapped({@required this.search})
      : assert(search != null);

  @override
  final SearchListingModel search;

  @override
  String toString() {
    return 'SearchesEvent.onDeleteSearchTapped(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnDeleteSearchTapped &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  $OnDeleteSearchTappedCopyWith<OnDeleteSearchTapped> get copyWith =>
      _$OnDeleteSearchTappedCopyWithImpl<OnDeleteSearchTapped>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult onNewSearchTapped(),
    @required TResult onEditSearchTapped(SearchListingModel search),
    @required TResult onDeleteSearchTapped(SearchListingModel search),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onDeleteSearchTapped(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult onNewSearchTapped(),
    TResult onEditSearchTapped(SearchListingModel search),
    TResult onDeleteSearchTapped(SearchListingModel search),
    TResult onHelpButtonTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onDeleteSearchTapped != null) {
      return onDeleteSearchTapped(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onNewSearchTapped(OnNewSearchTapped value),
    @required TResult onEditSearchTapped(OnEditSearchTapped value),
    @required TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onDeleteSearchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult onNewSearchTapped(OnNewSearchTapped value),
    TResult onEditSearchTapped(OnEditSearchTapped value),
    TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    TResult onHelpButtonTapped(OnHelpButtonTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onDeleteSearchTapped != null) {
      return onDeleteSearchTapped(this);
    }
    return orElse();
  }
}

abstract class OnDeleteSearchTapped implements SearchesEvent {
  const factory OnDeleteSearchTapped({@required SearchListingModel search}) =
      _$OnDeleteSearchTapped;

  SearchListingModel get search;
  $OnDeleteSearchTappedCopyWith<OnDeleteSearchTapped> get copyWith;
}

/// @nodoc
abstract class $OnHelpButtonTappedCopyWith<$Res> {
  factory $OnHelpButtonTappedCopyWith(
          OnHelpButtonTapped value, $Res Function(OnHelpButtonTapped) then) =
      _$OnHelpButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnHelpButtonTappedCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res>
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
    return 'SearchesEvent.onHelpButtonTapped()';
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
    @required TResult onRetryTapped(),
    @required TResult onNewSearchTapped(),
    @required TResult onEditSearchTapped(SearchListingModel search),
    @required TResult onDeleteSearchTapped(SearchListingModel search),
    @required TResult onHelpButtonTapped(),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onHelpButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult onNewSearchTapped(),
    TResult onEditSearchTapped(SearchListingModel search),
    TResult onDeleteSearchTapped(SearchListingModel search),
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
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onNewSearchTapped(OnNewSearchTapped value),
    @required TResult onEditSearchTapped(OnEditSearchTapped value),
    @required TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
    @required TResult onHelpButtonTapped(OnHelpButtonTapped value),
  }) {
    assert(onRetryTapped != null);
    assert(onNewSearchTapped != null);
    assert(onEditSearchTapped != null);
    assert(onDeleteSearchTapped != null);
    assert(onHelpButtonTapped != null);
    return onHelpButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult onNewSearchTapped(OnNewSearchTapped value),
    TResult onEditSearchTapped(OnEditSearchTapped value),
    TResult onDeleteSearchTapped(OnDeleteSearchTapped value),
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

abstract class OnHelpButtonTapped implements SearchesEvent {
  const factory OnHelpButtonTapped() = _$OnHelpButtonTapped;
}

/// @nodoc
class _$SearchesStateTearOff {
  const _$SearchesStateTearOff();

// ignore: unused_element
  _SearchesState call(
      {@required List<SearchListingModel> searches,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) {
    return _SearchesState(
      searches: searches,
      isSubmitting: isSubmitting,
      isError: isError,
      errorMessage: errorMessage,
      noInternetConnection: noInternetConnection,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchesState = _$SearchesStateTearOff();

/// @nodoc
mixin _$SearchesState {
  List<SearchListingModel> get searches;
  bool get isSubmitting;
  bool get isError;
  String get errorMessage;
  bool get noInternetConnection;

  $SearchesStateCopyWith<SearchesState> get copyWith;
}

/// @nodoc
abstract class $SearchesStateCopyWith<$Res> {
  factory $SearchesStateCopyWith(
          SearchesState value, $Res Function(SearchesState) then) =
      _$SearchesStateCopyWithImpl<$Res>;
  $Res call(
      {List<SearchListingModel> searches,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class _$SearchesStateCopyWithImpl<$Res>
    implements $SearchesStateCopyWith<$Res> {
  _$SearchesStateCopyWithImpl(this._value, this._then);

  final SearchesState _value;
  // ignore: unused_field
  final $Res Function(SearchesState) _then;

  @override
  $Res call({
    Object searches = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_value.copyWith(
      searches: searches == freezed
          ? _value.searches
          : searches as List<SearchListingModel>,
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
abstract class _$SearchesStateCopyWith<$Res>
    implements $SearchesStateCopyWith<$Res> {
  factory _$SearchesStateCopyWith(
          _SearchesState value, $Res Function(_SearchesState) then) =
      __$SearchesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchListingModel> searches,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class __$SearchesStateCopyWithImpl<$Res>
    extends _$SearchesStateCopyWithImpl<$Res>
    implements _$SearchesStateCopyWith<$Res> {
  __$SearchesStateCopyWithImpl(
      _SearchesState _value, $Res Function(_SearchesState) _then)
      : super(_value, (v) => _then(v as _SearchesState));

  @override
  _SearchesState get _value => super._value as _SearchesState;

  @override
  $Res call({
    Object searches = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_SearchesState(
      searches: searches == freezed
          ? _value.searches
          : searches as List<SearchListingModel>,
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
class _$_SearchesState implements _SearchesState {
  const _$_SearchesState(
      {@required this.searches,
      @required this.isSubmitting,
      @required this.isError,
      @required this.errorMessage,
      @required this.noInternetConnection})
      : assert(searches != null),
        assert(isSubmitting != null),
        assert(isError != null),
        assert(errorMessage != null),
        assert(noInternetConnection != null);

  @override
  final List<SearchListingModel> searches;
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
    return 'SearchesState(searches: $searches, isSubmitting: $isSubmitting, isError: $isError, errorMessage: $errorMessage, noInternetConnection: $noInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchesState &&
            (identical(other.searches, searches) ||
                const DeepCollectionEquality()
                    .equals(other.searches, searches)) &&
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
      const DeepCollectionEquality().hash(searches) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(noInternetConnection);

  @override
  _$SearchesStateCopyWith<_SearchesState> get copyWith =>
      __$SearchesStateCopyWithImpl<_SearchesState>(this, _$identity);
}

abstract class _SearchesState implements SearchesState {
  const factory _SearchesState(
      {@required List<SearchListingModel> searches,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) = _$_SearchesState;

  @override
  List<SearchListingModel> get searches;
  @override
  bool get isSubmitting;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  bool get noInternetConnection;
  @override
  _$SearchesStateCopyWith<_SearchesState> get copyWith;
}
