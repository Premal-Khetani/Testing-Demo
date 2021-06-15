import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/arrow_icons.dart';
import 'package:auto_db/presentation/widgets/button_with_arrow.dart';
import 'package:auto_db/presentation/widgets/network_image.dart';
import 'package:flutter/material.dart';

class VehicleDetailsExtendedWidget extends StatelessWidget {
  final List<String> images;
  final String licensePlate;
  final String stockNumber;
  final String price;
  final VoidCallback onSpecificationsTap;
  final VoidCallback onAccessoriesTap;
  final VoidCallback onDescriptionTap;
  final Function(Widget gallery) onFullScreenGallery;
  final PageController pageController;

  VehicleDetailsExtendedWidget({
    Key key, 
    @required this.images, 
    @required this.licensePlate, 
    @required this.stockNumber, 
    @required this.price,
    @required this.onSpecificationsTap,
    @required this.onAccessoriesTap,
    @required this.onDescriptionTap,
    @required this.onFullScreenGallery,
    @required this.pageController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        print(orientation.toString());
        if(orientation == Orientation.landscape){
          onFullScreenGallery(_getGalleryWidget());
          return Container();
        }

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
                    _getGalleryWidget(),
                    _getDetailsWidget(context),
                  ],
                ),
              ),
            );
          },
        );
      }
    );
  }

  Widget _getGalleryWidget(){
    return Hero(
      tag: StringConstants.galleryTag,
      child: AspectRatio(
        aspectRatio: SizeConfig.photosAspectRatio,
        child: PageView(
          controller: pageController,
          children: _getGalleryChildrens(),
        ),
      ),
    );
  }

  List<Widget> _getGalleryChildrens(){
    List<Widget> _childrens = List<Widget>();

    if(images.length == 1){
      _childrens.add(AspectRatio(
        aspectRatio: SizeConfig.photosAspectRatio,
        child: Container(
          color: ColorConstants.whiteColor,
          width: SizeConfig.screenWidth,
          child: MyNetworkImage(
            url: images[0]
          ),
        ),
      ));
    } else {
      for(int i = 0; i < images.length; i++){
        if(i == 0){
          _childrens.add(Stack(
            children: [
              AspectRatio(
                aspectRatio: SizeConfig.photosAspectRatio,
                child: Container(
                  color: ColorConstants.whiteColor,
                  width: SizeConfig.screenWidth,
                  child: MyNetworkImage(
                    url: images[i]
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.5 * SizeConfig.widthMultiplier),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container()
                      ),
                      GestureDetector(
                        onTap: (){
                          _nextImage();
                        },
                        child: Icon(
                          ArrowIcons.rightArrow,
                          color: ColorConstants.redColor,
                          size: 4 * SizeConfig.imageSizeMultiplier,
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          ));
          continue;
        }

        if(i == images.length - 1){
          _childrens.add(Stack(
            children: [
              AspectRatio(
                aspectRatio: SizeConfig.photosAspectRatio,
                child: Container(
                  color: ColorConstants.whiteColor,
                  width: SizeConfig.screenWidth,
                  child: MyNetworkImage(
                    url: images[i]
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.5 * SizeConfig.widthMultiplier),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          _previousImage();
                        },
                        child: Icon(
                          ArrowIcons.leftArrow,
                          color: ColorConstants.redColor,
                          size: 4 * SizeConfig.imageSizeMultiplier,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container()
                      ),
                    ],
                  ),
                )
              )
            ],
          ));
          continue;
        }

        _childrens.add(Stack(
          children: [
            AspectRatio(
              aspectRatio: SizeConfig.photosAspectRatio,
              child: Container(
                color: ColorConstants.whiteColor,
                width: SizeConfig.screenWidth,
                child: MyNetworkImage(
                  url: images[i]
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.5 * SizeConfig.widthMultiplier),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        _previousImage();
                      },
                      child: Icon(
                        ArrowIcons.leftArrow,
                        color: ColorConstants.redColor,
                        size: 4 * SizeConfig.imageSizeMultiplier,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container()
                    ),
                    GestureDetector(
                      onTap: (){
                        _nextImage();
                      },
                      child: Icon(
                        ArrowIcons.rightArrow,
                        color: ColorConstants.redColor,
                        size: 4 * SizeConfig.imageSizeMultiplier,
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ));
      }
    }

    return _childrens;
  }

  void _nextImage(){
    pageController.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn
    );
  }

  void _previousImage(){
    pageController.previousPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn
    );
  }

  Widget _getDetailsWidget(BuildContext buildContext){
    return Padding(
      padding: EdgeInsets.only(
        left: 2.2 * SizeConfig.heightMultiplier, 
        top: 1.5 * SizeConfig.heightMultiplier, 
        right: 2.2 * SizeConfig.heightMultiplier
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          SizedBox(height: 2 * SizeConfig.heightMultiplier),
          ButtonWithArrow(
            name: StringConstants.specifications, 
            onTap: onSpecificationsTap
          ),
          SizedBox(height: 2 * SizeConfig.heightMultiplier),
          ButtonWithArrow(
            name: StringConstants.description, 
            onTap: onDescriptionTap
          ),
          SizedBox(height: 2 * SizeConfig.heightMultiplier),
          ButtonWithArrow(
            name: StringConstants.accessories, 
            onTap: onAccessoriesTap
          ),
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
}