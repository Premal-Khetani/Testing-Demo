import 'package:auto_db/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  LoaderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: Theme.of(context).copyWith(accentColor: ColorConstants.greyColor),
          child: CircularProgressIndicator(
            backgroundColor: ColorConstants.redColor,
          ),
      ),
    );
  }
}