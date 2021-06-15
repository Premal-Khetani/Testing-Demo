import 'package:flutter/material.dart';

class ColorConstants {
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const redColor = Color.fromRGBO(205, 23, 25, 1);
  static const greenColor = Color.fromRGBO(1, 131, 59, 1);
  static const greyColor = Color.fromRGBO(112, 111, 111, 1);
  static const lightGreyColor = Color.fromRGBO(112, 111, 111, 0.2);
  static const whiteColor = Color.fromRGBO(250, 250, 250, 1);
  static Color yellowColor = Colors.yellow.shade700;

  static const backgroundColor = Color.fromRGBO(240, 240, 240, 1);
  static const whiteBackgroundColor = Color.fromRGBO(250, 250, 250, 1);
  static const bottomBarColor = Color.fromRGBO(220, 220, 220, 1);
}

extension ColorToString on Color {
  String get hexString {
    return '#${value.toRadixString(16)}';
  }
}
