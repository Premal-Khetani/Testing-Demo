import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:flutter/material.dart';

class PaginationErrorWidget extends StatelessWidget {
  final VoidCallback onTap;

  const PaginationErrorWidget({
    Key key, 
    @required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8 * SizeConfig.heightMultiplier,
      padding: EdgeInsets.symmetric(vertical: 0.75 *  SizeConfig.heightMultiplier),
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 6.5 * SizeConfig.heightMultiplier,
            width: 6.5 * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              color: ColorConstants.greyColor,
              borderRadius: BorderRadius.circular(3.25 * SizeConfig.heightMultiplier)
            ),
            padding: const EdgeInsets.all(1.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.whiteBackgroundColor,
                borderRadius: BorderRadius.circular(3.25 * SizeConfig.heightMultiplier)
              ),
              child: Icon(
                AddVehicleIcons.add,
                color: ColorConstants.greyColor,
                size: 2.75 * SizeConfig.imageSizeMultiplier,
              ),
            ),
          ),
        ),
      ),
    );
  }
}