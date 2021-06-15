import 'dart:io';

import 'package:auto_db/app_setup.dart';
import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/navigation/app_navigation_route_generator.dart';
import 'package:auto_db/presentation/blocs/app/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

import 'core/isolates/isolate_holder.dart';

GetIt getIt;
AppBloc appBloc;
Map<int, AddPhotosIsolateHolder> photosHolder = {};

void main() {
  getIt = AppSetup.createInstaceAndRegisterDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
        builder: (BuildContext buildContext, BoxConstraints constraints) {
      SizeConfig().init(constraints);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AUTODB',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: AppNavigationRouteGenerator.generateRoute,
        initialRoute: '/',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [Locale('en', ''), Locale('nl', '')],
      );
    });
  }
}
