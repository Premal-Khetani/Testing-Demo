import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/pages/public_user/public_user_search_resoults_page.dart';
import 'package:auto_db/presentation/pages/traider/vehicle_search_page.dart';
import 'package:flutter/material.dart';

class PublicUserSearchRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => VehicleSearchPage(vehicleSearchBloc: VehicleSearchBloc(context: null, intitalVehicleType: null, isPublicUser: true))); 
      case '/vehicles_listing':
        if(args is PublicUserVehicleListingRuteArgs){
          return MaterialPageRoute(builder: (_) => PublicUserSearchResoultsPage(title: args.title, vehicleSearchModel: args.vehicleSearchModel,));
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

class PublicUserVehicleListingRuteArgs{
  final String title;
  final VehicleSearchModel vehicleSearchModel;

  PublicUserVehicleListingRuteArgs({@required this.title, @required this.vehicleSearchModel});
}