import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/user_login/user_login.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';
import 'package:auto_db/domain/repositories/shared_preferences_repository.dart';
import 'package:auto_db/domain/usecases/authentication/get_login_page_cms_content_usecase.dart';
import 'package:auto_db/domain/usecases/authentication/user_login_usecase.dart';
import 'package:auto_db/domain/usecases/shared_preferences/save_loged_user_usecase.dart';
import 'package:auto_db/domain/value_objects/email.dart';
import 'package:auto_db/domain/value_objects/password.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'user_login_event.dart';
part 'user_login_state.dart';

part 'user_login_bloc.freezed.dart';

class UserLoginBloc {
  BuildContext _context;
  WebViewController _webViewController;

  UserLoginState _state;

  UserLoginUsecase _userLoginUsecase;
  SaveLogedUserUsecase _saveLogedUserUsecase;
  GetLoginPageCmsContentUsecase _getLoginPageCmsContentUsecase;

  UserLoginBloc({
    @required BuildContext context
  }){
    this._context = context;
    _resolveDependencies();
    _userLoginBlocEventsController.stream.listen(_mapEventToState);
  }

  UserLoginState get loginFormInitialState => _state = UserLoginState.initial();

  var _userLoginBlocEventsController = StreamController<UserLoginEvent>();
  StreamSink<UserLoginEvent> get _inUserLoginBlocEventsControler => _userLoginBlocEventsController.sink;

  var _loginFormStateController = StreamController<UserLoginState>();
  StreamSink<UserLoginState> get _inLoginFormStateController => _loginFormStateController.sink;
  Stream<UserLoginState> get outLoginFormStateController => _loginFormStateController.stream;

  void _mapEventToState(UserLoginEvent event){
    event.map(
      onRegisterTapped: (_) async {
        final _resoult = await Navigator.of(_context).pushNamed('/register');
        if(_resoult != null && _resoult){
          CustomToastUtils.showCustomToast(
            context:_context, 
            message: StringConstants.sucessfullRegisteringMessage, 
            customToastType: CustomToastType.Sucessfull
          );
        }
      }, 
      login: (e) async {
        await _login();
      }, 
      onForgotPasswordTapped: (_){
        
      }, 
      stayLoggedInChanged: (e) {
        _state = _state.copyWith(stayLoggedIn: e.value);
        _emitState();       
      },
      emailChanged: (e) { 
        _state.email.value = e.value;
        if(_state.email.isError){
          _state.email.errorMessage = '';
          _emitState();
        }
      }, 
      passwordChanged: (e) { 
        _state.password.value = e.value;
        if(_state.password.isError){
          _state.password.errorMessage = '';
          _emitState();
        }
      }, 
      cmsContentPageFinishedLoading: (_) { 
        _cmsContentPageFinishedLoading();
      }, 
      cmsContentWebViewCreated: (e) { 
        _cmsContentWebViewCreated(e.webViewController);
      }
    );
  }

  void _cmsContentWebViewCreated(WebViewController webViewController) async {
    this._webViewController = webViewController;
    final _cmsContent = await _getLoginPageCmsContentUsecase(NoParams());
    if(_cmsContent.body != null){
      _webViewController.loadUrl(Uri.dataFromString(
        _cmsContent.body.body,
        mimeType: 'text/html',
      ).toString());
    }
  }

  void _cmsContentPageFinishedLoading() async {
    await _webViewController.evaluateJavascript(StringConstants.setBackgroundOnWebView);
    double _cmsContentHeight = double.parse(await _webViewController.evaluateJavascript(StringConstants.getContentHeightInWebView));
    _state = _state.copyWith(cmsContentHeight: _cmsContentHeight);
    _emitState();
  }

  Future<void> _login() async {
    final _isEmailValid = _state.email.validate();
    final _isPasswordValid = _state.password.validate();

    if(!_isEmailValid || !_isPasswordValid){
      _emitState();
      return;
    }

    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitState();

    final response = await _userLoginUsecase(UserLoginParams(userLogin: _createLoginRequest()));

    if(response.error != null){
      String errorMessage = '';

      response.error.map(
        serverError: (e){
          errorMessage = e.massage;
        }, 
        noInternerError: (_){
          errorMessage = StringConstants.noInternet;
        }, 
        genericError: (_){
          errorMessage = StringConstants.generalError;
        },
        noOperationError: (_) {  }
      );

      _state = _state.copyWith(
        isSubmitting: false,
      );
      _emitState();

      if(errorMessage == StringConstants.accountNotVerifiedError){
        CustomToastUtils.showCustomToast(
          context:_context, 
          message: errorMessage, 
          customToastType: CustomToastType.Alert
        );
      } else {
        CustomToastUtils.showCustomToast(
          context:_context, 
          message: errorMessage, 
          customToastType: CustomToastType.Error
        );
      }
      return;
    }

    if(response.body != null){
      if(response.body.user != null && response.body.user.roles.length > 0){
        final indx = response.body.user.roles.indexWhere((role) => role.name == 'trader' || role.name == 'consumer');
        if(indx > -1){
          if(_state.stayLoggedIn){
            await _saveLogedUserUsecase(SaveLogedUserParams(user: response.body));
          }

          appBloc.sucesffulLogin(response.body);
        } else {
          _state = _state.copyWith(
            isSubmitting: false,
          );
          _emitState();

          CustomToastUtils.showCustomToast(
            context:_context, 
            message: StringConstants.notTraderOrConsumerError,
            customToastType: CustomToastType.Error
          );
        }
      } else {
        _state = _state.copyWith(
          isSubmitting: false,
        );
        _emitState();

        CustomToastUtils.showCustomToast(
          context:_context, 
          message: StringConstants.generalError, 
          customToastType: CustomToastType.Error
        );
      }
    }
  }

  UserLogin _createLoginRequest(){
    return UserLogin(
      email: _state.email.value,
      password: _state.password.value
    );
  } 

  void _emitState(){
    _inLoginFormStateController.add(_state);
  }

  void _resolveDependencies(){
    _userLoginUsecase = UserLoginUsecase(getIt.get<AuthenticationRepository>());
    _saveLogedUserUsecase = SaveLogedUserUsecase(getIt.get<SharedPreferencesRepository>());
    _getLoginPageCmsContentUsecase = GetLoginPageCmsContentUsecase(getIt.get<AuthenticationRepository>());
  }

  void addEvent(UserLoginEvent event){
    _inUserLoginBlocEventsControler.add(event);
  }

  void dispose(){
    _userLoginBlocEventsController.close();
    _loginFormStateController.close();
  }
}