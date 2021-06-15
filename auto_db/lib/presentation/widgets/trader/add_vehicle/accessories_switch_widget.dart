import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class AccessoriesSwitchWidget extends StatelessWidget {
  final bool value;
  final String name;
  final Function(bool) onChanged;

  const AccessoriesSwitchWidget({
    Key key, 
    @required this.value, 
    @required this.name, 
    @required this.onChanged
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

    _childrens.add(GestureDetector(
      onTap: (){
        onChanged(!value);
      },
      child: Image.asset(
        value ? 'images/icons/switch_checked_green.png' : 'images/icons/switch_unchecked_red.png',
        height: 3 * SizeConfig.imageSizeMultiplier,
      ),
    ));

    _childrens.add(SizedBox(width: 1.5 * SizeConfig.heightMultiplier));

    _childrens.add(Expanded(
      flex: 1,
      child: Text(
        name,
        style: StyleConstants.detailsLabelTextStyle,
        textAlign: TextAlign.start,
      )
    ));

    return _childrens;
  }
}