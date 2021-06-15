import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/notifications/notification_entity.dart';
import 'package:auto_db/domain/repositories/miscellaneous_repository.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../main.dart';

part 'notifications_state.dart';
part 'notifications_event.dart';

part 'notifications_bloc.freezed.dart';

class NotificationsBloc {
  BuildContext _context;
  NotificationsState _state;
  NotificationEntity _compareEntity;
  MiscellaneousRepository _repository;

  NotificationsBloc() {
    _state = NotificationsState.initial();
    _eventsController.stream.listen(_mapEventToState);
    _resolveDependencies();
    _initialise();
  }

  NotificationsState get initialState => _state;

  var _eventsController = StreamController<NotificationsEvent>();
  StreamSink<NotificationsEvent> get _inEventsControler =>
      _eventsController.sink;

  var _stateController = StreamController<NotificationsState>.broadcast();
  StreamSink<NotificationsState> get _inStateController =>
      _stateController.sink;
  Stream<NotificationsState> get outStateController => _stateController.stream;

  void _mapEventToState(NotificationsEvent event) {
    event.map(onSave: (_) {
      _save();
    }, onClose: (_) {
      close();
    }, onNotificationChange: (val) {
      final notificationsType = val.notificationsType;
      final value = val.value;
      var entity = _state.entity;
      if (notificationsType == NotificationsType.Email) {
        entity = entity.copyWith(email: value);
      } else if (notificationsType == NotificationsType.SmartPhone) {
        entity = entity.copyWith(smartphone: value);
      } else if (notificationsType == NotificationsType.Everything) {
        entity = entity.copyWith(everything: value);
      } else if (notificationsType == NotificationsType.AdPosted) {
        entity = entity.copyWith(adPlaced: value);
      } else if (notificationsType == NotificationsType.ReactionPotentialByer) {
        entity = entity.copyWith(reactionPotentialBuyer: value);
      } else if (notificationsType == NotificationsType.SearchPosted) {
        entity = entity.copyWith(searchPosted: value);
      } else if (notificationsType == NotificationsType.LeadReceived) {
        entity = entity.copyWith(leadReceived: value);
      } else if (notificationsType == NotificationsType.InventoryShareRequestReceived) {
        entity = entity.copyWith(inventoryShareRequestReceived: value);
      }
      _state = _state.copyWith(entity: entity);
      _emitNewState();
    });
  }

  Future<void> close() async {
    if (_checkIsDataChanged()) {
      final userResponse =
          await DataChangedPopUpUtil.showDataChangedPopUp(_context);
      switch (userResponse) {
        case DataChangedPopupResponse.SaveAndClose:
          _save();
          break;
        case DataChangedPopupResponse.Close:
          _popAndReturnState();
          break;
        default:
          break;
      }
    } else {
      _popAndReturnState();
    }
  }

  Future<void> _save() async {
    if (_checkIsDataChanged()) {
      _emitSubmittingState(true);
      final response =
          await _repository.saveNotificationSettings(_state.entity);
      if (response.error != null) {
        String errorMessage = '';

        response.error.map(
            serverError: (e) {
              errorMessage = e.massage;
            },
            noInternerError: (_) {
              errorMessage = StringConstants.noInternet;
            },
            genericError: (_) {
              errorMessage = StringConstants.generalError;
            },
            noOperationError: (_) {});

        _emitSubmittingState(false);

        CustomToastUtils.showCustomToast(
            context: _context,
            message: errorMessage,
            customToastType: CustomToastType.Error);
      } else {
        final notEntity = response.body;
        _state = _state.copyWith(entity: notEntity, isSubmitting: false);
        _compareEntity = notEntity.copyWith();
        _emitNewState();
        _popAndReturnState();
      }
    } else {
      _popAndReturnState();
    }
  }

  bool _checkIsDataChanged() {
    final entity = _state.entity;
    if (_compareEntity == null) {
      return true;
    }
    if (_compareEntity.email != entity.email ||
        _compareEntity.adPlaced != entity.adPlaced ||
        _compareEntity.everything != entity.everything ||
        _compareEntity.inventoryShareRequestReceived !=
            entity.inventoryShareRequestReceived ||
        _compareEntity.leadReceived != entity.leadReceived ||
        _compareEntity.reactionPotentialBuyer !=
            entity.reactionPotentialBuyer ||
        _compareEntity.searchPosted != entity.searchPosted ||
        _compareEntity.smartphone != entity.smartphone) {
      return true;
    }
    return false;
  }

  void _emitSubmittingState(bool isSubmitting) {
    _state = _state.copyWith(
      isSubmitting: isSubmitting,
    );
    _emitNewState();
  }

  void _emitNewState() {
    _inStateController.add(_state);
  }

  void addEvent(NotificationsEvent event) {
    _inEventsControler.add(event);
  }

  void setContext(BuildContext buildContext) {
    _context = buildContext;
  }

  void _popAndReturnState() {
    Navigator.of(_context).pop();
  }

  void _initialise() async {
    _emitSubmittingState(true);
    final response = await _repository.getNotificationSettings();
    if (response.error != null) {
      String errorMessage = '';

      response.error.map(
          serverError: (e) {
            errorMessage = e.massage;
          },
          noInternerError: (_) {
            errorMessage = StringConstants.noInternet;
          },
          genericError: (_) {
            errorMessage = StringConstants.generalError;
          },
          noOperationError: (_) {});

      _emitSubmittingState(false);

      CustomToastUtils.showCustomToast(
          context: _context,
          message: errorMessage,
          customToastType: CustomToastType.Error);
    } else {
      final notEntity = response.body;
      _state = _state.copyWith(entity: notEntity, isSubmitting: false);
      _compareEntity = notEntity.copyWith();
      _emitNewState();
    }
  }

  void _resolveDependencies() {
    _repository = getIt.get<MiscellaneousRepository>();
  }

  dispose() {
    _eventsController.close();
    _stateController.close();
  }
}
