import 'package:flutter/material.dart';

class PublicUserMoreRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        // return MaterialPageRoute(builder: (_) => HomePage());
        return _errorRoute('More');
      default:
        return _errorRoute('ERROR');
     }

  }

  static Route<dynamic> _errorRoute(String name) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text(name),
        ),
      );
    });
  }
}