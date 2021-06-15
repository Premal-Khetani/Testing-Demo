import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';
part 'notification_entity.g.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    @required bool email,
    @required bool smartphone,
    @required bool everything,
    @required bool adPlaced,
    @required bool reactionPotentialBuyer,
    @required bool searchPosted,
    @required bool leadReceived,
    @required bool inventoryShareRequestReceived,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);

  factory NotificationEntity.initial() => NotificationEntity(
    email: false,
    smartphone: false,
    everything: false,
    adPlaced: false,
    reactionPotentialBuyer: false,
    searchPosted: false,
    leadReceived: false,
    inventoryShareRequestReceived: false,
  );
}