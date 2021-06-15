import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:auto_db/domain/repositories/shared_preferences_repository.dart';
import 'package:auto_db/domain/usecases/shared_preferences/get_loged_user_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:flutter/material.dart';

class AppBloc {
  BuildContext _context;

  Token userToken;
  User user;

  GetLogedUserUsecase _getLogedUserUsecase;

  AppBloc({@required BuildContext context}) {
    this._context = context;
    _resolveDependencies();
    _initialize();
  }

  void _initialize() async {
    final _user = await _getLogedUserUsecase(NoParams());
    _setAndNavigateUser(userParam: _user);
  }

  void _setAndNavigateUser({ResponseWrapper<UserLoginResponse> userParam}) {
    final _user = userParam;
    if (_user != null && _user.body != null && _user.body.token != null) {
      userToken = _user.body.token;
      print("Token: " +
          _user.body.token.tokenType +
          ' ' +
          _user.body.token.accessToken);
    }

    if (_user != null && _user.body != null && _user.body.user != null) {
      user = _user.body.user;
      _navigateToTraderOrConsumer();
    } else {
      pushReplacementRoute('/public_user');
    }
  }

  void backToTraderOrConsumer() async {
    final _user = await _getLogedUserUsecase(NoParams());
    if(_user != null && _user.body != null){
      _navigateToTraderOrConsumer();
    }
  }

  Future<void> logout() async {
    await _getLogedUserUsecase.logout();
    user = null;
    userToken = null;
    _setAndNavigateUser();
  }

  void onHomeButtonTapped(){
    pushReplacementRoute('/public_user');
  }

  void sucesffulLogin(UserLoginResponse loginResponse) {
    userToken = loginResponse.token;
    user = loginResponse.user;
    _navigateToTraderOrConsumer();
  }

  void _navigateToTraderOrConsumer(){
    final userRole = user.roles.firstWhere((role) => role.name == 'trader' || role.name == 'consumer');
    switch(userRole.name){
      case 'trader':
        pushReplacementRoute('/trader');
        return;
      case 'consumer':
        pushReplacementRoute('/consumer');
        return;
    }
  }

  void addContext(BuildContext context) {
    _context = context;
  }

  Future<dynamic> pushRoute(String routeName, {Object arguments}) {
    return Navigator.of(_context).pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementRoute(String routeName) {
    Navigator.of(_context).pushReplacementNamed(routeName);
  }

  void _resolveDependencies() {
    _getLogedUserUsecase =
        GetLogedUserUsecase(getIt.get<SharedPreferencesRepository>());
  }

  void dispose() {}
}
