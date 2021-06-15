import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/bottom_navigation_icons.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/navigation/trader/trader_leads_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_mail_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_more_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_search_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_stock_route_generator.dart';
import 'package:flutter/material.dart';

class TraderMainPage extends StatefulWidget {
  @override
  _TraderMainPageState createState() => _TraderMainPageState();
}

class _TraderMainPageState extends State<TraderMainPage> {
  final _settingsNavigator = GlobalKey<NavigatorState>();
  final _leadsNavigator = GlobalKey<NavigatorState>();
  List<Widget> _pages;
  int _selectedIndex = 0;

  _TraderMainPageState(){
    _pages = <Widget>[
      Navigator(
        initialRoute: '/',
        onGenerateRoute: TraderStockRouteGenerator.generateRoute,
      ),
      Navigator(
        initialRoute: '/',
        onGenerateRoute: TraderSearchRouteGenerator.generateRoute,
      ),
      Navigator(
        key: _leadsNavigator,
        initialRoute: '/',
        onGenerateRoute: TraderLeadsRouteGenerator.generateRoute,
      ),
      Navigator(
        initialRoute: '/',
        onGenerateRoute: TraderMailRouteGenerator.generateRoute,
      ),
      Navigator(
        key: _settingsNavigator,
        initialRoute: '/',
        onGenerateRoute: TraderMoreRouteGenerator.generateRoute,
      ),
    ];
    TabNavigator.instance.setTabIndex = _onItemTapped;
    TabNavigator.instance.setSettingsNavigator = _settingsNavigator;
    TabNavigator.instance.setLeadsNavigator = _leadsNavigator;
    TabNavigator.instance.setTabBarKey = 'trader';
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    TabNavigator.instance.removeSetTabIndex(_onItemTapped);
    TabNavigator.instance.removeSettingsNavigator(_settingsNavigator);
    TabNavigator.instance.removeLeadsNavigator(_leadsNavigator);
    TabNavigator.instance.removeTabBarKey('trader');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    appBloc.addContext(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.bottomBarColor,
        selectedItemColor: ColorConstants.redColor,
        unselectedItemColor: ColorConstants.blackColor,
        selectedLabelStyle: StyleConstants.buttomBarTextStyle,
        unselectedLabelStyle: StyleConstants.buttomBarTextStyle,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.stock),
            label: StringConstants.stock,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.carSearch),
            label: StringConstants.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.leads),
            label: StringConstants.leads,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.email),
            label: StringConstants.autoDB,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.more),
            label: StringConstants.settingsTitle,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: TabNavigator.instance.setTabIndex,
      ),
    );
  }
}
