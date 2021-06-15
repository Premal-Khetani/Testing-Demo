import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:auto_db/presentation/blocs/public_user/public_user_search_resoults/public_user_search_resoults_bloc.dart';
import 'package:auto_db/presentation/widgets/network_image.dart';
import 'package:flutter/material.dart';

class PublicUserVehicleAdWidget extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  final String year;
  final String mileage;
  final String fuel;
  final String engine;
  final String transmission;
  final String power;
  final String traderLogo;
  final AccountType accountType;
  final VoidCallback onTap;

  const PublicUserVehicleAdWidget({
    Key key, 
    @required this.title, 
    @required this.image, 
    @required this.price, 
    @required this.year, 
    @required this.mileage, 
    @required this.fuel, 
    @required this.engine, 
    @required this.transmission, 
    @required this.power,
    @required this.traderLogo,
    @required this.accountType, 
    @required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _space = MediaQuery.of(context).size.width - 3 - (3 * SizeConfig.heightMultiplier) ;
    final _spaceUnit = _space / 7 ;
    final _imageWidth = _spaceUnit * 5;
    final _imageWidgthUnit = _imageWidth / 16;
    final _imageHeight = _imageWidgthUnit * 9;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: StyleConstants.detailsLabelTextStyleBold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: SizeConfig.heightMultiplier),
        Container(
          color: ColorConstants.redColor,
          padding: EdgeInsets.all(1.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: AspectRatio(
                      aspectRatio: SizeConfig.photosAspectRatio,
                      child : Container(
                        color: ColorConstants.whiteColor,
                        child: MyNetworkImage(
                          url: image
                        )          
                      ),
                    )
                  ),
                  SizedBox(width: 1.0),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: _imageHeight,
                      child: Column(
                      mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                price,
                                style: StyleConstants.adPriceTextStyle,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1/1,
                            child: Container(
                              color: ColorConstants.whiteColor,
                              child: _getTraderLogoWidget(context),
                            ),
                          ),
                        ],
                      ),
                    )
                  )
                ],
              ),
              SizedBox(height: 1.0),
              _getSpecifications(context),
            ],
          ),
        )
      ],
    );
  }

  Widget _getTraderLogoWidget(BuildContext buildContext){
    if(traderLogo != null && traderLogo.isNotEmpty){
      return MyNetworkImage(
        url: traderLogo
      );
    }

    if(accountType != null){
      switch(accountType){
        case AccountType.Bussines:
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: StringConstants.auto,
                        style: StyleConstants.publicUserLogoTextStyleBold
                      ),
                      TextSpan(
                        text: StringConstants.db,
                        style: StyleConstants.publicUserLogoTextStyleRedBold
                      )
                    ]
                  )
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                Text(
                  StringConstants.businessProvider,
                  style: StyleConstants.publicUserLogoTextStyle,
                )
              ],
            ),
          );
          break;
        case AccountType.Private:
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: StringConstants.auto,
                        style: StyleConstants.publicUserLogoTextStyleBold
                      ),
                      TextSpan(
                        text: StringConstants.db,
                        style: StyleConstants.publicUserLogoTextStyleRedBold
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                Text(
                  StringConstants.privateProvider,
                  style: StyleConstants.publicUserLogoTextStyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
          break;
        case AccountType.None:
          return Container();
          break;
      }
    }

    return Container();
  }

  Widget _getSpecifications(BuildContext buildContext){
    return Container(
      color: ColorConstants.whiteColor,
      padding: EdgeInsets.all(SizeConfig.heightMultiplier),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
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
                maxLines: 2,
                overflow : TextOverflow.ellipsis
              ),
            ],
          ),
        )
      ],
    );
  }
}