import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class StyleConstants{
  static TextStyle buttomBarTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.greyColor);
  static TextStyle pageTitleTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.whiteColor);
  static TextStyle bigPageTitleTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_24, color: ColorConstants.whiteColor);
  static TextStyle loginLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.redColor, fontWeight: FontWeight.bold);
  static TextStyle logoutLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_24, color: ColorConstants.greyColor);
  static TextStyle detailsLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.blackColor);
  static TextStyle detailsLabelTextStyleRed = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.redColor);
  static TextStyle detailsLabelTextStyleBold = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle detailsLabelTextStyleBoldAndRed = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.redColor, fontWeight: FontWeight.bold);
  static TextStyle detailsLabelSmallTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.blackColor);
  static TextStyle clickableLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.redColor, decoration: TextDecoration.underline);
  static TextStyle buttonTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.whiteColor, fontWeight: FontWeight.bold);
  static TextStyle buttonTextStyleDark = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle errorMessageTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.redColor);

  static TextStyle inputTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color:  ColorConstants.blackColor);
  static TextStyle inputHintTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.greyColor);
  static TextStyle inputErrorTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.redColor);
  static TextStyle passwordRulesTextStyle(bool isValid) => TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: isValid ? ColorConstants.greenColor : ColorConstants.redColor);
  static TextStyle inputSuffixTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.redColor);

  static TextStyle licensePlateInputHintTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.greyColor);
  static TextStyle licensePlateInputTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_18, color:  ColorConstants.blackColor);
  static TextStyle customToastMessageTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.whiteColor);
  static TextStyle buttonWithArowNameTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_22, color: ColorConstants.whiteColor);
  static TextStyle pageDetailsTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_18, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle popupTitleTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle popupMessageTextStyleBold = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_16, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle popupMessageTextStyleRedBold = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_16, color: ColorConstants.redColor, fontWeight: FontWeight.bold);
  static TextStyle popupMessageTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_16, color: ColorConstants.blackColor);
  static TextStyle popupMessageButtonTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_16, color: Colors.blueAccent, fontWeight: FontWeight.bold);
  static TextStyle multilineTextFieldAllowedCaractersLableTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.redColor);
  static TextStyle errorWidgetsLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.blackColor);

  static TextStyle specificationNameTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.blackColor);
  static TextStyle specificationValueTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color: ColorConstants.greyColor);
  static TextStyle accessoriesCategoryTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle vehicleDetailsPriceTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_18, color:  ColorConstants.whiteColor);
  static TextStyle vehicleDetailsReservationLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_16, color:  ColorConstants.whiteColor);
  static TextStyle vehicleStockNumberTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_18, color:  ColorConstants.greyColor);

  static TextStyle adLicensePlateTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color:  ColorConstants.blackColor);
  static TextStyle adPriceTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color:  ColorConstants.whiteColor);
  static TextStyle adStockNumberTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color:  ColorConstants.greyColor);
  static TextStyle adReservedLabelTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_12, color:  ColorConstants.whiteColor);

  static TextStyle emptyInventoryMessageTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_18, color:  ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle emptyInventoryBigMessageTextStyleBlack = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_24, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle emptyInventoryBigMessageTextStyleRed = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_24, color: ColorConstants.redColor, fontWeight: FontWeight.bold);

  static TextStyle searchVehicleTypeTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_24, color: ColorConstants.redColor, fontWeight: FontWeight.bold);
  static TextStyle searchNameTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);

  static TextStyle leadTitleTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_24, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);

  static EdgeInsets textFielPadding = EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier, vertical: 1.15 * SizeConfig.heightMultiplier);
  static EdgeInsets miltilineTextFielPadding = EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier, vertical: 1.5 * SizeConfig.heightMultiplier);
  static EdgeInsets licensePlatePadding = EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier, vertical: 0.8 * SizeConfig.heightMultiplier);

  static TextStyle publicUserLogoTextStyleBold = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.blackColor, fontWeight: FontWeight.bold);
  static TextStyle publicUserLogoTextStyleRedBold = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_20, color: ColorConstants.redColor, fontWeight: FontWeight.bold);
  static TextStyle publicUserLogoTextStyle = TextStyle(fontSize: SizeConfig.textMultiplier * _Fonts.font_14, color: ColorConstants.greyColor);

  static EdgeInsets pageContentPadding = EdgeInsets.only(
    left: 2.2 * SizeConfig.heightMultiplier, 
    top: 1.5 * SizeConfig.heightMultiplier,
    right: 2.2 * SizeConfig.heightMultiplier,
    bottom: 2.2 * SizeConfig.heightMultiplier
  );
}

class _Fonts{
  static double font_12 = 1.65;
  static double font_14 = 1.9;
  static double font_16 = 2.1;
  static double font_18 = 2.3;
  static double font_20 = 2.45;
  static double font_22 = 2.6;
  static double font_24 = 2.8;
}