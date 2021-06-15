import 'package:auto_db/navigation/transparent_route.dart';
import 'package:auto_db/presentation/pages/info_pop_up_page.dart';
import 'package:auto_db/presentation/pages/main_pages/consumer_main_page.dart';
import 'package:auto_db/presentation/pages/main_pages/landing_page.dart';
import 'package:auto_db/presentation/pages/main_pages/public_user_main_page.dart';
import 'package:auto_db/presentation/pages/main_pages/trader_main_page.dart';
import 'package:auto_db/presentation/pages/load_photo_popup.dart';
import 'package:auto_db/presentation/widgets/vehicle_details/full_screen_gallery.dart';
import 'package:flutter/material.dart';

class AppNavigationRouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());
      case '/public_user':
        return MaterialPageRoute(builder: (_) => PublicUserMainPage());
      case '/trader':
        return MaterialPageRoute(builder: (_) => TraderMainPage());
      case '/consumer':
        return MaterialPageRoute(builder: (_) => ConsumerMainPage());
      case '/load_photo':
        return TransparentRoute(builder: (_) => LoadPhotoPopup());
      case '/info_pop_up':
        if(args is InfoPopUpRouteArgs){
          return TransparentRoute(builder: (_) => InfoPopUpPage(content: args.content));
        }
        return _errorRoute();
      case '/full_screen_gallery':
        if(args is FullScreenGalleryRouteArgs){
          return MaterialPageRoute(builder: (_) => FullScreenGallery(gallery: args.gallery));
        }
        return _errorRoute();
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

class InfoPopUpRouteArgs{
  final Widget content;

  InfoPopUpRouteArgs({@required this.content});
}

class FullScreenGalleryRouteArgs{
  final Widget gallery;

  FullScreenGalleryRouteArgs({@required this.gallery});
}