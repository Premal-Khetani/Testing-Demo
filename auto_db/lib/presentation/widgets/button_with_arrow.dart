import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:flutter/material.dart';

class ButtonWithArrow extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const ButtonWithArrow({
    Key key, 
    @required this.name, 
    @required this.onTap,
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

    _childrens.add(SizedBox(
      width: 1.5 * SizeConfig.heightMultiplier,
    ));

    _childrens.add(Padding(
      padding: EdgeInsets.symmetric(vertical: 0.75 * SizeConfig.heightMultiplier),
      child: Icon(
        AddVehicleIcons.arrow_right,
        color: ColorConstants.whiteColor,
        size: 3 * SizeConfig.imageSizeMultiplier,
      ),
    ));

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
}