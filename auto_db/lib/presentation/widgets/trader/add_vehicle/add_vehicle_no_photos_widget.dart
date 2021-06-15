import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class AddVehicleNoPhotosWidget extends StatelessWidget {
  final VoidCallback onLoadPhotosTapped;

  const AddVehicleNoPhotosWidget({
    Key key, 
    @required this.onLoadPhotosTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.2 * SizeConfig.heightMultiplier, 
        top: 1.5 * SizeConfig.heightMultiplier,
        right: 2.2 * SizeConfig.heightMultiplier,
        bottom: 2.2 * SizeConfig.heightMultiplier
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            StringConstants.addPhotosInfoMessage,
            style: StyleConstants.detailsLabelTextStyle,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
          ),
          ButtonWidget(
            text: StringConstants.loadPhotos, 
            onPress: onLoadPhotosTapped
          )
        ],
      ),
    );
  }
}