import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/login_icons_icons.dart';
import 'package:flutter/material.dart';

class LeadContactWidget extends StatelessWidget {
  final String messageSeantAt;
  final VoidCallback onViewTapped;

  const LeadContactWidget({
    Key key,
    @required this.messageSeantAt,
    @required this.onViewTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onViewTapped,
          child: Icon(
            LoginIcons.passwordVisible,
            color: ColorConstants.blackColor,
            size: 3.5 * SizeConfig.imageSizeMultiplier,
          ),
        ),
        SizedBox(width: 2.5 * SizeConfig.widthMultiplier),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.messageSent + ':',
                style: StyleConstants.detailsLabelTextStyle,
              ),
              SizedBox(
                height: 0.75 * SizeConfig.heightMultiplier,
              ),
              Text(
                messageSeantAt,
                style: StyleConstants.detailsLabelTextStyle,
              )
            ],
          ),
        )
      ],
    );
  }
}