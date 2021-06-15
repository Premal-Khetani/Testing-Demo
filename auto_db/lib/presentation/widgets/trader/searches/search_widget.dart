import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final String title;
  final String searchName;
  final String period;
  final String vehicle;
  final String year;
  final String price;
  final String transmission;
  final String bodywork;
  final String fuel;
  final String mileage;
  final VoidCallback onEditTapped;
  final VoidCallback onDeleteTapped;

  const SearchWidget({
    Key key,
    @required this.title, 
    @required this.searchName, 
    @required this.period,
    @required this.vehicle, 
    @required this.year,
    @required this.price,
    @required this.transmission,
    @required this.bodywork,
    @required this.fuel,
    @required this.mileage,
    @required this.onEditTapped,
    @required this.onDeleteTapped
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getDetails(context)
    );
  }

  List<Widget> _getDetails(BuildContext buildContext){
    List<Widget> _details = List<Widget>();

    _details.add(Text(
      title,
      style: StyleConstants.searchVehicleTypeTextStyle,
    ),);

    _details.add(_getSeparator(buildContext));

    _details.add(Text(
      searchName,
      style: StyleConstants.searchNameTextStyle,
    ),);

    _details.add(SizedBox(
      height: SizeConfig.heightMultiplier * 2,
    ));

    _details.add( Text(
      StringConstants.period + ': ' + period,
      style: StyleConstants.detailsLabelTextStyleBold,
    ),);

    if(vehicle != null){
      _details.add(_getSeparator(buildContext));
      
      _details.add( Text(
        StringConstants.vehicle + ': ' + vehicle,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(year != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.yearBuild + ': ' + year,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(price != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.price + ': ' + price,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(transmission != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.transmission + ': ' + transmission,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(bodywork != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.bodywork + ': ' + bodywork,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(fuel != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.fuel + ': ' + fuel,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(mileage != null){
      _details.add(_getSeparator(buildContext));
      
      _details.add(Text(
        StringConstants.mileage + ': ' + mileage,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    _details.add(SizedBox(
      height: SizeConfig.heightMultiplier * 2,
    ));

    _details.add(Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getIconButton(
          icon: VehicleDetailsIcons.edit,
          onTap: onEditTapped
        ),
        SizedBox(width: 4 * SizeConfig.widthMultiplier),
        _getIconButton(
          icon: AddVehicleIcons.delete,
          onTap: onDeleteTapped
        ),
      ],
    ));

    _details.add(SizedBox(
      height: SizeConfig.heightMultiplier * 2,
    ));

    return _details;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: SizeConfig.separatorSize
    );
  }

  Widget _getIconButton({IconData icon, VoidCallback onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 5 * SizeConfig.imageSizeMultiplier,
        width: 5 * SizeConfig.imageSizeMultiplier,
        decoration: BoxDecoration(
          color: ColorConstants.blackColor,
          borderRadius: BorderRadius.circular(2.5 * SizeConfig.imageSizeMultiplier)
        ),
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstants.whiteColor,
            borderRadius: BorderRadius.circular(2.5 * SizeConfig.imageSizeMultiplier)
          ),
          child: Icon(
            icon,
            color: ColorConstants.blackColor,
            size: 3.25 * SizeConfig.imageSizeMultiplier,
          ),
        )
      ),
    );
  }
}