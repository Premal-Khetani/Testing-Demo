import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class LoadPhotoPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black54,
      body: _drawBody(context),
    );
  }

  Widget _drawBody(BuildContext buildContext) {
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: true,
          haveHelpButton: true,
          onHelpTapped: () {},
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: (){
              Navigator.of(buildContext).pop();
            },
            child: Container(
              color: Colors.transparent,
              child: Center(
                child: _getOptionsWidget(buildContext),
              )
            ),
          )
        )
      ],
    );
  }

  Widget _getOptionsWidget(BuildContext buildContext){
    return Container(
      width: SizeConfig.screenWidth - 4.5 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        color: ColorConstants.backgroundColor,
        borderRadius: BorderRadius.circular(3 * SizeConfig.heightMultiplier)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(buildContext).pop(LoadPhotoOption.Camera);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 2 * SizeConfig.heightMultiplier,
                top: 2 * SizeConfig.heightMultiplier,
                right: 2 * SizeConfig.heightMultiplier,
                bottom: 1 * SizeConfig.heightMultiplier,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    AddVehicleIcons.take_a_photo,
                    color: ColorConstants.blackColor,
                    size: 4 * SizeConfig.imageSizeMultiplier,
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.heightMultiplier,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      StringConstants.camera,
                      style: StyleConstants.detailsLabelTextStyle,
                    )
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(buildContext).pop(LoadPhotoOption.PhotoLibrary);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 2 * SizeConfig.heightMultiplier,
                top: 1 * SizeConfig.heightMultiplier,
                right: 2 * SizeConfig.heightMultiplier,
                bottom: 2 * SizeConfig.heightMultiplier,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    AddVehicleIcons.photo_library,
                    color: ColorConstants.blackColor,
                    size: 4 * SizeConfig.imageSizeMultiplier,
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.heightMultiplier,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      StringConstants.photoAndVideoLibrary,
                      style: StyleConstants.detailsLabelTextStyle,
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum LoadPhotoOption{
  Camera,
  PhotoLibrary
}