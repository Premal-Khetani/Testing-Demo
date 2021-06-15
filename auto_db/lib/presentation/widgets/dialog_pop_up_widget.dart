import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class DialogPopupWidget extends StatelessWidget {
  final String message;
  final String positiveButtonName;
  final String negativeButtonName;
  final VoidCallback onYesTapped;
  final VoidCallback onCancelTapped;

  const DialogPopupWidget({
    Key key,
    @required this.message,
    this.positiveButtonName = StringConstants.yes,
    this.negativeButtonName = StringConstants.cancel, 
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
          children: [
            Text(
              message,
              style: StyleConstants.popupMessageTextStyle,
              textAlign: TextAlign.center,
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
                      positiveButtonName,
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
                      negativeButtonName,
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