import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/bottom_navigation_icons.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class InventoryEmptyWidget extends StatelessWidget {
  final VoidCallback onAddVehicleTapped;

  const InventoryEmptyWidget({
    Key key, 
    @required this.onAddVehicleTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StyleConstants.pageContentPadding,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            StringConstants.emptyInventoryMessage,
            style: StyleConstants.emptyInventoryMessageTextStyle,
            textAlign: TextAlign.start
          ),
          _getSeparator(context),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 2 * SizeConfig.heightMultiplier,
                bottom: 2 * SizeConfig.heightMultiplier
              ),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Image.asset(
                  'images/icons/stock_icon.png',
                  alignment: Alignment.center
                ),
              ),
            )
          ),
          _getSeparator(context),
          ButtonWidget(
            text: StringConstants.addVehicle, 
            onPress: onAddVehicleTapped
          ),
          _getSeparator(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                BottomNavigationIcons.news,
                color: ColorConstants.blackColor,
                size: 4 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: StringConstants.immediatelyVisibleOn + ' ',
                      style: StyleConstants.detailsLabelTextStyle
                    ),
                    TextSpan(
                      text: StringConstants.auto,
                      style: StyleConstants.detailsLabelTextStyleBold
                    ),
                    TextSpan(
                      text: StringConstants.db,
                      style: StyleConstants.detailsLabelTextStyleBoldAndRed
                    )
                  ]
                )
              )
            ],
          ),
          _getSeparator(context),
          Padding(
            padding: EdgeInsets.only(
              top: 5 * SizeConfig.heightMultiplier,
              bottom: 5 * SizeConfig.heightMultiplier
            ),
            child: Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: StringConstants.auto,
                      style: StyleConstants.emptyInventoryBigMessageTextStyleBlack
                    ),
                    TextSpan(
                      text: StringConstants.db,
                      style: StyleConstants.emptyInventoryBigMessageTextStyleRed
                    ),
                    TextSpan(
                      text: StringConstants.theWidestRangeVehicles,
                      style: StyleConstants.emptyInventoryBigMessageTextStyleBlack
                    ),
                  ]
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: 1.5 * SizeConfig.heightMultiplier
    );
  }
}