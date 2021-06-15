import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/vehicles_icons.dart';
import 'package:auto_db/presentation/blocs/app/app_bloc.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void didChangeDependencies() {
    if (appBloc == null) {
      appBloc = AppBloc(context: context);
    }
    appBloc.addContext(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _drawBody(context),
    );
  }

  Widget _drawBody(BuildContext buildContext) {
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: false,
          haveHelpButton: false,
        ),
        NavigationWidget(
          title: StringConstants.loginTitle,
          textAlign: TextAlign.center,
          style: StyleConstants.pageTitleTextStyle,
          haveBackButton: false,
          havetTrailerSeparator: false,
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: ColorConstants.redColor,
              child: _getVehiclesContent(buildContext),
            ))
      ],
    );
  }

  Widget _getVehiclesContent(BuildContext buildContext) {
    return Padding(
      padding: EdgeInsets.only(
          left: 2.9 * SizeConfig.heightMultiplier,
          right: 2.9 * SizeConfig.heightMultiplier,
          bottom: 1.5 * SizeConfig.heightMultiplier),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.car,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              SizedBox(
                width: 2.5 * SizeConfig.widthMultiplier,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.van,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              SizedBox(
                width: 2.5 * SizeConfig.widthMultiplier,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.trailer,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.camp_trailer,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              SizedBox(
                width: 2.5 * SizeConfig.widthMultiplier,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.camper_van_1,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              SizedBox(
                width: 2.5 * SizeConfig.widthMultiplier,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.motorcycle,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.truck_with_short_triler,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              SizedBox(
                width: 2.5 * SizeConfig.widthMultiplier,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.truck_only_cabine,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              SizedBox(
                width: 2.5 * SizeConfig.widthMultiplier,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.truck_trailer_big,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  VehiclesIcons.bus,
                  color: ColorConstants.whiteColor,
                  size: 8 * SizeConfig.imageSizeMultiplier,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
