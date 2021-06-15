import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/error_icons.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class NoInternetWidget extends StatelessWidget {
  final VoidCallback onRetryPressed;

  const NoInternetWidget({
    Key key, 
    @required this.onRetryPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StyleConstants.pageContentPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(
              ErrorIcons.noInternetConnection,
              size: SizeConfig.errorIconSize,
              color: ColorConstants.blackColor,
            )
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  StringConstants.noInternet,
                  style: StyleConstants.errorWidgetsLabelTextStyle,
                  textAlign: TextAlign.center
                ),
                SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
                ButtonWidget(
                  text: StringConstants.retry, 
                  onPress: onRetryPressed
                )
              ],
            )
          )
        ],
      ),
    );
  }
}