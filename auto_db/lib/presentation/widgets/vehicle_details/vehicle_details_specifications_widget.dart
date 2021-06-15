import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class VehicleDetailsSpecificationsWidget extends StatelessWidget {
  final String vehicleType;
  final String brand;
  final String model;
  final String year;
  final String fuel;
  final String mileage;
  final String mileageUnit;
  final String transmission;
  final String body;
  final String color;
  final String interior;
  final String engine;

  const VehicleDetailsSpecificationsWidget({
    Key key, 
    @required this.vehicleType, 
    @required this.brand, 
    @required this.model, 
    @required this.year, 
    @required this.fuel, 
    @required this.mileage, 
    @required this.mileageUnit, 
    @required this.transmission, 
    @required this.body, 
    @required this.color, 
    @required this.interior, 
    @required this.engine
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

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.vehicle,
      specValue: vehicleType 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.brand,
      specValue: brand 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.model,
      specValue: model 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.year,
      specValue: year 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.fuel,
      specValue: fuel 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWithMeasurmentUnitWidget(
      buildContext: buildContext,
      specName: StringConstants.mileage,
      specValue: mileage,
      measurmentUnit: mileageUnit 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.transmission,
      specValue: transmission 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.body,
      specValue: body 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.color,
      specValue: color 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWidget(
      buildContext: buildContext,
      specName: StringConstants.interior,
      specValue: interior 
    ));
    _childrens.add(_getSeparator(buildContext));

    _childrens.add(_getSpecificationWithMeasurmentUnitWidget(
      buildContext: buildContext,
      specName: StringConstants.engine,
      specValue: engine,
      measurmentUnit: StringConstants.cc 
    ));
    _childrens.add(_getSeparator(buildContext));

    return _childrens;
  }

  Widget _getSpecificationWidget({BuildContext buildContext, String specName, String specValue}){
    return Padding(
      padding: EdgeInsets.only(
        top: 2 * SizeConfig.heightMultiplier, 
        bottom: SizeConfig.heightMultiplier
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              specName,
              style: StyleConstants.detailsLabelTextStyle,
              overflow: TextOverflow.ellipsis,
            )
          ),
          SizedBox(
            width: SizeConfig.separatorSize,
          ),
          Expanded(
            flex: 2,
            child: Text(
              specValue,
              style: StyleConstants.detailsLabelTextStyle,
              overflow: TextOverflow.ellipsis,
            )
          ),
        ],
      ),
    );
  }

  Widget _getSpecificationWithMeasurmentUnitWidget({BuildContext buildContext, String specName, String specValue, String measurmentUnit}){
    return Padding(
      padding: EdgeInsets.only(
        top: 2 * SizeConfig.heightMultiplier, 
        bottom: SizeConfig.heightMultiplier
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              specName,
              style: StyleConstants.detailsLabelTextStyle,
              overflow: TextOverflow.ellipsis,
            )
          ),
          SizedBox(
            width: SizeConfig.separatorSize,
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    specValue,
                    style: StyleConstants.detailsLabelTextStyle,
                    overflow: TextOverflow.ellipsis,
                  )
                ),
                SizedBox(
                  width: SizeConfig.separatorSize,
                ),
                Text(
                  measurmentUnit,
                  style: StyleConstants.detailsLabelTextStyleRed,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          )
        ],
      ),
    );
  }

  Widget _getSeparator(BuildContext buildContext){
    return Container(
      height: 0.5,
      color: ColorConstants.greyColor,
    );
  }
}