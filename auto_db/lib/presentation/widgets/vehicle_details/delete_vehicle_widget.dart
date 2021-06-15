import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/network_image.dart';
import 'package:flutter/material.dart';

class DeleteVehicleWidget extends StatelessWidget {
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
  final bool isReserved;
  final VoidCallback onRemoveVehicleTap;
  final VoidCallback onCancelTap;

  const DeleteVehicleWidget({
    Key key, 
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
    @required this.isReserved,
    @required this.onRemoveVehicleTap,
    @required this.onCancelTap,
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
              children: [
                _getMessageWidget(context),
                SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                _getVehicleDetailsWidget(context),
                SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                _getRemoveVehicleButton(context),
                SizedBox(height: 0.75 * SizeConfig.heightMultiplier),
                _getCancelButton(context)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _getMessageWidget(BuildContext buildContext){
    return Text(
      StringConstants.removeVehicleMeassage,
      style: StyleConstants.detailsLabelTextStyle,
    );
  }

  Widget _getVehicleDetailsWidget(BuildContext buildContext){
    return Container(
      color: ColorConstants.greyColor,
      padding: const EdgeInsets.all(1.0),
      child: Container(
        color: ColorConstants.whiteColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getImageWidget(buildContext),
            _getDetailsWidget(buildContext),
          ],
        )
      ),
    );
  }

  Widget _getImageWidget(BuildContext buildContext){
    if(isReserved){
      return Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: SizeConfig.photosAspectRatio,
              child: Container(
                color: ColorConstants.whiteColor,
                child: MyNetworkImage(
                  url: image
                )          
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth - 4.4 * SizeConfig.heightMultiplier,
            color: ColorConstants.redColor,
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.heightMultiplier * 0.5,
              horizontal: SizeConfig.heightMultiplier * 1.5
            ),
            child: Text(
              StringConstants.reserved,
              style: StyleConstants.vehicleDetailsReservationLabelTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    return Center(
      child: AspectRatio(
        aspectRatio: SizeConfig.photosAspectRatio,
        child: Container(
          color: ColorConstants.whiteColor,
          child: MyNetworkImage(
            url: image
          )          
        ),
      ),
    );
  }

  Widget _getDetailsWidget(BuildContext buildContext){
    return Padding(
      padding: EdgeInsets.only(
        left: 1.5 * SizeConfig.heightMultiplier, 
        top: 1.5 * SizeConfig.heightMultiplier,
        right: 1.5 * SizeConfig.heightMultiplier,
        bottom: 2.2 * SizeConfig.heightMultiplier
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: _getLicemsePlateOrStockNumberWidget(buildContext)
              ),
              SizedBox(width: 1.5 * SizeConfig.heightMultiplier),
              Expanded(
                flex: 1,
                child: _getPriceWidget(buildContext)
              ),
            ],
          ),
          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: _getSpecificationsWidget(
                  iconData: VehicleDetailsIcons.year,
                  specificationName: StringConstants.year,
                  value: year
                ),
              ),
              SizedBox(width: 0.5 * SizeConfig.heightMultiplier),
              Expanded(
                flex: 1,
                child: _getSpecificationsWidget(
                  iconData: VehicleDetailsIcons.mileage,
                  specificationName: StringConstants.mileage,
                  value: mileage
                ),
              ),
              SizedBox(width: 0.5 * SizeConfig.heightMultiplier),
              Expanded(
                flex: 1,
                child: _getSpecificationsWidget(
                  iconData: VehicleDetailsIcons.fuel,
                  specificationName: StringConstants.fuel,
                  value: fuel
                ),
              ),
            ],
          ),
          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: _getSpecificationsWidget(
                  iconData: VehicleDetailsIcons.engine,
                  specificationName: StringConstants.engine,
                  value: engine
                ),
              ),
              SizedBox(width: 0.5 * SizeConfig.heightMultiplier),
              Expanded(
                flex: 1,
                child: _getSpecificationsWidget(
                  iconData: VehicleDetailsIcons.power,
                  specificationName: StringConstants.power,
                  value: power
                ),
              ),
              SizedBox(width: 0.5 * SizeConfig.heightMultiplier),
              Expanded(
                flex: 1,
                child: _getSpecificationsWidget(
                  iconData: VehicleDetailsIcons.transmission,
                  specificationName: StringConstants.transmission,
                  value: transmission
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _getLicemsePlateOrStockNumberWidget(BuildContext buildContext){
    if(licensePlate == null && stockNumber != null){
      return Container(
        height: SizeConfig.licensePlateHeight,
        color: ColorConstants.redColor,
        padding: const EdgeInsets.all(1.0),
        child: Container(
          color: ColorConstants.whiteColor,
          child: Center(
            child: Text(
              stockNumber,
              style: StyleConstants.vehicleStockNumberTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        Row(
          children: [
            Container(
              height: SizeConfig.licensePlateHeight,
              width: SizeConfig.licensePlateHeight * 3 / 4,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  'images/license_plate_country.png',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: SizeConfig.licensePlateHeight,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(
                    'images/license_plate_blank.png',
                  ),
                ),
              )
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: SizeConfig.licensePlateHeight,
              width: SizeConfig.licensePlateHeight * 3 / 4,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Text(
                licensePlate != null ? licensePlate : '',
                style: StyleConstants.licensePlateInputTextStyle,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _getPriceWidget(BuildContext buildContext){
    return Container(
      height: SizeConfig.licensePlateHeight,
      color: ColorConstants.redColor,
      child: Center(
        child: Text(
          price != null ? price : '',
          style: StyleConstants.vehicleDetailsPriceTextStyle,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Widget _getSpecificationsWidget({IconData iconData, String specificationName, String value}){
    return Row(
      children: [
        Icon(
          iconData,
          color: ColorConstants.blackColor,
          size: 4 * SizeConfig.imageSizeMultiplier,
        ),
        SizedBox(width: 0.5 * SizeConfig.heightMultiplier),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                specificationName,
                style: StyleConstants.specificationNameTextStyle,
                overflow : TextOverflow.ellipsis
              ),
              SizedBox(height: 0.3 * SizeConfig.heightMultiplier),
              Text(
                value,
                style: StyleConstants.specificationValueTextStyle,
                overflow : TextOverflow.ellipsis
              ),
            ],
          ),
        )
      ],
    );
  } 

  Widget _getRemoveVehicleButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.removeVehicle, 
      onPress: onRemoveVehicleTap
    );
  }

  Widget _getCancelButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.cancel,
      color: ColorConstants.redColor, 
      onPress: onCancelTap
    );
  }
}