import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color color;
  final bool isEnabled;

  const ButtonWidget({
    Key key, 
    @required this.text,
    @required this.onPress,
    this.color = ColorConstants.greenColor,
    this.isEnabled = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: isEnabled ? onPress : null,
      color: color,
      disabledColor: ColorConstants.greyColor,
      padding: EdgeInsets.all(1.2 * SizeConfig.heightMultiplier),
      child: Text(
        text,
        style: StyleConstants.buttonTextStyle,
      ),
    );
  }
}