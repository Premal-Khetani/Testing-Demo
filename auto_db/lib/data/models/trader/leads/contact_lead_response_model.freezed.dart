// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_lead_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactLeadResponseModel _$ContactLeadResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ContactLeadResponseModel.fromJson(json);
}

/// @nodoc
class _$ContactLeadResponseModelTearOff {
  const _$ContactLeadResponseModelTearOff();

// ignore: unused_element
  _ContactLeadResponseModel call(
      {@required @JsonKey(name: 'success') bool success,
      @required @JsonKey(name: 'leadContact') LeadContactModel leadContact}) {
    return _ContactLeadResponseModel(
      success: success,
      leadContact: leadContact,
    );
  }

// ignore: unused_element
  ContactLeadResponseModel fromJson(Map<String, Object> json) {
    return ContactLeadResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ContactLeadResponseModel = _$ContactLeadResponseModelTearOff();

/// @nodoc
mixin _$ContactLeadResponseModel {
  @JsonKey(name: 'success')
  bool get success;
  @JsonKey(name: 'leadContact')
  LeadContactModel get leadContact;

  Map<String, dynamic> toJson();
  $ContactLeadResponseModelCopyWith<ContactLeadResponseModel> get copyWith;
}

/// @nodoc
abstract class $ContactLeadResponseModelCopyWith<$Res> {
  factory $ContactLeadResponseModelCopyWith(ContactLeadResponseModel value,
          $Res Function(ContactLeadResponseModel) then) =
      _$ContactLeadResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'leadContact') LeadContactModel leadContact});

  $LeadContactModelCopyWith<$Res> get leadContact;
}

/// @nodoc
class _$ContactLeadResponseModelCopyWithImpl<$Res>
    implements $ContactLeadResponseModelCopyWith<$Res> {
  _$ContactLeadResponseModelCopyWithImpl(this._value, this._then);

  final ContactLeadResponseModel _value;
  // ignore: unused_field
  final $Res Function(ContactLeadResponseModel) _then;

  @override
  $Res call({
    Object success = freezed,
    Object leadContact = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      leadContact: leadContact == freezed
          ? _value.leadContact
          : leadContact as LeadContactModel,
    ));
  }

  @override
  $LeadContactModelCopyWith<$Res> get leadContact {
    if (_value.leadContact == null) {
      return null;
    }
    return $LeadContactModelCopyWith<$Res>(_value.leadContact, (value) {
      return _then(_value.copyWith(leadContact: value));
    });
  }
}

/// @nodoc
abstract class _$ContactLeadResponseModelCopyWith<$Res>
    implements $ContactLeadResponseModelCopyWith<$Res> {
  factory _$ContactLeadResponseModelCopyWith(_ContactLeadResponseModel value,
          $Res Function(_ContactLeadResponseModel) then) =
      __$ContactLeadResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'leadContact') LeadContactModel leadContact});

  @override
  $LeadContactModelCopyWith<$Res> get leadContact;
}

/// @nodoc
class __$ContactLeadResponseModelCopyWithImpl<$Res>
    extends _$ContactLeadResponseModelCopyWithImpl<$Res>
    implements _$ContactLeadResponseModelCopyWith<$Res> {
  __$ContactLeadResponseModelCopyWithImpl(_ContactLeadResponseModel _value,
      $Res Function(_ContactLeadResponseModel) _then)
      : super(_value, (v) => _then(v as _ContactLeadResponseModel));

  @override
  _ContactLeadResponseModel get _value =>
      super._value as _ContactLeadResponseModel;

  @override
  $Res call({
    Object success = freezed,
    Object leadContact = freezed,
  }) {
    return _then(_ContactLeadResponseModel(
      success: success == freezed ? _value.success : success as bool,
      leadContact: leadContact == freezed
          ? _value.leadContact
          : leadContact as LeadContactModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ContactLeadResponseModel extends _ContactLeadResponseModel {
  const _$_ContactLeadResponseModel(
      {@required @JsonKey(name: 'success') this.success,
      @required @JsonKey(name: 'leadContact') this.leadContact})
      : assert(success != null),
        assert(leadContact != null),
        super._();

  factory _$_ContactLeadResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactLeadResponseModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'leadContact')
  final LeadContactModel leadContact;

  @override
  String toString() {
    return 'ContactLeadResponseModel(success: $success, leadContact: $leadContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactLeadResponseModel &&
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
  _$ContactLeadResponseModelCopyWith<_ContactLeadResponseModel> get copyWith =>
      __$ContactLeadResponseModelCopyWithImpl<_ContactLeadResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactLeadResponseModelToJson(this);
  }
}

abstract class _ContactLeadResponseModel extends ContactLeadResponseModel {
  const _ContactLeadResponseModel._() : super._();
  const factory _ContactLeadResponseModel(
      {@required
      @JsonKey(name: 'success')
          bool success,
      @required
      @JsonKey(name: 'leadContact')
          LeadContactModel leadContact}) = _$_ContactLeadResponseModel;

  factory _ContactLeadResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ContactLeadResponseModel.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'leadContact')
  LeadContactModel get leadContact;
  @override
  _$ContactLeadResponseModelCopyWith<_ContactLeadResponseModel> get copyWith;
}
