import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/trader/ad_widget.dart';
import 'package:flutter/material.dart';

class ViewAdWidget extends StatelessWidget {
  final String title;
  final String image;
  final String licensePlate;
  final String stockNumber;
  final String price;
  final String year;
  final String mileage;
  final String fuel;
  final String engine;
  final String transmission;
  final String power;
  final VoidCallback onOkTapped;

  const ViewAdWidget({
    Key key, 
    @required this.title,
    @required this.image, 
    @required this.licensePlate, 
    @required this.stockNumber, 
    @required this.price, 
    @required this.year, 
    @required this.mileage, 
    @required this.fuel, 
    @required this.engine, 
    @required this.transmission, 
    @required this.power, 
    @required this.onOkTapped
  }) : super(key: key);

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, constraints){
        return SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight
            ),
            padding: EdgeInsets.only(
               bottom: 2.2 * SizeConfig.heightMultiplier
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getVehicleDetailsWidget(context),
                SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                _getOkButton(context)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _getVehicleDetailsWidget(BuildContext buildContext){
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      padding: EdgeInsets.only(
        left: 2.2 * SizeConfig.heightMultiplier, 
        top: 1.5 * SizeConfig.heightMultiplier,
        right: 2.2 * SizeConfig.heightMultiplier,
        bottom: 2.2 * SizeConfig.heightMultiplier
      ),
      child: AdWidget(
        title: title,
        image: image, 
        licensePlate: licensePlate, 
        stockNumber: stockNumber, 
        price: price, 
        year: year, 
        mileage: mileage, 
        fuel: fuel, 
        engine: engine, 
        transmission: transmission,
        power: power,
      )
    );
  }

   Widget _getOkButton(BuildContext buildContext){
    return Padding(
      padding: EdgeInsets.only(
        left: 2.2 * SizeConfig.heightMultiplier,
        right: 2.2 * SizeConfig.heightMultiplier,
      ),
      child: ButtonWidget(
        text: StringConstants.ok, 
        onPress: onOkTapped
      ),
    );
  }
}