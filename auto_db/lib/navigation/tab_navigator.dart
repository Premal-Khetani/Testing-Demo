import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/blocs/trader/leads/leads_bloc.dart';
import 'package:flutter/material.dart';

//typedef DidPopRouteCallback = Future<bool> Function();

class TabNavigator with WidgetsBindingObserver {
  static TabNavigator _instance;
  final _history = [0];
  final Map<int, List<WillPopRouteObserver>> _popRouteCallbacks = {};
  Function(int index) _setTabIndex;
  String _tabBarKey;
  GlobalKey<NavigatorState> _settingsNavigator;
  GlobalKey<NavigatorState> _leadsNavigator;
  LeadsBloc _leadsBloc;

  TabNavigator._() {
    WidgetsBinding.instance.addObserver(this);
  }
  static TabNavigator get instance {
    if (_instance == null) {
      _instance = TabNavigator._();
    }
    return _instance;
  }

  void _setTabIdx(int idx) {
    _history.add(idx);
    _setTabIndex?.call(idx);
    if(_tabBarKey != null && _tabBarKey == 'public_user' && idx == 2){
      appBloc.backToTraderOrConsumer();
    }

    if(_tabBarKey != null && _tabBarKey == 'trader' && idx == 2 && _leadsNavigator != null){
      if(!_leadsNavigator.currentState.canPop()){
        _leadsBloc.reload();
      }
    }
  }

  Function(int index) get setTabIndex {
    return _setTabIdx;
  }

  set setTabIndex(Function(int index) callback) {
    _history.clear();
    _history.add(0);
    _setTabIndex = callback;
    _popRouteCallbacks.clear();
  }

  set setSettingsNavigator(GlobalKey<NavigatorState> settingNavigator){
    _settingsNavigator = settingNavigator;
  }

  void removeSettingsNavigator(GlobalKey<NavigatorState> settingNavigator){
    if(settingNavigator == _settingsNavigator){
      _settingsNavigator = null;
    }
  }

  set setLeadsNavigator(GlobalKey<NavigatorState> leadsNavigator){
    _leadsNavigator = leadsNavigator;
  }

  void removeLeadsNavigator(GlobalKey<NavigatorState> leadsNavigator){
    if(leadsNavigator == _leadsNavigator){
      _leadsNavigator = null;
    }
  }

  set setLeadsBloc(LeadsBloc leadsBloc){
    _leadsBloc = leadsBloc;
  }

  void removeLeadsBloc(LeadsBloc leadsBloc){
    if(leadsBloc == _leadsBloc){
      _leadsBloc = null;
    }
  }

  set setTabBarKey(String tabBarKey){
    _tabBarKey = tabBarKey;
  }

  void removeTabBarKey(String tabBarKey){
    if(tabBarKey == _tabBarKey){
      _tabBarKey = null;
    }
  }

  void removeSetTabIndex(Function(int index) callback) {
    if (callback == _setTabIndex) {
      _setTabIndex = null;
    }
  }

  void goBack() {
    if (_history.length > 1) {
      _history.removeLast();
      setTabIndex(_history.last);
    }
  }

  void goToTreaderLedsFilter({@required String routeName}){
    _settingsNavigator.currentState.popUntil((route) => route.isFirst);
    setTabIndex(4);
    _settingsNavigator.currentState.pushNamed(routeName);
  }
  
  @override
  Future<bool> didPopRoute() async {
    int currentTab = _history.last;
    if (_popRouteCallbacks.containsKey(currentTab) &&
        _popRouteCallbacks[currentTab].isNotEmpty) {
      print('didPopRoute: ${_popRouteCallbacks[currentTab].last}');
      return await _popRouteCallbacks[currentTab].last.willPopRoute();
    }
    return false;
  }

  ///Usualy [atTab] parameter is not used, only in cases where the page is
  ///first level page of the TabNavigation, that is becouse [IndexedStack]
  ///creates all first level pages(widgets) at once, so they would all be
  ///created at tabIndex 0.
  ///
  ///For example: Trader [MailPage] would be created at index 0 instead of 3,
  ///if we would not use this parameter.
  void addObserver(WillPopRouteObserver routeObserver, {int atTab}) {
    int currentTab = atTab != null ? atTab : _history.last;
    print('addObserver: $routeObserver');
    if (!_popRouteCallbacks.containsKey(currentTab)) {
      _popRouteCallbacks[currentTab] = [];
    }
    _popRouteCallbacks[currentTab].add(routeObserver);
  }

  void removeObserver(WillPopRouteObserver routeObserver) {
    _popRouteCallbacks.forEach((key, value) {
      value.remove(routeObserver);
    });
  }
}

abstract class WillPopRouteObserver {
  /// Called when the system tells the app to pop the current route.
  /// For example, on Android, this is called when the user presses
  /// the back button.
  ///
  /// Observers are notified in registration order until one returns
  /// true. If none return true, the application quits.
  ///
  /// Observers are expected to return true if they were able to
  /// handle the notification, for example by closing an active dialog
  /// box, and false otherwise. The [WidgetsApp] widget uses this
  /// mechanism to notify the [Navigator] widget that it should pop
  /// its current route if possible.
  Future<bool> willPopRoute() => Future<bool>.value(false);
}
