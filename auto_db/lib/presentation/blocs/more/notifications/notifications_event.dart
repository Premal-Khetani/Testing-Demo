part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.onSave() = OnSave;
  const factory NotificationsEvent.onClose() = OnClose;
  const factory NotificationsEvent.onNotificationChange(
      {@required NotificationsType notificationsType,
      @required bool value}) = OnNotificationChange;
}

enum NotificationsType {
  Email,
  SmartPhone,
  Everything,
  AdPosted,
  ReactionPotentialByer,
  SearchPosted,
  LeadReceived,
  InventoryShareRequestReceived
}
