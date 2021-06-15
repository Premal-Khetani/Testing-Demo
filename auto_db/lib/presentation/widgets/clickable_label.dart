import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class ClickableLabel extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ClickableLabel({
    Key key, 
    @required this.text, 
    @required this.onClicked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Text(
        text,
        style: StyleConstants.clickableLabelTextStyle,
      ),
    );
  }
}