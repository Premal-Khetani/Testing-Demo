import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:flutter/material.dart';

class CusstomAccessoryWidget extends StatelessWidget {
  final String name;
  final VoidCallback onDeleteTapped;

  const CusstomAccessoryWidget({
    Key key, 
    @required this.name,   
    this.onDeleteTapped
  }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _getChildrens(context)
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    _childrens.add(Expanded(
      flex: 1,
      child: Text(
        name,
        style: StyleConstants.detailsLabelTextStyle,
        textAlign: TextAlign.start,
      )
    ));

    _childrens.add(SizedBox(width: 1.5 * SizeConfig.heightMultiplier));

    _childrens.add(GestureDetector(
      onTap: (){
        onDeleteTapped();
      },
      child: Icon(
        AddVehicleIcons.delete,
        color: ColorConstants.blackColor,
        size: 3 * SizeConfig.imageSizeMultiplier,
      ),
    ));

    return _childrens;
  }
}
