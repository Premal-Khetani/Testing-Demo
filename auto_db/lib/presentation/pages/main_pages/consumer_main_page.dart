import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/bottom_navigation_icons.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/consumer/consumer_ad_route_generator.dart';
import 'package:auto_db/navigation/consumer/consumer_mail_route_generator.dart';
import 'package:auto_db/navigation/consumer/consumer_more_route_generator.dart';
import 'package:auto_db/navigation/consumer/consumer_search_route_generator.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:flutter/material.dart';

class ConsumerMainPage extends StatefulWidget {
  @override
  _ConsumerMainPageState createState() => _ConsumerMainPageState();
}

class _ConsumerMainPageState extends State<ConsumerMainPage> {
  int _selectedIndex = 0;

  _ConsumerMainPageState(){
    TabNavigator.instance.setTabIndex = _onItemTapped;
    TabNavigator.instance.setTabBarKey = 'consumer';
  }

  static List<Widget> _pages = <Widget>[
    Navigator(
      initialRoute: '/',
      onGenerateRoute: ConsumerAdRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: ConsumerSearchRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: ConsumerMailRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: ConsumerMoreRouteGenerator.generateRoute,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    TabNavigator.instance.removeSetTabIndex(_onItemTapped);
    TabNavigator.instance.removeTabBarKey('consumer');
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
            label: StringConstants.ad,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.carSearch),
            label: StringConstants.search,
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