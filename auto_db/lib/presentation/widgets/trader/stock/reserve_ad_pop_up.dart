import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class ReserveAdPopUp extends StatelessWidget {
  final String message;
  final VoidCallback onYesTapped;
  final VoidCallback onCancelTapped;

  const ReserveAdPopUp({
    Key key, 
    @required this.message,
    @required this.onYesTapped, 
    @required this.onCancelTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        color: ColorConstants.whiteColor,
        padding: EdgeInsets.all(SizeConfig.heightMultiplier * 2.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.reservation,
              style: StyleConstants.popupTitleTextStyle,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: StringConstants.reserveAdTitle1_1 + ' ',
                    style: StyleConstants.popupMessageTextStyle
                  ),
                  TextSpan(
                    text: StringConstants.auto,
                    style: StyleConstants.popupMessageTextStyleBold
                  ),
                  TextSpan(
                    text: StringConstants.db,
                    style: StyleConstants.popupMessageTextStyleRedBold
                  ),
                  TextSpan(
                    text: StringConstants.reserveAdTitle1_2,
                    style: StyleConstants.popupMessageTextStyle
                  ),
                ]
              )
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Text(
              message,
              style: StyleConstants.popupMessageTextStyle,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onYesTapped,
                  child: Container(
                    width: SizeConfig.screenWidth / 4,
                    color: ColorConstants.greenColor,
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.heightMultiplier,
                    ),
                    child: Text(
                      StringConstants.yes,
                      style: StyleConstants.buttonTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.heightMultiplier * 1.5,
                ),
                GestureDetector(
                  onTap: onCancelTapped,
                  child: Container(
                    width: SizeConfig.screenWidth / 4,
                    color: ColorConstants.blackColor,
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.heightMultiplier,
                    ),
                    child: Text(
                      StringConstants.cancel,
                      style: StyleConstants.buttonTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}