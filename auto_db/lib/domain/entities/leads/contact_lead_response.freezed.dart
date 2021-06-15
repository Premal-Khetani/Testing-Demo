// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_lead_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactLeadResponseTearOff {
  const _$ContactLeadResponseTearOff();

// ignore: unused_element
  _ContactLeadResponse call(
      {@required bool success, @required LeadContact leadContact}) {
    return _ContactLeadResponse(
      success: success,
      leadContact: leadContact,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactLeadResponse = _$ContactLeadResponseTearOff();

/// @nodoc
mixin _$ContactLeadResponse {
  bool get success;
  LeadContact get leadContact;

  $ContactLeadResponseCopyWith<ContactLeadResponse> get copyWith;
}

/// @nodoc
abstract class $ContactLeadResponseCopyWith<$Res> {
  factory $ContactLeadResponseCopyWith(
          ContactLeadResponse value, $Res Function(ContactLeadResponse) then) =
      _$ContactLeadResponseCopyWithImpl<$Res>;
  $Res call({bool success, LeadContact leadContact});

  $LeadContactCopyWith<$Res> get leadContact;
}

/// @nodoc
class _$ContactLeadResponseCopyWithImpl<$Res>
    implements $ContactLeadResponseCopyWith<$Res> {
  _$ContactLeadResponseCopyWithImpl(this._value, this._then);

  final ContactLeadResponse _value;
  // ignore: unused_field
  final $Res Function(ContactLeadResponse) _then;

  @override
  $Res call({
    Object success = freezed,
    Object leadContact = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      leadContact: leadContact == freezed
          ? _value.leadContact
          : leadContact as LeadContact,
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
abstract class _$ContactLeadResponseCopyWith<$Res>
    implements $ContactLeadResponseCopyWith<$Res> {
  factory _$ContactLeadResponseCopyWith(_ContactLeadResponse value,
          $Res Function(_ContactLeadResponse) then) =
      __$ContactLeadResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, LeadContact leadContact});

  @override
  $LeadContactCopyWith<$Res> get leadContact;
}

/// @nodoc
class __$ContactLeadResponseCopyWithImpl<$Res>
    extends _$ContactLeadResponseCopyWithImpl<$Res>
    implements _$ContactLeadResponseCopyWith<$Res> {
  __$ContactLeadResponseCopyWithImpl(
      _ContactLeadResponse _value, $Res Function(_ContactLeadResponse) _then)
      : super(_value, (v) => _then(v as _ContactLeadResponse));

  @override
  _ContactLeadResponse get _value => super._value as _ContactLeadResponse;

  @override
  $Res call({
    Object success = freezed,
    Object leadContact = freezed,
  }) {
    return _then(_ContactLeadResponse(
      success: success == freezed ? _value.success : success as bool,
      leadContact: leadContact == freezed
          ? _value.leadContact
          : leadContact as LeadContact,
    ));
  }
}

/// @nodoc
class _$_ContactLeadResponse implements _ContactLeadResponse {
  const _$_ContactLeadResponse(
      {@required this.success, @required this.leadContact})
      : assert(success != null),
        assert(leadContact != null);

  @override
  final bool success;
  @override
  final LeadContact leadContact;

  @override
  String toString() {
    return 'ContactLeadResponse(success: $success, leadContact: $leadContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactLeadResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.leadContact, leadContact) ||
                const DeepCollectionEquality()
                    .equals(other.leadContact, leadContact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(leadContact);

  @override
  _$ContactLeadResponseCopyWith<_ContactLeadResponse> get copyWith =>
      __$ContactLeadResponseCopyWithImpl<_ContactLeadResponse>(
          this, _$identity);
}

abstract class _ContactLeadResponse implements ContactLeadResponse {
  const factory _ContactLeadResponse(
      {@required bool success,
      @required LeadContact leadContact}) = _$_ContactLeadResponse;

  @override
  bool get success;
  @override
  LeadContact get leadContact;
  @override
  _$ContactLeadResponseCopyWith<_ContactLeadResponse> get copyWith;
}
