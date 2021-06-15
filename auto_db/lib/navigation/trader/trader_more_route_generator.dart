import 'package:auto_db/domain/lead_filter.dart';
import 'package:auto_db/presentation/pages/authentication/user_register_page.dart';
import 'package:auto_db/presentation/pages/settings/add_edit_lead_filter_page.dart';
import 'package:auto_db/presentation/pages/settings/lead_filters_page.dart';
import 'package:auto_db/presentation/pages/settings/notifications_page.dart';
import 'package:auto_db/presentation/pages/traider/more_page.dart';
import 'package:flutter/material.dart';

class TraderMoreRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MorePage());
      case '/profile':
        return MaterialPageRoute(
            builder: (_) => UserRegisterPage(
                  isProfile: true,
                )); //ProfilePage());
      case '/notifications':
        return MaterialPageRoute(builder: (_) => NotificationsPage());
      case '/leadfilters':
        return MaterialPageRoute(builder: (_) => LeadFiltersPage());
      case '/leadfilters/addedit':
        if (args is AddEditLeadFilterRuteArgs) {
          return MaterialPageRoute(
              builder: (_) => AddEditLeadFilterPage(routeArgs: args));
        }
        return _errorRoute('ERROR');
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

class AddEditLeadFilterRuteArgs {
  final bool isEdit;
  final LeadFilter filter;

  AddEditLeadFilterRuteArgs({@required this.isEdit, this.filter});
}
