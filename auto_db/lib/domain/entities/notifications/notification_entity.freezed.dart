// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) {
  return _NotificationEntity.fromJson(json);
}

/// @nodoc
class _$NotificationEntityTearOff {
  const _$NotificationEntityTearOff();

// ignore: unused_element
  _NotificationEntity call(
      {@required bool email,
      @required bool smartphone,
      @required bool everything,
      @required bool adPlaced,
      @required bool reactionPotentialBuyer,
      @required bool searchPosted,
      @required bool leadReceived,
      @required bool inventoryShareRequestReceived}) {
    return _NotificationEntity(
      email: email,
      smartphone: smartphone,
      everything: everything,
      adPlaced: adPlaced,
      reactionPotentialBuyer: reactionPotentialBuyer,
      searchPosted: searchPosted,
      leadReceived: leadReceived,
      inventoryShareRequestReceived: inventoryShareRequestReceived,
    );
  }

// ignore: unused_element
  NotificationEntity fromJson(Map<String, Object> json) {
    return NotificationEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationEntity = _$NotificationEntityTearOff();

/// @nodoc
mixin _$NotificationEntity {
  bool get email;
  bool get smartphone;
  bool get everything;
  bool get adPlaced;
  bool get reactionPotentialBuyer;
  bool get searchPosted;
  bool get leadReceived;
  bool get inventoryShareRequestReceived;

  Map<String, dynamic> toJson();
  $NotificationEntityCopyWith<NotificationEntity> get copyWith;
}

/// @nodoc
abstract class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) then) =
      _$NotificationEntityCopyWithImpl<$Res>;
  $Res call(
      {bool email,
      bool smartphone,
      bool everything,
      bool adPlaced,
      bool reactionPotentialBuyer,
      bool searchPosted,
      bool leadReceived,
      bool inventoryShareRequestReceived});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._value, this._then);

  final NotificationEntity _value;
  // ignore: unused_field
  final $Res Function(NotificationEntity) _then;

  @override
  $Res call({
    Object email = freezed,
    Object smartphone = freezed,
    Object everything = freezed,
    Object adPlaced = freezed,
    Object reactionPotentialBuyer = freezed,
    Object searchPosted = freezed,
    Object leadReceived = freezed,
    Object inventoryShareRequestReceived = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as bool,
      smartphone:
          smartphone == freezed ? _value.smartphone : smartphone as bool,
      everything:
          everything == freezed ? _value.everything : everything as bool,
      adPlaced: adPlaced == freezed ? _value.adPlaced : adPlaced as bool,
      reactionPotentialBuyer: reactionPotentialBuyer == freezed
          ? _value.reactionPotentialBuyer
          : reactionPotentialBuyer as bool,
      searchPosted:
          searchPosted == freezed ? _value.searchPosted : searchPosted as bool,
      leadReceived:
          leadReceived == freezed ? _value.leadReceived : leadReceived as bool,
      inventoryShareRequestReceived: inventoryShareRequestReceived == freezed
          ? _value.inventoryShareRequestReceived
          : inventoryShareRequestReceived as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationEntityCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(
          _NotificationEntity value, $Res Function(_NotificationEntity) then) =
      __$NotificationEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool email,
      bool smartphone,
      bool everything,
      bool adPlaced,
      bool reactionPotentialBuyer,
      bool searchPosted,
      bool leadReceived,
      bool inventoryShareRequestReceived});
}

/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(
      _NotificationEntity _value, $Res Function(_NotificationEntity) _then)
      : super(_value, (v) => _then(v as _NotificationEntity));

  @override
  _NotificationEntity get _value => super._value as _NotificationEntity;

  @override
  $Res call({
    Object email = freezed,
    Object smartphone = freezed,
    Object everything = freezed,
    Object adPlaced = freezed,
    Object reactionPotentialBuyer = freezed,
    Object searchPosted = freezed,
    Object leadReceived = freezed,
    Object inventoryShareRequestReceived = freezed,
  }) {
    return _then(_NotificationEntity(
      email: email == freezed ? _value.email : email as bool,
      smartphone:
          smartphone == freezed ? _value.smartphone : smartphone as bool,
      everything:
          everything == freezed ? _value.everything : everything as bool,
      adPlaced: adPlaced == freezed ? _value.adPlaced : adPlaced as bool,
      reactionPotentialBuyer: reactionPotentialBuyer == freezed
          ? _value.reactionPotentialBuyer
          : reactionPotentialBuyer as bool,
      searchPosted:
          searchPosted == freezed ? _value.searchPosted : searchPosted as bool,
      leadReceived:
          leadReceived == freezed ? _value.leadReceived : leadReceived as bool,
      inventoryShareRequestReceived: inventoryShareRequestReceived == freezed
          ? _value.inventoryShareRequestReceived
          : inventoryShareRequestReceived as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationEntity implements _NotificationEntity {
  const _$_NotificationEntity(
      {@required this.email,
      @required this.smartphone,
      @required this.everything,
      @required this.adPlaced,
      @required this.reactionPotentialBuyer,
      @required this.searchPosted,
      @required this.leadReceived,
      @required this.inventoryShareRequestReceived})
      : assert(email != null),
        assert(smartphone != null),
        assert(everything != null),
        assert(adPlaced != null),
        assert(reactionPotentialBuyer != null),
        assert(searchPosted != null),
        assert(leadReceived != null),
        assert(inventoryShareRequestReceived != null);

  factory _$_NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationEntityFromJson(json);

  @override
  final bool email;
  @override
  final bool smartphone;
  @override
  final bool everything;
  @override
  final bool adPlaced;
  @override
  final bool reactionPotentialBuyer;
  @override
  final bool searchPosted;
  @override
  final bool leadReceived;
  @override
  final bool inventoryShareRequestReceived;

  @override
  String toString() {
    return 'NotificationEntity(email: $email, smartphone: $smartphone, everything: $everything, adPlaced: $adPlaced, reactionPotentialBuyer: $reactionPotentialBuyer, searchPosted: $searchPosted, leadReceived: $leadReceived, inventoryShareRequestReceived: $inventoryShareRequestReceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationEntity &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.smartphone, smartphone) ||
                const DeepCollectionEquality()
                    .equals(other.smartphone, smartphone)) &&
            (identical(other.everything, everything) ||
                const DeepCollectionEquality()
                    .equals(other.everything, everything)) &&
            (identical(other.adPlaced, adPlaced) ||
                const DeepCollectionEquality()
                    .equals(other.adPlaced, adPlaced)) &&
            (identical(other.reactionPotentialBuyer, reactionPotentialBuyer) ||
                const DeepCollectionEquality().equals(
                    other.reactionPotentialBuyer, reactionPotentialBuyer)) &&
            (identical(other.searchPosted, searchPosted) ||
                const DeepCollectionEquality()
                    .equals(other.searchPosted, searchPosted)) &&
            (identical(other.leadReceived, leadReceived) ||
                const DeepCollectionEquality()
                    .equals(other.leadReceived, leadReceived)) &&
            (identical(other.inventoryShareRequestReceived,
                    inventoryShareRequestReceived) ||
                const DeepCollectionEquality().equals(
                    other.inventoryShareRequestReceived,
                    inventoryShareRequestReceived)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(smartphone) ^
      const DeepCollectionEquality().hash(everything) ^
      const DeepCollectionEquality().hash(adPlaced) ^
      const DeepCollectionEquality().hash(reactionPotentialBuyer) ^
      const DeepCollectionEquality().hash(searchPosted) ^
      const DeepCollectionEquality().hash(leadReceived) ^
      const DeepCollectionEquality().hash(inventoryShareRequestReceived);

  @override
  _$NotificationEntityCopyWith<_NotificationEntity> get copyWith =>
      __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationEntityToJson(this);
  }
}

abstract class _NotificationEntity implements NotificationEntity {
  const factory _NotificationEntity(
      {@required bool email,
      @required bool smartphone,
      @required bool everything,
      @required bool adPlaced,
      @required bool reactionPotentialBuyer,
      @required bool searchPosted,
      @required bool leadReceived,
      @required bool inventoryShareRequestReceived}) = _$_NotificationEntity;

  factory _NotificationEntity.fromJson(Map<String, dynamic> json) =
      _$_NotificationEntity.fromJson;

  @override
  bool get email;
  @override
  bool get smartphone;
  @override
  bool get everything;
  @override
  bool get adPlaced;
  @override
  bool get reactionPotentialBuyer;
  @override
  bool get searchPosted;
  @override
  bool get leadReceived;
  @override
  bool get inventoryShareRequestReceived;
  @override
  _$NotificationEntityCopyWith<_NotificationEntity> get copyWith;
}
