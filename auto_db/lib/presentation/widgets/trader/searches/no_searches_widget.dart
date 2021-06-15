import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class NoSearchesWidget extends StatelessWidget {
  final VoidCallback onPostSearchesTapped;

  const NoSearchesWidget({
    Key key, 
    @required this.onPostSearchesTapped
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
            StringConstants.emptySearchesMessage,
            style: StyleConstants.emptyInventoryMessageTextStyle,
            textAlign: TextAlign.center
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
                  'images/icons/searches.png',
                  alignment: Alignment.center
                ),
              ),
            )
          ),
          _getSeparator(context),
          ButtonWidget(
            text: StringConstants.postSearch,
            onPress: onPostSearchesTapped
          ),
          _getSeparator(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                AddVehicleIcons.check,
                color: ColorConstants.greenColor,
                size: 4 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
              Text(
                StringConstants.searchIsFree,
                style: StyleConstants.detailsLabelTextStyle
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
                      text: StringConstants.let + ' ',
                      style: StyleConstants.emptyInventoryBigMessageTextStyleBlack
                    ),
                    TextSpan(
                      text: StringConstants.auto,
                      style: StyleConstants.emptyInventoryBigMessageTextStyleBlack
                    ),
                    TextSpan(
                      text: StringConstants.db,
                      style: StyleConstants.emptyInventoryBigMessageTextStyleRed
                    ),
                    TextSpan(
                      text: '\n' + StringConstants.searchForYou,
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