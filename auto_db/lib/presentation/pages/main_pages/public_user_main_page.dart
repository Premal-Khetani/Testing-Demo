import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/bottom_navigation_icons.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/public_user/login_route_generator.dart';
import 'package:auto_db/navigation/public_user/public_user_advertise_route_generator.dart';
import 'package:auto_db/navigation/public_user/public_user_more_route_generator.dart';
import 'package:auto_db/navigation/public_user/public_user_news_route_generator.dart';
import 'package:auto_db/navigation/public_user/public_user_search_route_generator.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:flutter/material.dart';

class PublicUserMainPage extends StatefulWidget {
  @override
  _PublicUserMainPageState createState() => _PublicUserMainPageState();
}

class _PublicUserMainPageState extends State<PublicUserMainPage> {
  int _selectedIndex = 0;

  _PublicUserMainPageState(){
    TabNavigator.instance.setTabIndex = _onItemTapped;
    TabNavigator.instance.setTabBarKey = 'public_user';
  }
  
  static List<Widget> _pages = <Widget>[
    Navigator(
      initialRoute: '/',
      onGenerateRoute: PublicUserSearchRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: PublicUserNewsRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: LoginRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: PublicUserAdvertiseRouteGenerator.generateRoute,
    ),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: PublicUserMoreRouteGenerator.generateRoute,
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
    TabNavigator.instance.removeTabBarKey('public_user');
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
            icon: Icon(BottomNavigationIcons.search),
            label: StringConstants.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.news),
            label: StringConstants.news,
          ),
          BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.login),
            label: StringConstants.login,
          ),
           BottomNavigationBarItem(
            icon: Icon(BottomNavigationIcons.advertise),
            label: StringConstants.advertise,
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