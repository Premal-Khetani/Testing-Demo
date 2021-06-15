import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/icons/login_icons_icons.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const SwitchWidget({
    Key key, 
    @required this.value, 
    @required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0.0),
      iconSize: 5.5 * SizeConfig.imageSizeMultiplier,
      icon: value ? Icon(LoginIcons.switchChacked, color: ColorConstants.greenColor) : Icon(LoginIcons.switchNotChecked, color: ColorConstants.greyColor), 
      onPressed: (){
        onChanged(!value);
      }
    );
  }
}