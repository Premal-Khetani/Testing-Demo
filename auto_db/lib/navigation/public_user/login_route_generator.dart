import 'package:auto_db/presentation/pages/authentication/user_login_page.dart';
import 'package:auto_db/presentation/pages/authentication/user_register_page.dart';
import 'package:flutter/material.dart';

class LoginRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => UserLoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => UserRegisterPage());
      default:
        return _errorRoute();
     }

  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}