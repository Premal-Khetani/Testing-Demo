import 'package:auto_db/presentation/pages/traider/leads_page.dart';
import 'package:auto_db/presentation/pages/traider/leads/leads_contact_page.dart';
import 'package:auto_db/presentation/pages/traider/leads/leads_message_sent_page.dart';
import 'package:flutter/material.dart';

class TraderLeadsRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => LeadsPage());
      case '/leads/contact':
        if (args is LeadsContactLeadRouteArgs) {
          return MaterialPageRoute(builder: (_) => LeadsContactPage(traderSearchId: args.traderSearchId, subject: args.subject,));
        }
        return _errorRoute('ERROR');
      case '/leads/messagesent':
        if (args is LeadsMessageSentRouteArgs) {
          return MaterialPageRoute(builder: (_) => LeadsMessageSentPage(subject: args.subject, message: args.message, email: args.email,));
        }
        return _errorRoute('Message Sent');
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

class LeadsMessageSentRouteArgs{
  final String subject;
  final String message;
  final String email;

  LeadsMessageSentRouteArgs({@required this.subject, @required this.message, @required this.email});
}

class LeadsContactLeadRouteArgs {
  final int traderSearchId;
  final String subject;

  LeadsContactLeadRouteArgs({this.traderSearchId, this.subject});
}