import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class InventoryAdWidget extends StatelessWidget {
  final String licensePlate;
  final String stockNumber;
  final String price;
  final Widget photo;
  final bool isReserved;
  final VoidCallback onTap;

  const InventoryAdWidget({
    Key key, 
    this.licensePlate, 
    this.stockNumber, 
    @required this.price, 
    @required this.photo,
    @required this.isReserved,
    @required this.onTap,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    if(isReserved != null && isReserved){
      return GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: _width,
              color: ColorConstants.redColor,
              padding: const EdgeInsets.all(1.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: _getLicensePlateOrStockNumber(context),
                      ),
                      SizedBox(width: 1.0),
                      Expanded(
                        flex: 1,
                        child: Text(
                          price,
                          style: StyleConstants.adPriceTextStyle,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 1.0),
                  AspectRatio(
                    aspectRatio: SizeConfig.photosAspectRatio,
                    child: Container(
                      width: _width - 2,
                      color: ColorConstants.whiteColor,
                      child: photo,          
                    )
                  )
                ],
              ),
            ),
            AspectRatio(
              aspectRatio: SizeConfig.photosAspectRatio,
              child: Container(
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: _width,
                    color: ColorConstants.redColor,
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.heightMultiplier * 0.5,
                      horizontal: SizeConfig.heightMultiplier * 1.5
                    ),
                    child: Text(
                      StringConstants.reserved,
                      style: StyleConstants.adReservedLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: _width,
        color: ColorConstants.redColor,
        padding: const EdgeInsets.all(1.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: _getLicensePlateOrStockNumber(context),
                ),
                SizedBox(width: 1.0),
                Expanded(
                  flex: 1,
                  child: Text(
                    price,
                    style: StyleConstants.adPriceTextStyle,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            SizedBox(height: 1.0),
            AspectRatio(
              aspectRatio: SizeConfig.photosAspectRatio,
              child: Container(
                width: _width - 2,
                color: ColorConstants.whiteColor,
                child: photo,          
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _getLicensePlateOrStockNumber(BuildContext buildContext){
    final _height = 3.2 * SizeConfig.heightMultiplier;
    if(licensePlate == null && stockNumber != null){
      return Container(
        height: _height,
        color: ColorConstants.redColor,
        padding: const EdgeInsets.all(1.0),
        child: Container(
          color: ColorConstants.whiteColor,
          child: Center(
            child: Text(
              stockNumber,
              style: StyleConstants.adStockNumberTextStyle,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
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
              height: _height,
              width: _height * 3 / 5,
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
                height: _height,
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
              height: _height,
              width: _height * 3 / 5,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Text(
                licensePlate != null ? licensePlate : '',
                style: StyleConstants.adLicensePlateTextStyle,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ],
    );
  }
}