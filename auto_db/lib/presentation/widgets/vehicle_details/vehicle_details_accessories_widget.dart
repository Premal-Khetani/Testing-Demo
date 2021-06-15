import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/presentation/blocs/vehicle_details/vehicle_details_accessories/vehicle_details_accessories_bloc.dart';
import 'package:flutter/material.dart';

class VehicleDetailsAccessoriesWidget extends StatelessWidget {
  final List<AccessoryDetailsHelperModel> accessories;
  final List<String> customAcessories;

  const VehicleDetailsAccessoriesWidget({
    Key key, 
    @required this.accessories, 
    @required this.customAcessories
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, constraints){
        return SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight
            ),
            padding: StyleConstants.pageContentPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _getChildrens(context),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

     for(int i = 0 ; i < accessories.length; i++){
      if(i == 0){
        _childrens.add(_getCategoryNameWidget(accessories[i].groupName));
        accessories[i].accessories.forEach((accessory) {
          _childrens.add(_getSmallSeparator(buildContext));
          _childrens.add(_getAccessorieWidget(
            buildContext : buildContext, 
            name: accessory.name,
          ));
        });
        continue;
      } 

      _childrens.add(_getBigSeparator(buildContext));
      _childrens.add(_getCategoryNameWidget(accessories[i].groupName));
      accessories[i].accessories.forEach((accessory) {
        _childrens.add(_getSmallSeparator(buildContext));
        _childrens.add(_getAccessorieWidget(
          buildContext : buildContext, 
          name: accessory.name,
        ));
      });
    }

    if(customAcessories.length > 0){
      if(accessories.length > 0){
        _childrens.add(_getBigSeparator(buildContext));
      }
      _childrens.add(_getCategoryNameWidget(StringConstants.additionalAccessories));
      customAcessories.forEach((accessory) {
        _childrens.add(_getSmallSeparator(buildContext));
        _childrens.add(_getAccessorieWidget(
          buildContext : buildContext, 
          name: accessory,
        ));
      });
    }

    return _childrens;
  }

  Widget _getSmallSeparator(BuildContext buildContext){
    return SizedBox(
      height: 1.5 * SizeConfig.heightMultiplier
    );
  }

  Widget _getBigSeparator(BuildContext buildContext){
    return SizedBox(
      height: 2.5 * SizeConfig.heightMultiplier
    );
  }

  Widget _getCategoryNameWidget(String categoryName){
    return Text(
      categoryName,
      style: StyleConstants.accessoriesCategoryTextStyle,
      textAlign: TextAlign.start,
    );
  }

  Widget _getAccessorieWidget({BuildContext buildContext, String name}){
    return Row(
      children: [
        Icon(
          AddVehicleIcons.check,
          color: ColorConstants.greenColor,
          size: 3 * SizeConfig.imageSizeMultiplier,
        ),
        SizedBox(width: 1.5 * SizeConfig.heightMultiplier),
        Expanded(
          flex: 1,
          child: Text(
            name,
            style: StyleConstants.detailsLabelTextStyle,
            textAlign: TextAlign.start,
          )
        )
      ],
    );
  }
}