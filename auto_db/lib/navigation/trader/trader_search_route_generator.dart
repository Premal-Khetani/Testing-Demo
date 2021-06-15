import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/presentation/pages/traider/searches/add_search_page.dart';
import 'package:auto_db/presentation/pages/traider/searches/searches_page.dart';
import 'package:flutter/material.dart';

class TraderSearchRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => SearchesPage());
      case '/add_new_search':
        return MaterialPageRoute(builder: (_) => AddSearchPage(search: null));
      case '/edit_search':
        if(args is EditSearchRuteArgs){
          return MaterialPageRoute(builder: (_) => AddSearchPage(search: args.search));
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

class EditSearchRuteArgs{
  final Search search;

  EditSearchRuteArgs({@required this.search});
}