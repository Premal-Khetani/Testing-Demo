import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/icons/login_icons_icons.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:auto_db/presentation/widgets/network_image.dart';
import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
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
  final bool isReserved;
  final bool haveViewEditDeleteOptions;
  final VoidCallback onViewTap;
  final VoidCallback onEditTap;
  final VoidCallback onReserveTap;
  final VoidCallback onDeleteTap;
  final VoidCallback onPdfTap;

  const AdWidget({
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
    this.isReserved = false,
    this.haveViewEditDeleteOptions = false,
    this.onViewTap,
    this.onEditTap,
    this.onReserveTap,
    this.onDeleteTap,
    this.onPdfTap 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _getTitleWidget(context),
        SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
        Center(
          child: _getImageWidget(context),
        ),
        SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _getLicemsePlateOrStockNumberWidget(context)
                ),
                SizedBox(width: 1.5 * SizeConfig.heightMultiplier),
                Expanded(
                  flex: 1,
                  child: _getPriceWidget(context)
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
            ),
          ],
        )
      ],
    );
  }

  Widget _getTitleWidget(BuildContext buildContext){
    return Text(
      title,
      style: StyleConstants.detailsLabelTextStyleBold,
      textAlign: TextAlign.start,
    );
  }

  Widget _getImageWidget(BuildContext buildContext){
    if(haveViewEditDeleteOptions){
      return Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 2.5 * SizeConfig.imageSizeMultiplier,
              ),
              _getImage(buildContext)
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: _getViewEditDeleteOptions(buildContext),
          )
        ],
      );
    }

    return _getImage(buildContext);
  }

  Widget _getImage(BuildContext buildContext){
    if(isReserved){
      return Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: SizeConfig.photosAspectRatio,
            child: Container(
              color: ColorConstants.greyColor,
              width: SizeConfig.screenWidth - 4.4 * SizeConfig.heightMultiplier,
              padding: const EdgeInsets.all(1.0),
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
     
    return AspectRatio(
      aspectRatio: SizeConfig.photosAspectRatio,
      child: Container(
        color: ColorConstants.greyColor,
        width: SizeConfig.screenWidth - 4.4 * SizeConfig.heightMultiplier,
        padding: const EdgeInsets.all(1.0),
        child: Container(
          color: ColorConstants.whiteColor,
          child: MyNetworkImage(
            url: image
          )          
        ),
      ),
    );
  }

  Widget _getViewEditDeleteOptions(BuildContext buildContext){
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _getIconButton(
          icon: LoginIcons.passwordVisible,
          onTap: onViewTap
        ),
        SizedBox(width: 4 * SizeConfig.widthMultiplier),
        _getIconButton(
          icon: VehicleDetailsIcons.edit,
          onTap: onEditTap
        ),
        SizedBox(width: 4 * SizeConfig.widthMultiplier),
        _getIconButton(
          icon: VehicleDetailsIcons.reserve,
          onTap: onReserveTap
        ),
        SizedBox(width: 4 * SizeConfig.widthMultiplier),
        _getIconButton(
          icon: AddVehicleIcons.delete,
          onTap: onDeleteTap
        ),
        SizedBox(width: 4 * SizeConfig.widthMultiplier),
        _getIconButton(
          icon: VehicleDetailsIcons.pdf,
          onTap: onPdfTap
        )
      ],
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

  Widget _getIconButton({IconData icon, VoidCallback onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 5 * SizeConfig.imageSizeMultiplier,
        width: 5 * SizeConfig.imageSizeMultiplier,
        decoration: BoxDecoration(
          color: ColorConstants.redColor,
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
            color: ColorConstants.redColor,
            size: 3.25 * SizeConfig.imageSizeMultiplier,
          ),
        )
      ),
    );
  }
}