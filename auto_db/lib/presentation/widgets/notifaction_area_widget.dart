import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/icons/navigation_bar_icons.dart';
import 'package:auto_db/main.dart';
import 'package:flutter/material.dart';

class NotificationAreaWidget extends StatelessWidget{
  final double topPadding;
  final bool haveHomeButton;
  final bool haveHelpButton;
  final VoidCallback onHelpTapped;

  const NotificationAreaWidget({
    Key key, 
    @required this.topPadding,
    @required this.haveHomeButton,
    @required this.haveHelpButton,
    this.onHelpTapped
  }) : super(key: key);

  @override
  Widget build(Object context) {
    return Container(
      color: ColorConstants.whiteColor,
      padding: EdgeInsets.only(
        left: 1.3 * SizeConfig.widthMultiplier, 
        top: topPadding + (0.75 * SizeConfig.heightMultiplier), 
        right: 1.3 * SizeConfig.widthMultiplier, 
        bottom: 0.75 * SizeConfig.heightMultiplier),
      child: Row(
        children: _getChildrens(context),
      ),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    if(haveHomeButton){
      _childrens.add(Container(
        width: 7 * SizeConfig.imageSizeMultiplier,
        child: IconButton(
          iconSize: 3.3 * SizeConfig.imageSizeMultiplier,
          icon: Icon(NavigationBarIcons.home, color: ColorConstants.blackColor,), 
          onPressed: (){
            appBloc.onHomeButtonTapped();
          }
        )
      ));
    } else {
      _childrens.add(Container(
        width: 7 * SizeConfig.imageSizeMultiplier,
      ));
    }

    _childrens.add(Container(
      color: ColorConstants.blackColor,
      width: haveHomeButton ? 1.0 : 0.0,
      height: 7 * SizeConfig.imageSizeMultiplier,
    ));

    _childrens.add(Expanded(
      flex: 1,
      child: Image.asset(
        'images/auto_db_logo.jpg',
        height: 6 * SizeConfig.imageSizeMultiplier,
      ),
    ));

    _childrens.add(Container(
      color: ColorConstants.blackColor,
      width: haveHelpButton ? 1.0 : 0.0,
      height: 7 * SizeConfig.imageSizeMultiplier,
    ));

    if(haveHelpButton){
      _childrens.add(Container(
        width: 7 * SizeConfig.imageSizeMultiplier,
        child: IconButton(
          iconSize: 3.3 * SizeConfig.imageSizeMultiplier,
          icon: Icon(NavigationBarIcons.help, color: ColorConstants.blackColor,), 
          onPressed: onHelpTapped
        )
      ));
    } else {
      _childrens.add(Container(
        width: 7 * SizeConfig.imageSizeMultiplier,
      ));
    }

    return _childrens;
  }
}