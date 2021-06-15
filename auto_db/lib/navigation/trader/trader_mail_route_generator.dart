import 'package:auto_db/presentation/pages/traider/mail_page.dart';
import 'package:flutter/material.dart';

class TraderMailRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => MailPage());
        return _errorRoute('Mail');
      default:
        return _errorRoute("ERROR");
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