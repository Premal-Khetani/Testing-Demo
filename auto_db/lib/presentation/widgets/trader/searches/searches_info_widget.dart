import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class SearchesInfoWidget extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StyleConstants.pageContentPadding,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getTitle(context),
          _getContent(context),
          SizedBox(height: 2 * SizeConfig.heightMultiplier),
          ButtonWidget(
            text: StringConstants.ok, 
            onPress: (){
              Navigator.of(context).pop();
            }
          )
        ],
      ),
    );
  }

  Widget _getTitle(BuildContext buildContext){
    return Container(
      color: ColorConstants.redColor,
      padding: EdgeInsets.all(2.5 * SizeConfig.heightMultiplier),
      child: Text(
        StringConstants.info,
        style: StyleConstants.pageTitleTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _getContent(BuildContext buildContext){
    return Container(
      padding: EdgeInsets.only(
        left: 1.5 * SizeConfig.heightMultiplier,
        top: 3 * SizeConfig.heightMultiplier,
        right: 1.5 * SizeConfig.heightMultiplier,
        bottom: 6 * SizeConfig.heightMultiplier),
      color: ColorConstants.whiteColor,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                AddVehicleIcons.check,
                color: ColorConstants.greenColor,
                size: 3.5 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
              Expanded(
                flex: 1,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: StringConstants.searchesInfoMessage1_1 + ' ',
                        style: StyleConstants.detailsLabelTextStyle
                      ),
                      TextSpan(
                        text: StringConstants.auto,
                        style: StyleConstants.detailsLabelTextStyleBold
                      ),
                      TextSpan(
                        text: StringConstants.db,
                        style: StyleConstants.detailsLabelTextStyleBoldAndRed
                      ),
                      TextSpan(
                        text: StringConstants.searchesInfoMessage1_2,
                        style: StyleConstants.detailsLabelTextStyle
                      ),
                    ]
                  )
                )
              ),
            ],
          ),
          SizedBox(height: 4 * SizeConfig.heightMultiplier),
          Row(
            children: [
              Icon(
                AddVehicleIcons.check,
                color: ColorConstants.greenColor,
                size: 3.5 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
              Expanded(
                flex: 1,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: StringConstants.auto,
                        style: StyleConstants.detailsLabelTextStyleBold
                      ),
                      TextSpan(
                        text: StringConstants.db,
                        style: StyleConstants.detailsLabelTextStyleBoldAndRed
                      ),
                      TextSpan(
                        text: StringConstants.searchesInfoMessage2,
                        style: StyleConstants.detailsLabelTextStyle
                      ),
                    ]
                  )
                )
              ),
            ],
          ),
          SizedBox(height: 4 * SizeConfig.heightMultiplier),
          Row(
            children: [
              Icon(
                AddVehicleIcons.check,
                color: ColorConstants.greenColor,
                size: 3.5 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
              Expanded(
                flex: 1,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: StringConstants.auto,
                        style: StyleConstants.detailsLabelTextStyleBold
                      ),
                      TextSpan(
                        text: StringConstants.db,
                        style: StyleConstants.detailsLabelTextStyleBoldAndRed
                      ),
                      TextSpan(
                        text: StringConstants.searchesInfoMessage3,
                        style: StyleConstants.detailsLabelTextStyle
                      ),
                    ]
                  )
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}