// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'leads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LeadsEventTearOff {
  const _$LeadsEventTearOff();

// ignore: unused_element
  OnRetryTapped onRetryTapped() {
    return const OnRetryTapped();
  }

// ignore: unused_element
  ToLeadFiltersTapped toLeadFiltersTapped() {
    return const ToLeadFiltersTapped();
  }

// ignore: unused_element
  OnSendAnEmailTapped onSendAnEmailTapped(int leadId) {
    return OnSendAnEmailTapped(
      leadId,
    );
  }

// ignore: unused_element
  OnViewLeadContact onViewLeadContact(LeadContact leadContact) {
    return OnViewLeadContact(
      leadContact,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LeadsEvent = _$LeadsEventTearOff();

/// @nodoc
mixin _$LeadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult toLeadFiltersTapped(),
    @required TResult onSendAnEmailTapped(int leadId),
    @required TResult onViewLeadContact(LeadContact leadContact),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult toLeadFiltersTapped(),
    TResult onSendAnEmailTapped(int leadId),
    TResult onViewLeadContact(LeadContact leadContact),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    @required TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    @required TResult onViewLeadContact(OnViewLeadContact value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    TResult onViewLeadContact(OnViewLeadContact value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LeadsEventCopyWith<$Res> {
  factory $LeadsEventCopyWith(
          LeadsEvent value, $Res Function(LeadsEvent) then) =
      _$LeadsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeadsEventCopyWithImpl<$Res> implements $LeadsEventCopyWith<$Res> {
  _$LeadsEventCopyWithImpl(this._value, this._then);

  final LeadsEvent _value;
  // ignore: unused_field
  final $Res Function(LeadsEvent) _then;
}

/// @nodoc
abstract class $OnRetryTappedCopyWith<$Res> {
  factory $OnRetryTappedCopyWith(
          OnRetryTapped value, $Res Function(OnRetryTapped) then) =
      _$OnRetryTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRetryTappedCopyWithImpl<$Res> extends _$LeadsEventCopyWithImpl<$Res>
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
    return 'LeadsEvent.onRetryTapped()';
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
    @required TResult toLeadFiltersTapped(),
    @required TResult onSendAnEmailTapped(int leadId),
    @required TResult onViewLeadContact(LeadContact leadContact),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return onRetryTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult toLeadFiltersTapped(),
    TResult onSendAnEmailTapped(int leadId),
    TResult onViewLeadContact(LeadContact leadContact),
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
    @required TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    @required TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    @required TResult onViewLeadContact(OnViewLeadContact value),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return onRetryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    TResult onViewLeadContact(OnViewLeadContact value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRetryTapped != null) {
      return onRetryTapped(this);
    }
    return orElse();
  }
}

abstract class OnRetryTapped implements LeadsEvent {
  const factory OnRetryTapped() = _$OnRetryTapped;
}

/// @nodoc
abstract class $ToLeadFiltersTappedCopyWith<$Res> {
  factory $ToLeadFiltersTappedCopyWith(
          ToLeadFiltersTapped value, $Res Function(ToLeadFiltersTapped) then) =
      _$ToLeadFiltersTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToLeadFiltersTappedCopyWithImpl<$Res>
    extends _$LeadsEventCopyWithImpl<$Res>
    implements $ToLeadFiltersTappedCopyWith<$Res> {
  _$ToLeadFiltersTappedCopyWithImpl(
      ToLeadFiltersTapped _value, $Res Function(ToLeadFiltersTapped) _then)
      : super(_value, (v) => _then(v as ToLeadFiltersTapped));

  @override
  ToLeadFiltersTapped get _value => super._value as ToLeadFiltersTapped;
}

/// @nodoc
class _$ToLeadFiltersTapped implements ToLeadFiltersTapped {
  const _$ToLeadFiltersTapped();

  @override
  String toString() {
    return 'LeadsEvent.toLeadFiltersTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToLeadFiltersTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult toLeadFiltersTapped(),
    @required TResult onSendAnEmailTapped(int leadId),
    @required TResult onViewLeadContact(LeadContact leadContact),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return toLeadFiltersTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult toLeadFiltersTapped(),
    TResult onSendAnEmailTapped(int leadId),
    TResult onViewLeadContact(LeadContact leadContact),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toLeadFiltersTapped != null) {
      return toLeadFiltersTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    @required TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    @required TResult onViewLeadContact(OnViewLeadContact value),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return toLeadFiltersTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    TResult onViewLeadContact(OnViewLeadContact value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toLeadFiltersTapped != null) {
      return toLeadFiltersTapped(this);
    }
    return orElse();
  }
}

abstract class ToLeadFiltersTapped implements LeadsEvent {
  const factory ToLeadFiltersTapped() = _$ToLeadFiltersTapped;
}

/// @nodoc
abstract class $OnSendAnEmailTappedCopyWith<$Res> {
  factory $OnSendAnEmailTappedCopyWith(
          OnSendAnEmailTapped value, $Res Function(OnSendAnEmailTapped) then) =
      _$OnSendAnEmailTappedCopyWithImpl<$Res>;
  $Res call({int leadId});
}

/// @nodoc
class _$OnSendAnEmailTappedCopyWithImpl<$Res>
    extends _$LeadsEventCopyWithImpl<$Res>
    implements $OnSendAnEmailTappedCopyWith<$Res> {
  _$OnSendAnEmailTappedCopyWithImpl(
      OnSendAnEmailTapped _value, $Res Function(OnSendAnEmailTapped) _then)
      : super(_value, (v) => _then(v as OnSendAnEmailTapped));

  @override
  OnSendAnEmailTapped get _value => super._value as OnSendAnEmailTapped;

  @override
  $Res call({
    Object leadId = freezed,
  }) {
    return _then(OnSendAnEmailTapped(
      leadId == freezed ? _value.leadId : leadId as int,
    ));
  }
}

/// @nodoc
class _$OnSendAnEmailTapped implements OnSendAnEmailTapped {
  const _$OnSendAnEmailTapped(this.leadId) : assert(leadId != null);

  @override
  final int leadId;

  @override
  String toString() {
    return 'LeadsEvent.onSendAnEmailTapped(leadId: $leadId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSendAnEmailTapped &&
            (identical(other.leadId, leadId) ||
                const DeepCollectionEquality().equals(other.leadId, leadId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(leadId);

  @override
  $OnSendAnEmailTappedCopyWith<OnSendAnEmailTapped> get copyWith =>
      _$OnSendAnEmailTappedCopyWithImpl<OnSendAnEmailTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult toLeadFiltersTapped(),
    @required TResult onSendAnEmailTapped(int leadId),
    @required TResult onViewLeadContact(LeadContact leadContact),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return onSendAnEmailTapped(leadId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult toLeadFiltersTapped(),
    TResult onSendAnEmailTapped(int leadId),
    TResult onViewLeadContact(LeadContact leadContact),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSendAnEmailTapped != null) {
      return onSendAnEmailTapped(leadId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    @required TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    @required TResult onViewLeadContact(OnViewLeadContact value),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return onSendAnEmailTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    TResult onViewLeadContact(OnViewLeadContact value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSendAnEmailTapped != null) {
      return onSendAnEmailTapped(this);
    }
    return orElse();
  }
}

abstract class OnSendAnEmailTapped implements LeadsEvent {
  const factory OnSendAnEmailTapped(int leadId) = _$OnSendAnEmailTapped;

  int get leadId;
  $OnSendAnEmailTappedCopyWith<OnSendAnEmailTapped> get copyWith;
}

/// @nodoc
abstract class $OnViewLeadContactCopyWith<$Res> {
  factory $OnViewLeadContactCopyWith(
          OnViewLeadContact value, $Res Function(OnViewLeadContact) then) =
      _$OnViewLeadContactCopyWithImpl<$Res>;
  $Res call({LeadContact leadContact});

  $LeadContactCopyWith<$Res> get leadContact;
}

/// @nodoc
class _$OnViewLeadContactCopyWithImpl<$Res>
    extends _$LeadsEventCopyWithImpl<$Res>
    implements $OnViewLeadContactCopyWith<$Res> {
  _$OnViewLeadContactCopyWithImpl(
      OnViewLeadContact _value, $Res Function(OnViewLeadContact) _then)
      : super(_value, (v) => _then(v as OnViewLeadContact));

  @override
  OnViewLeadContact get _value => super._value as OnViewLeadContact;

  @override
  $Res call({
    Object leadContact = freezed,
  }) {
    return _then(OnViewLeadContact(
      leadContact == freezed ? _value.leadContact : leadContact as LeadContact,
    ));
  }

  @override
  $LeadContactCopyWith<$Res> get leadContact {
    if (_value.leadContact == null) {
      return null;
    }
    return $LeadContactCopyWith<$Res>(_value.leadContact, (value) {
      return _then(_value.copyWith(leadContact: value));
    });
  }
}

/// @nodoc
class _$OnViewLeadContact implements OnViewLeadContact {
  const _$OnViewLeadContact(this.leadContact) : assert(leadContact != null);

  @override
  final LeadContact leadContact;

  @override
  String toString() {
    return 'LeadsEvent.onViewLeadContact(leadContact: $leadContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnViewLeadContact &&
            (identical(other.leadContact, leadContact) ||
                const DeepCollectionEquality()
                    .equals(other.leadContact, leadContact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(leadContact);

  @override
  $OnViewLeadContactCopyWith<OnViewLeadContact> get copyWith =>
      _$OnViewLeadContactCopyWithImpl<OnViewLeadContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onRetryTapped(),
    @required TResult toLeadFiltersTapped(),
    @required TResult onSendAnEmailTapped(int leadId),
    @required TResult onViewLeadContact(LeadContact leadContact),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return onViewLeadContact(leadContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onRetryTapped(),
    TResult toLeadFiltersTapped(),
    TResult onSendAnEmailTapped(int leadId),
    TResult onViewLeadContact(LeadContact leadContact),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onViewLeadContact != null) {
      return onViewLeadContact(leadContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    @required TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    @required TResult onViewLeadContact(OnViewLeadContact value),
  }) {
    assert(onRetryTapped != null);
    assert(toLeadFiltersTapped != null);
    assert(onSendAnEmailTapped != null);
    assert(onViewLeadContact != null);
    return onViewLeadContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onRetryTapped(OnRetryTapped value),
    TResult toLeadFiltersTapped(ToLeadFiltersTapped value),
    TResult onSendAnEmailTapped(OnSendAnEmailTapped value),
    TResult onViewLeadContact(OnViewLeadContact value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onViewLeadContact != null) {
      return onViewLeadContact(this);
    }
    return orElse();
  }
}

abstract class OnViewLeadContact implements LeadsEvent {
  const factory OnViewLeadContact(LeadContact leadContact) =
      _$OnViewLeadContact;

  LeadContact get leadContact;
  $OnViewLeadContactCopyWith<OnViewLeadContact> get copyWith;
}

/// @nodoc
class _$LeadsStateTearOff {
  const _$LeadsStateTearOff();

// ignore: unused_element
  _LeadsState call(
      {@required List<LeadListingModel> leads,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) {
    return _LeadsState(
      leads: leads,
      isSubmitting: isSubmitting,
      isError: isError,
      errorMessage: errorMessage,
      noInternetConnection: noInternetConnection,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LeadsState = _$LeadsStateTearOff();

/// @nodoc
mixin _$LeadsState {
  List<LeadListingModel> get leads;
  bool get isSubmitting;
  bool get isError;
  String get errorMessage;
  bool get noInternetConnection;

  $LeadsStateCopyWith<LeadsState> get copyWith;
}

/// @nodoc
abstract class $LeadsStateCopyWith<$Res> {
  factory $LeadsStateCopyWith(
          LeadsState value, $Res Function(LeadsState) then) =
      _$LeadsStateCopyWithImpl<$Res>;
  $Res call(
      {List<LeadListingModel> leads,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class _$LeadsStateCopyWithImpl<$Res> implements $LeadsStateCopyWith<$Res> {
  _$LeadsStateCopyWithImpl(this._value, this._then);

  final LeadsState _value;
  // ignore: unused_field
  final $Res Function(LeadsState) _then;

  @override
  $Res call({
    Object leads = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_value.copyWith(
      leads: leads == freezed ? _value.leads : leads as List<LeadListingModel>,
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
abstract class _$LeadsStateCopyWith<$Res> implements $LeadsStateCopyWith<$Res> {
  factory _$LeadsStateCopyWith(
          _LeadsState value, $Res Function(_LeadsState) then) =
      __$LeadsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<LeadListingModel> leads,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class __$LeadsStateCopyWithImpl<$Res> extends _$LeadsStateCopyWithImpl<$Res>
    implements _$LeadsStateCopyWith<$Res> {
  __$LeadsStateCopyWithImpl(
      _LeadsState _value, $Res Function(_LeadsState) _then)
      : super(_value, (v) => _then(v as _LeadsState));

  @override
  _LeadsState get _value => super._value as _LeadsState;

  @override
  $Res call({
    Object leads = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_LeadsState(
      leads: leads == freezed ? _value.leads : leads as List<LeadListingModel>,
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
class _$_LeadsState implements _LeadsState {
  const _$_LeadsState(
      {@required this.leads,
      @required this.isSubmitting,
      @required this.isError,
      @required this.errorMessage,
      @required this.noInternetConnection})
      : assert(leads != null),
        assert(isSubmitting != null),
        assert(isError != null),
        assert(errorMessage != null),
        assert(noInternetConnection != null);

  @override
  final List<LeadListingModel> leads;
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
    return 'LeadsState(leads: $leads, isSubmitting: $isSubmitting, isError: $isError, errorMessage: $errorMessage, noInternetConnection: $noInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeadsState &&
            (identical(other.leads, leads) ||
                const DeepCollectionEquality().equals(other.leads, leads)) &&
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
      const DeepCollectionEquality().hash(leads) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(noInternetConnection);

  @override
  _$LeadsStateCopyWith<_LeadsState> get copyWith =>
      __$LeadsStateCopyWithImpl<_LeadsState>(this, _$identity);
}

abstract class _LeadsState implements LeadsState {
  const factory _LeadsState(
      {@required List<LeadListingModel> leads,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) = _$_LeadsState;

  @override
  List<LeadListingModel> get leads;
  @override
  bool get isSubmitting;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  bool get noInternetConnection;
  @override
  _$LeadsStateCopyWith<_LeadsState> get copyWith;
}
