import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/icons/navigation_icons_2.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NotificationAreaWidget(
            topPadding: padding.top,
            haveHomeButton: true,
            haveHelpButton: true,
            onHelpTapped: () {},
          ),
          NavigationWidget(
            title: StringConstants.settingsTitle.toUpperCase(),
            textAlign: TextAlign.start,
            style: StyleConstants.bigPageTitleTextStyle,
            haveBackButton: false,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                  left: 2.2 * SizeConfig.heightMultiplier,
                  top: 1.5 * SizeConfig.heightMultiplier,
                  right: 2.2 * SizeConfig.heightMultiplier,
                  bottom: 2.2 * SizeConfig.heightMultiplier),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SimpleStepButton(
                    name: StringConstants.profile.toUpperCase(),
                    onTap: () {
                      Navigator.of(context).pushNamed('/profile');
                    },
                  ),
                  SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  SimpleStepButton(
                    name: StringConstants.notifications.toUpperCase(),
                    onTap: () {
                      Navigator.of(context).pushNamed('/notifications');
                    },
                  ),
                  SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  SimpleStepButton(
                    name: StringConstants.leadFilters.toUpperCase(),
                    onTap: () {
                      Navigator.of(context).pushNamed('/leadfilters');
                    },
                  ),
                  SizedBox(height: 3 * SizeConfig.heightMultiplier),
                  GestureDetector(
                    onTap: () {
                      appBloc.logout();
                    },
                    child: Row(
                      children: [
                        Icon(
                          NavigationIcons2.logout,
                          color: ColorConstants.blackColor,
                          size: 4 * SizeConfig.imageSizeMultiplier,
                        ),
                        SizedBox(
                          width: 1.5 * SizeConfig.heightMultiplier,
                        ),
                        Text(
                          StringConstants.logout,
                          style: StyleConstants.logoutLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SimpleStepButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const SimpleStepButton({
    Key key,
    @required this.name,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: ColorConstants.redColor,
        padding: EdgeInsets.symmetric(
            vertical: 0.5 * SizeConfig.heightMultiplier,
            horizontal: 1.5 * SizeConfig.heightMultiplier),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                name,
                style: StyleConstants.buttonWithArowNameTextStyle,
              ),
            ),
            SizedBox(
              width: 1.5 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 0.75 * SizeConfig.heightMultiplier),
              child: Icon(
                AddVehicleIcons.arrow_right,
                color: ColorConstants.whiteColor,
                size: 3 * SizeConfig.imageSizeMultiplier,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
