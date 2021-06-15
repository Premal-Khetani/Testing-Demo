import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/mail/mail_entity.dart';
import 'package:auto_db/domain/repositories/miscellaneous_repository.dart';
import 'package:auto_db/domain/value_objects/email.dart';
import 'package:auto_db/domain/value_objects/not_empty_string.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mail_state.dart';
part 'mail_event.dart';

part 'mail_bloc.freezed.dart';

class MailBloc {
  BuildContext _context;
  MailState _state;

  MiscellaneousRepository _repository;

  MailBloc() {
    _state = MailState.initial();
    _eventsController.stream.listen(_mapEventToState);
    _resolveDependencies();
    _initialise();
  }

  MailState get initialState {
    if (_state == null) {
      _state = MailState.initial();
    }
    return _state;
  }

  var _eventsController = StreamController<MailEvent>();
  StreamSink<MailEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<MailState>.broadcast();
  StreamSink<MailState> get _inStateController => _stateController.sink;
  Stream<MailState> get outStateController => _stateController.stream;

  void _mapEventToState(MailEvent event) {
    event.map(onSend: (_) async {
      await _send();
    }, onBack: (_) {
      _popAndReturnState();
    }, onSubjectChange: (e) {
      _state.subject.value = e.value;
      if (_state.subject.isError) {
        _state.subject.errorMessage = '';
        _emitNewState();
      }
    }, onQuestionChange: (e) {
      _state.question.value = e.value;
      if (_state.question.isError) {
        _state.question.errorMessage = '';
        _emitNewState();
      }
    }, onEmailChange: (e) {
      _state.email.value = e.value;
      if (_state.email.isError) {
        _state.email.errorMessage = '';
        _emitNewState();
      }
    }, onFullNameChange: (e) {
      _state.fullName.value = e.value;
      if (_state.fullName.isError) {
        _state.fullName.errorMessage = '';
        _emitNewState();
      }
    }, 
    onHelpButtonTapped: (_) {
      
    });
  }

  bool _validateForm() {
    final isSubjectValid = _state.subject.validate();
    final isQuestionValid = _state.question.validate();
    final isFullNameValid = _state.fullName.validate();
    final isEmailValid = _state.email.validate();
    return isSubjectValid && isQuestionValid && isFullNameValid && isEmailValid;
  }

  Future<void> _send() async {
    if (_validateForm()) {
      _emitSubmittingState(true);
      final entity = MailEntity(
          email: _state.email.value,
          name: _state.fullName.value,
          subject: _state.subject.value,
          question: _state.question.value);
      final response = await _repository.sendContactEmail(entity);
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
      } else if (!response.body) {
        _emitSubmittingState(false);
        CustomToastUtils.showCustomToast(
            context: _context,
            message: StringConstants.generalError,
            customToastType: CustomToastType.Error);
      } else {
        _resetState();
        _emitNewState();
        _popAndReturnState();
      }
    } else {
      _emitNewState();
    }
  }

  void _resetState() {
    _state = MailState.initial();
    _initialise();
  }

  void _resolveDependencies() {
    _repository = getIt.get<MiscellaneousRepository>();
  }

  void _initialise() {
    if (appBloc.user != null && appBloc.user.email != null) {
      _state.email.value = appBloc.user.email;
    }

    if(appBloc.user != null){
      String fullName = '';

      if(appBloc.user.firstName != null && appBloc.user.lastName != null){
        if(appBloc.user.inserts != null){
          fullName = '${appBloc.user.firstName} ${appBloc.user.inserts} ${appBloc.user.lastName}';
        } else {
          fullName = '${appBloc.user.firstName} ${appBloc.user.lastName}';
        }
      }

      _state.fullName.value = fullName;
    }

    // if (appBloc.user.firstName != null && appBloc.user.lastName != null) {
    //   _state.fullName.value =
    //       '${appBloc.user.firstName} ${appBloc.user.lastName}';
    // } else if (appBloc.user.name != null) {
    //   _state.fullName.value = appBloc.user.name;
    // }
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

  void addEvent(MailEvent event) {
    _inEventsControler.add(event);
  }

  void setContext(BuildContext buildContext) {
    _context = buildContext;
  }

  void _popAndReturnState() {
    TabNavigator.instance.goBack();
  }

  dispose() {
    _eventsController.close();
    _stateController.close();
  }
}
