import 'dart:async';

import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class CustomToastUtils{
  static Timer _toastTimer;
  static OverlayEntry _overlayEntry;

  static void showCustomToast({BuildContext context, String message, CustomToastType customToastType}){
    if (_toastTimer == null || !_toastTimer.isActive) {
      _overlayEntry = createOverlayEntry(context, message, customToastType);
      Overlay.of(context).insert(_overlayEntry);
      _toastTimer = Timer(Duration(seconds: 5), () {
        if (_overlayEntry != null) {
          _overlayEntry.remove();
        }
      });
    }
  }

  static OverlayEntry createOverlayEntry(BuildContext context, String message, CustomToastType customToastType) {
    final padding = MediaQuery.of(context).viewPadding;
    return OverlayEntry(
      builder: (context) => Positioned(
        top: padding.top,
        left: 2.5 * SizeConfig.widthMultiplier,
        width: SizeConfig.screenWidth - (5 * SizeConfig.widthMultiplier),
        child: Material(
          elevation: 10.0,
          child: Container(
            padding: EdgeInsets.all(3 * SizeConfig.heightMultiplier),
            color: _getColor(customToastType),
            child: Text(
              message, 
              style: StyleConstants.customToastMessageTextStyle,
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
          ),
        )
      )
    );
  }

  static Color _getColor(CustomToastType customToastType){
    switch(customToastType){
      case CustomToastType.Error:
        return ColorConstants.redColor;
        break;
      case CustomToastType.Alert:
        return ColorConstants.yellowColor;
        break;
      case CustomToastType.Sucessfull:
        return ColorConstants.greenColor;
        break;
      default:
        return ColorConstants.greenColor;
        break;
    }
  }
}

enum CustomToastType{
  Error,
  Alert,
  Sucessfull
}