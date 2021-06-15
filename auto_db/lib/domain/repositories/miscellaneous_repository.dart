import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/mail/mail_entity.dart';
import 'package:auto_db/domain/entities/notifications/notification_entity.dart';

abstract class MiscellaneousRepository {
  Future<ResponseWrapper<NotificationEntity>> getNotificationSettings();
  Future<ResponseWrapper<NotificationEntity>> saveNotificationSettings(
      NotificationEntity entity);
  Future<ResponseWrapper<bool>> sendContactEmail(MailEntity entity);
}
