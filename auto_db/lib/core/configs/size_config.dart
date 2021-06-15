import 'package:flutter/rendering.dart';

class SizeConfig {
  static double screenWidth;
  static double screenHeight;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  static double textFieldHeight = (textMultiplier * 1.65) + (2.3 * heightMultiplier) + 0.8 * heightMultiplier;
  static double licensePlateHeight = (textMultiplier * 2.3) + (1.6 * heightMultiplier) + 0.8 * heightMultiplier;
  static double separatorSize = isTablet ? 1.2 * SizeConfig.heightMultiplier : 6.5;
  static double errorIconSize = 15 * SizeConfig.heightMultiplier;
  static double photosAspectRatio = 16.0/9.0;

  static bool get isTablet => screenWidth > 500;

  void init(BoxConstraints constraints) {
    if(constraints.maxHeight > constraints.maxWidth){
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
    }

    textMultiplier = screenHeight / 100;
    imageSizeMultiplier = screenHeight / 100;
    heightMultiplier = screenHeight / 100;
    widthMultiplier = screenWidth / 100;

    print("width: " + screenWidth.toString() + " height: " + screenHeight.toString());
  }
}