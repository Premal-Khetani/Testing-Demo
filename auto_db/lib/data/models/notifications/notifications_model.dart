import 'package:auto_db/domain/entities/notifications/notification_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notifications_model.freezed.dart';
part 'notifications_model.g.dart';

@freezed
abstract class NotificationsModel with _$NotificationsModel {
  const NotificationsModel._();

  const factory NotificationsModel({
    @required int email,
    @required int smartphone,
    @required int everything,
    @required int ad_placed,
    @required int reaction_potential_buyer,
    @required int search_posted,
    @required int lead_received,
    @required int inventory_share_request_received,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsModelFromJson(json);

  factory NotificationsModel.fromDomain(NotificationEntity entity) {
    return NotificationsModel(
      email: entity.email ? 1 : 0,
      smartphone: entity.smartphone ? 1 : 0,
      everything: entity.everything ? 1 : 0,
      ad_placed: entity.adPlaced ? 1 : 0,
      reaction_potential_buyer: entity.reactionPotentialBuyer ? 1 : 0,
      search_posted: entity.searchPosted ? 1 : 0,
      lead_received: entity.leadReceived ? 1 : 0,
      inventory_share_request_received:
          entity.inventoryShareRequestReceived ? 1 : 0,
    );
  }
  NotificationEntity toDomain() {
    return NotificationEntity(
      email: email != 0,
      smartphone: smartphone != 0,
      everything: everything != 0,
      adPlaced: ad_placed != 0,
      reactionPotentialBuyer: reaction_potential_buyer != 0,
      searchPosted: search_posted != 0,
      leadReceived: lead_received != 0,
      inventoryShareRequestReceived: inventory_share_request_received != 0,
    );
  }
}
