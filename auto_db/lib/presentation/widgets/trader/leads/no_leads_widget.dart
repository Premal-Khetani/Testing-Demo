import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class NoLeadsWidget extends StatelessWidget {
  final VoidCallback onToLeadFiltersTapped;

  const NoLeadsWidget({
    Key key, 
    @required this.onToLeadFiltersTapped
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
            StringConstants.emptyLeadsMessage,
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
                  'images/icons/leads.png',
                  alignment: Alignment.center
                ),
              ),
            )
          ),
          _getSeparator(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                AddVehicleIcons.check,
                color: ColorConstants.greenColor,
                size: 4 * SizeConfig.imageSizeMultiplier,
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
                        text: StringConstants.emptyLeadsFirstMessage,
                        style: StyleConstants.detailsLabelTextStyle
                      ),
                    ]
                  ),
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
          _bigSeparator(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                AddVehicleIcons.check,
                color: ColorConstants.greenColor,
                size: 4 * SizeConfig.imageSizeMultiplier,
              ),
              SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
              Expanded(
                flex: 1,
                child: Text(
                  StringConstants.emptyLeadsSecondMessage,
                  style: StyleConstants.detailsLabelTextStyle,
                  textAlign: TextAlign.start,
                )
              )
            ],
          ),
          _bigSeparator(context),
          ButtonWidget(
            text: StringConstants.toLeadFilters,
            onPress: onToLeadFiltersTapped
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

  Widget _bigSeparator(BuildContext buildContext){
    return SizedBox(
      height: 4 * SizeConfig.heightMultiplier
    );
  }

}