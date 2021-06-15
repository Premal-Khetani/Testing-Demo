part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @required NotificationEntity entity,
    @required bool isSubmitting
  }) = _NotificationsState;

  factory NotificationsState.initial() => NotificationsState(
    entity: NotificationEntity.initial(),
    isSubmitting: false,
  );
}
