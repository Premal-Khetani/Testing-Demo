import 'dart:math';

import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:flutter/material.dart';

class AddVehicleStepButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final bool isSaved;
  final bool isLicensePlateAdded;
  final bool isLicensPlateButton;
  final bool isPhotosButton;
  final String detailsText;

  const AddVehicleStepButton({
    Key key, 
    @required this.name, 
    @required this.onTap,
    @required this.isSaved,
    this.isLicensePlateAdded,
    this.isLicensPlateButton = false,
    this.isPhotosButton = false,
    this.detailsText = ''
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _childrens = List<Widget>();

    _childrens.add(Expanded(
      flex: 1,
      child: Text(
        name,
        style: StyleConstants.buttonWithArowNameTextStyle,
      ),
    ));

    if(detailsText.isNotEmpty){
      _childrens.add(SizedBox(
        width: 1.5 * SizeConfig.heightMultiplier,
      ));

      _childrens.add(Text(
        detailsText,
        style: StyleConstants.buttonWithArowNameTextStyle,
      ));
    }

    _childrens.add(SizedBox(
      width: 1.5 * SizeConfig.heightMultiplier,
    ));
    
    Widget _icon;

    if(isPhotosButton != false || isLicensPlateButton != false){
      if(isPhotosButton != false){
        _icon = _getPhotosIcon();
      }

      if(isLicensPlateButton){
        _icon = _getLicensePlateIcons();
      }
    } else {
      _icon = _getIcon();
    }

    _childrens.add(_icon);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: ColorConstants.redColor,
        padding: EdgeInsets.symmetric(
          vertical: 0.5 * SizeConfig.heightMultiplier, 
          horizontal: 1.5 * SizeConfig.heightMultiplier
        ),
        child: Row(
          children: _childrens,
        ) 
      )
    );
  }

  Widget _getPhotosIcon(){
    if(detailsText.isNotEmpty){
      return Padding(
        padding: EdgeInsets.only(left: 0.50 * SizeConfig.heightMultiplier, top: 0.50 * SizeConfig.heightMultiplier, bottom: 0.50 * SizeConfig.heightMultiplier),
        child: SizedBox(
          height: 3.5 * SizeConfig.imageSizeMultiplier,
          width: 3.5 * SizeConfig.imageSizeMultiplier,
          child: CircularProgressIndicator(backgroundColor: ColorConstants.whiteColor),
        ),
      ); 
    }

    return isSaved ? Padding(
      padding: EdgeInsets.only(left: 0.50 * SizeConfig.heightMultiplier, top: 0.50 * SizeConfig.heightMultiplier, bottom: 0.50 * SizeConfig.heightMultiplier),
      child: Container(
        height: 3.5 * SizeConfig.imageSizeMultiplier,
        width: 3.5 * SizeConfig.imageSizeMultiplier,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(1.75 * SizeConfig.imageSizeMultiplier)
        ),
        child: Icon(
          AddVehicleIcons.check,
          color: ColorConstants.greenColor,
          size: 2.75 * SizeConfig.imageSizeMultiplier,
        ),
      ),
    ) : Padding(
      padding: EdgeInsets.symmetric(vertical: 0.75 * SizeConfig.heightMultiplier),
      child: Icon(
        AddVehicleIcons.arrow_right,
        color: ColorConstants.whiteColor,
        size: 3 * SizeConfig.imageSizeMultiplier,
      ),
    );
  }

  Widget _getLicensePlateIcons(){
    List<Widget> _icons = List<Widget>();

    if(!isLicensePlateAdded){
      _icons.add(Padding(
        padding: EdgeInsets.symmetric(vertical: 0.50 * SizeConfig.heightMultiplier, horizontal: 0.50 * SizeConfig.heightMultiplier),
        child: Container(
          height: 3.5 * SizeConfig.imageSizeMultiplier,
          width: 3.5 * SizeConfig.imageSizeMultiplier,
          decoration: BoxDecoration(
            color: ColorConstants.whiteColor,
            borderRadius: BorderRadius.circular(1.75 * SizeConfig.imageSizeMultiplier)
          ),
          child: Transform.rotate(
            angle: 180 * pi / 180,
            child: Icon(
              AddVehicleIcons.exclamation,
              color: ColorConstants.redColor,
              size: 2.75 * SizeConfig.imageSizeMultiplier,
            ),
          ),
        ),
      ));
    }

    _icons.add(isSaved ? Padding(
      padding: EdgeInsets.only(left: 0.50 * SizeConfig.heightMultiplier, top: 0.50 * SizeConfig.heightMultiplier, bottom: 0.50 * SizeConfig.heightMultiplier),
      child: Container(
        height: 3.5 * SizeConfig.imageSizeMultiplier,
        width: 3.5 * SizeConfig.imageSizeMultiplier,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(1.75 * SizeConfig.imageSizeMultiplier)
        ),
        child: Icon(
          AddVehicleIcons.check,
          color: ColorConstants.greenColor,
          size: 2.75 * SizeConfig.imageSizeMultiplier,
        ),
      ),
    ) : Padding(
      padding: EdgeInsets.symmetric(vertical: 0.75 * SizeConfig.heightMultiplier),
      child: Icon(
        AddVehicleIcons.arrow_right,
        color: ColorConstants.whiteColor,
        size: 3 * SizeConfig.imageSizeMultiplier,
      ),
    ));


    return Row(
      children: _icons,
    );
  }

  Widget _getIcon(){
    return isSaved ? Padding(
      padding: EdgeInsets.symmetric(vertical: 0.50 * SizeConfig.heightMultiplier),
      child: Container(
        height: 3.5 * SizeConfig.imageSizeMultiplier,
        width: 3.5 * SizeConfig.imageSizeMultiplier,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(1.75 * SizeConfig.imageSizeMultiplier)
        ),
        child: Icon(
          AddVehicleIcons.check,
          color: ColorConstants.greenColor,
          size: 2.75 * SizeConfig.imageSizeMultiplier,
        ),
      ),
    ) : Padding(
      padding: EdgeInsets.symmetric(vertical: 0.75 * SizeConfig.heightMultiplier),
      child: Icon(
        AddVehicleIcons.arrow_right,
        color: ColorConstants.whiteColor,
        size: 3 * SizeConfig.imageSizeMultiplier,
      ),
    );
  }

}