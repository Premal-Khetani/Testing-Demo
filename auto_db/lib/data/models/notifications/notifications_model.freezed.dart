// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) {
  return _NotificationsModel.fromJson(json);
}

/// @nodoc
class _$NotificationsModelTearOff {
  const _$NotificationsModelTearOff();

// ignore: unused_element
  _NotificationsModel call(
      {@required int email,
      @required int smartphone,
      @required int everything,
      @required int ad_placed,
      @required int reaction_potential_buyer,
      @required int search_posted,
      @required int lead_received,
      @required int inventory_share_request_received}) {
    return _NotificationsModel(
      email: email,
      smartphone: smartphone,
      everything: everything,
      ad_placed: ad_placed,
      reaction_potential_buyer: reaction_potential_buyer,
      search_posted: search_posted,
      lead_received: lead_received,
      inventory_share_request_received: inventory_share_request_received,
    );
  }

// ignore: unused_element
  NotificationsModel fromJson(Map<String, Object> json) {
    return NotificationsModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsModel = _$NotificationsModelTearOff();

/// @nodoc
mixin _$NotificationsModel {
  int get email;
  int get smartphone;
  int get everything;
  int get ad_placed;
  int get reaction_potential_buyer;
  int get search_posted;
  int get lead_received;
  int get inventory_share_request_received;

  Map<String, dynamic> toJson();
  $NotificationsModelCopyWith<NotificationsModel> get copyWith;
}

/// @nodoc
abstract class $NotificationsModelCopyWith<$Res> {
  factory $NotificationsModelCopyWith(
          NotificationsModel value, $Res Function(NotificationsModel) then) =
      _$NotificationsModelCopyWithImpl<$Res>;
  $Res call(
      {int email,
      int smartphone,
      int everything,
      int ad_placed,
      int reaction_potential_buyer,
      int search_posted,
      int lead_received,
      int inventory_share_request_received});
}

/// @nodoc
class _$NotificationsModelCopyWithImpl<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  _$NotificationsModelCopyWithImpl(this._value, this._then);

  final NotificationsModel _value;
  // ignore: unused_field
  final $Res Function(NotificationsModel) _then;

  @override
  $Res call({
    Object email = freezed,
    Object smartphone = freezed,
    Object everything = freezed,
    Object ad_placed = freezed,
    Object reaction_potential_buyer = freezed,
    Object search_posted = freezed,
    Object lead_received = freezed,
    Object inventory_share_request_received = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as int,
      smartphone: smartphone == freezed ? _value.smartphone : smartphone as int,
      everything: everything == freezed ? _value.everything : everything as int,
      ad_placed: ad_placed == freezed ? _value.ad_placed : ad_placed as int,
      reaction_potential_buyer: reaction_potential_buyer == freezed
          ? _value.reaction_potential_buyer
          : reaction_potential_buyer as int,
      search_posted: search_posted == freezed
          ? _value.search_posted
          : search_posted as int,
      lead_received: lead_received == freezed
          ? _value.lead_received
          : lead_received as int,
      inventory_share_request_received:
          inventory_share_request_received == freezed
              ? _value.inventory_share_request_received
              : inventory_share_request_received as int,
    ));
  }
}

/// @nodoc
abstract class _$NotificationsModelCopyWith<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  factory _$NotificationsModelCopyWith(
          _NotificationsModel value, $Res Function(_NotificationsModel) then) =
      __$NotificationsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int email,
      int smartphone,
      int everything,
      int ad_placed,
      int reaction_potential_buyer,
      int search_posted,
      int lead_received,
      int inventory_share_request_received});
}

/// @nodoc
class __$NotificationsModelCopyWithImpl<$Res>
    extends _$NotificationsModelCopyWithImpl<$Res>
    implements _$NotificationsModelCopyWith<$Res> {
  __$NotificationsModelCopyWithImpl(
      _NotificationsModel _value, $Res Function(_NotificationsModel) _then)
      : super(_value, (v) => _then(v as _NotificationsModel));

  @override
  _NotificationsModel get _value => super._value as _NotificationsModel;

  @override
  $Res call({
    Object email = freezed,
    Object smartphone = freezed,
    Object everything = freezed,
    Object ad_placed = freezed,
    Object reaction_potential_buyer = freezed,
    Object search_posted = freezed,
    Object lead_received = freezed,
    Object inventory_share_request_received = freezed,
  }) {
    return _then(_NotificationsModel(
      email: email == freezed ? _value.email : email as int,
      smartphone: smartphone == freezed ? _value.smartphone : smartphone as int,
      everything: everything == freezed ? _value.everything : everything as int,
      ad_placed: ad_placed == freezed ? _value.ad_placed : ad_placed as int,
      reaction_potential_buyer: reaction_potential_buyer == freezed
          ? _value.reaction_potential_buyer
          : reaction_potential_buyer as int,
      search_posted: search_posted == freezed
          ? _value.search_posted
          : search_posted as int,
      lead_received: lead_received == freezed
          ? _value.lead_received
          : lead_received as int,
      inventory_share_request_received:
          inventory_share_request_received == freezed
              ? _value.inventory_share_request_received
              : inventory_share_request_received as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationsModel extends _NotificationsModel
    with DiagnosticableTreeMixin {
  const _$_NotificationsModel(
      {@required this.email,
      @required this.smartphone,
      @required this.everything,
      @required this.ad_placed,
      @required this.reaction_potential_buyer,
      @required this.search_posted,
      @required this.lead_received,
      @required this.inventory_share_request_received})
      : assert(email != null),
        assert(smartphone != null),
        assert(everything != null),
        assert(ad_placed != null),
        assert(reaction_potential_buyer != null),
        assert(search_posted != null),
        assert(lead_received != null),
        assert(inventory_share_request_received != null),
        super._();

  factory _$_NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationsModelFromJson(json);

  @override
  final int email;
  @override
  final int smartphone;
  @override
  final int everything;
  @override
  final int ad_placed;
  @override
  final int reaction_potential_buyer;
  @override
  final int search_posted;
  @override
  final int lead_received;
  @override
  final int inventory_share_request_received;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationsModel(email: $email, smartphone: $smartphone, everything: $everything, ad_placed: $ad_placed, reaction_potential_buyer: $reaction_potential_buyer, search_posted: $search_posted, lead_received: $lead_received, inventory_share_request_received: $inventory_share_request_received)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationsModel'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('smartphone', smartphone))
      ..add(DiagnosticsProperty('everything', everything))
      ..add(DiagnosticsProperty('ad_placed', ad_placed))
      ..add(DiagnosticsProperty(
          'reaction_potential_buyer', reaction_potential_buyer))
      ..add(DiagnosticsProperty('search_posted', search_posted))
      ..add(DiagnosticsProperty('lead_received', lead_received))
      ..add(DiagnosticsProperty('inventory_share_request_received',
          inventory_share_request_received));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.smartphone, smartphone) ||
                const DeepCollectionEquality()
                    .equals(other.smartphone, smartphone)) &&
            (identical(other.everything, everything) ||
                const DeepCollectionEquality()
                    .equals(other.everything, everything)) &&
            (identical(other.ad_placed, ad_placed) ||
                const DeepCollectionEquality()
                    .equals(other.ad_placed, ad_placed)) &&
            (identical(
                    other.reaction_potential_buyer, reaction_potential_buyer) ||
                const DeepCollectionEquality().equals(
                    other.reaction_potential_buyer,
                    reaction_potential_buyer)) &&
            (identical(other.search_posted, search_posted) ||
                const DeepCollectionEquality()
                    .equals(other.search_posted, search_posted)) &&
            (identical(other.lead_received, lead_received) ||
                const DeepCollectionEquality()
                    .equals(other.lead_received, lead_received)) &&
            (identical(other.inventory_share_request_received,
                    inventory_share_request_received) ||
                const DeepCollectionEquality().equals(
                    other.inventory_share_request_received,
                    inventory_share_request_received)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(smartphone) ^
      const DeepCollectionEquality().hash(everything) ^
      const DeepCollectionEquality().hash(ad_placed) ^
      const DeepCollectionEquality().hash(reaction_potential_buyer) ^
      const DeepCollectionEquality().hash(search_posted) ^
      const DeepCollectionEquality().hash(lead_received) ^
      const DeepCollectionEquality().hash(inventory_share_request_received);

  @override
  _$NotificationsModelCopyWith<_NotificationsModel> get copyWith =>
      __$NotificationsModelCopyWithImpl<_NotificationsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationsModelToJson(this);
  }
}

abstract class _NotificationsModel extends NotificationsModel {
  const _NotificationsModel._() : super._();
  const factory _NotificationsModel(
      {@required int email,
      @required int smartphone,
      @required int everything,
      @required int ad_placed,
      @required int reaction_potential_buyer,
      @required int search_posted,
      @required int lead_received,
      @required int inventory_share_request_received}) = _$_NotificationsModel;

  factory _NotificationsModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationsModel.fromJson;

  @override
  int get email;
  @override
  int get smartphone;
  @override
  int get everything;
  @override
  int get ad_placed;
  @override
  int get reaction_potential_buyer;
  @override
  int get search_posted;
  @override
  int get lead_received;
  @override
  int get inventory_share_request_received;
  @override
  _$NotificationsModelCopyWith<_NotificationsModel> get copyWith;
}
