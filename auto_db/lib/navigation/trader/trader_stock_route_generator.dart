import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/add_vehicle_accessories_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/add_vehicle_description_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/add_vehicle_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/add_vehicle_price_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/add_vehicle_specifications_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/license_plate_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/photos_page.dart';
import 'package:auto_db/presentation/pages/traider/add_vehicle/view_ad_page.dart';
import 'package:auto_db/presentation/pages/traider/stock_page.dart';
import 'package:auto_db/presentation/pages/vehicle_details/delete_vehicle_page.dart';
import 'package:auto_db/presentation/pages/vehicle_details/vehicle_details_accessories_page.dart';
import 'package:auto_db/presentation/pages/vehicle_details/vehicle_details_description_page.dart';
import 'package:auto_db/presentation/pages/vehicle_details/vehicle_details_extended_page.dart';
import 'package:auto_db/presentation/pages/traider/vehicle_details_page.dart';
import 'package:auto_db/presentation/pages/traider/vehicle_search_page.dart';
import 'package:auto_db/presentation/pages/vehicle_details/vehicle_details_specifications.dart';
import 'package:flutter/material.dart';

class TraderStockRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

     switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => StockPage());
      case '/vehicle_search':
        if(args is VehicleSearchRuteArgs){
          return MaterialPageRoute(builder: (_) => VehicleSearchPage(vehicleSearchBloc: args.vehicleSearchBloc));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details':
        if(args is VehicleDetailsRuteArgs){
          return MaterialPageRoute(builder: (_) => VehicleDetailsPage(vehicleId: args.vehicleId));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details/remove_vehicle':
        if(args is RemoveVehicleRuteArgs){
          return MaterialPageRoute(builder: (_) => DeleteVehiclePage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details/edit_vehicle':
        if(args is EditVehicleRouteArgs){
          return MaterialPageRoute(builder: (_) => AddVehiclePage(title: StringConstants.editVehicle, addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details/view':
        if(args is VehicleDetailsViewRuteArgs){
          return MaterialPageRoute(builder: (_) => VehicleDetailsExtendedPage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details/view/specifications':
        if(args is VehicleDetailsViewSpecificationsRuteArgs){
          return MaterialPageRoute(builder: (_) => VehicleDetailsSpecificationsPage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details/view/accessories':
        if(args is VehicleDetailsViewAccessoriesRuteArgs){
          return MaterialPageRoute(builder: (_) => VehicleDetailsAccessoriesPage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/vehicle_details/view/description':
        if(args is VehicleDetailsViewDescriptionRuteArgs){
          return MaterialPageRoute(builder: (_) => VehicleDetailsDescriptionPage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/add_vehicle':
        return MaterialPageRoute(builder: (_) => AddVehiclePage(title: StringConstants.addVehicle, addVehicleResponse: null));

      case '/add_vehicle/license_plate':
        if(args is AddVehicleLicensePlateRuteArgs){
          return MaterialPageRoute(builder: (_) => LicensePlatePage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/add_vehicle/specifications':
        if(args is AddVehicleSpecificationsRuteArgs){
          return MaterialPageRoute(builder: (_) => AddVehicleSpecificationsPage(addVehicleResponse: args.addVehicleResponse, rdw: args.rdw));
        }
        return _errorRoute('ERROR');
      case '/add_vehicle/description':
        if(args is AddVehicleDescriptionRuteArgs){
          return MaterialPageRoute(builder: (_) => AddVehicleDescriptionPage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/add_vehicle/photos':
         if(args is AddVehiclePhotosRuteArgs){
           return MaterialPageRoute(builder: (_) => PhotosPage(addVehicleResponse: args.addVehicleResponse));
         }
         return _errorRoute('ERROR');
      case '/add_vehicle/accessories':
        if(args is AddVehicleAccessoriesRuteArgs){
          return MaterialPageRoute(builder: (_) => AddVehicleAccessoriesPage(addVehicleResponse: args.addVehicleResponse));
        }
        return _errorRoute('ERROR');
      case '/add_vehicle/price':
         if(args is AddVehiclePriceRuteArgs){
           return MaterialPageRoute(builder: (_) => AddVehiclePricePage(addVehicleResponse: args.addVehicleResponse));
         }
         return _errorRoute('ERROR');
      case '/add_vehicle/view_ad':
         if(args is ViewAdRuteArgs){
            return MaterialPageRoute(builder: (_) => ViewAdPage(
              addVehicleResponse: args.addVehicleResponse,
              priceType: args.priceType,
              price: args.price,
            ));
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

class AddVehicleLicensePlateRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  AddVehicleLicensePlateRuteArgs({@required this.addVehicleResponse});
}

class AddVehicleSpecificationsRuteArgs{
  final AddVehicleResponse addVehicleResponse;
  final RDWResponse rdw;

  AddVehicleSpecificationsRuteArgs({@required this.addVehicleResponse, @required this.rdw});
}

class AddVehicleDescriptionRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  AddVehicleDescriptionRuteArgs({@required this.addVehicleResponse});
}

class AddVehiclePhotosRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  AddVehiclePhotosRuteArgs({@required this.addVehicleResponse});
}

class AddVehicleAccessoriesRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  AddVehicleAccessoriesRuteArgs({@required this.addVehicleResponse});
}

class AddVehiclePriceRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  AddVehiclePriceRuteArgs({@required this.addVehicleResponse});
}

class ViewAdRuteArgs{
  final AddVehicleResponse addVehicleResponse;
  final AddVehicleLookup priceType;
  final String price;

  ViewAdRuteArgs({
    @required this.addVehicleResponse,
    @required this.priceType,
    @required this.price
  });
}

class VehicleDetailsRuteArgs{
  final int vehicleId;

  VehicleDetailsRuteArgs({@required this.vehicleId});
}

class VehicleSearchRuteArgs{
  final VehicleSearchBloc vehicleSearchBloc;

  VehicleSearchRuteArgs({@required this.vehicleSearchBloc});
}

class VehicleDetailsViewRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  VehicleDetailsViewRuteArgs({@required this.addVehicleResponse});
}

class VehicleDetailsViewSpecificationsRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  VehicleDetailsViewSpecificationsRuteArgs({@required this.addVehicleResponse});
}

class VehicleDetailsViewAccessoriesRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  VehicleDetailsViewAccessoriesRuteArgs({@required this.addVehicleResponse});
}

class VehicleDetailsViewDescriptionRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  VehicleDetailsViewDescriptionRuteArgs({@required this.addVehicleResponse});
}

class RemoveVehicleRuteArgs{
  final AddVehicleResponse addVehicleResponse;

  RemoveVehicleRuteArgs({@required this.addVehicleResponse});
}

class EditVehicleRouteArgs{
  final AddVehicleResponse addVehicleResponse;

  EditVehicleRouteArgs({@required this.addVehicleResponse});
}