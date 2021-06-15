import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/notifications/notifications_model.dart';
import 'package:auto_db/domain/entities/mail/mail_entity.dart';
import 'package:auto_db/domain/entities/notifications/notification_entity.dart';
import 'package:auto_db/domain/repositories/miscellaneous_repository.dart';
import 'package:dio/dio.dart';

import '../../main.dart';

const String _getNotifiacitonsPath = "/passport/notifications";
const String _saveNotifiacitonsPath = "/passport/notifications/update";
const String _sendContactEmail = '/passport/sent-contact-email';

class MiscellaneousRepositoryImplementation implements MiscellaneousRepository {
  MainDioClient dioClient;

  MiscellaneousRepositoryImplementation() {
    dioClient = getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<NotificationEntity>> getNotificationSettings() async {
    ResponseWrapper<NotificationEntity> _responseWrapper =
        ResponseWrapper<NotificationEntity>();

    try {
      final _response = await dioClient.get(_getNotifiacitonsPath,
          options: Options(responseType: ResponseType.json),
          logTag: 'Notification settings',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Notification settings response: ' +
              _response.response.data.toString());
          _responseWrapper.body =
              NotificationsModel.fromJson(_response.response.data).toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Notification settings error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<NotificationEntity>> saveNotificationSettings(
      NotificationEntity entity) async {
    ResponseWrapper<NotificationEntity> _responseWrapper =
        ResponseWrapper<NotificationEntity>();

    try {
      final data = entity.toJson();
      print(data);
      final _response = await dioClient.post(_saveNotifiacitonsPath,
          data: entity.toJson(),
          options: Options(responseType: ResponseType.json),
          logTag: 'Notification settings update',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Notification settings update response: ' +
              _response.response.data.toString());
          _responseWrapper.body =
              NotificationsModel.fromJson(_response.response.data).toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Notification settings update erorr: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<bool>> sendContactEmail(MailEntity entity) async {
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();

    try {
      final data = entity.toJson();
      print(data);
      final _response = await dioClient.post(_sendContactEmail,
          data: entity.toJson(),
          options: Options(responseType: ResponseType.json),
          logTag: 'Send Contact Email',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Send Contact Email response: ' +
              _response.response.data.toString());
          _responseWrapper.body = true;
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Send Contact Email erorr: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }
}
