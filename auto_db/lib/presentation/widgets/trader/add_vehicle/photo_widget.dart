import 'dart:async';

import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import '../../network_image.dart';

class PhotoWidget extends StatefulWidget {
  final Photo photo;
  final VoidCallback onDeleteTapped;
  final int index;

  const PhotoWidget({
    Key key,
    @required this.photo,
    @required this.index,
    @required this.onDeleteTapped,
  }) : super(key: key);

  @override
  _PhotoWidgetState createState() => _PhotoWidgetState();
}

class _PhotoWidgetState extends State<PhotoWidget> {
  double leftDrag = 0;
  int animDuration = 500;

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        animDuration = 500;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build Photo Widget");
    //final width = (SizeConfig.screenWidth - (4.4 * SizeConfig.heightMultiplier)) / 2;
    final _width =
        (SizeConfig.screenWidth - 3.0 - 4.4 * SizeConfig.heightMultiplier) /
            2.0;
    final _height = _width * 9 / 16.0;
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        //drag to left
        if (details.primaryDelta < 0) {
          if (leftDrag == 0) {
            setState(() {
              leftDrag = _width / 4;
            });
          }
        }

        //drag to right
        if (details.primaryDelta > 0) {
          if (leftDrag > 0) {
            setState(() {
              leftDrag = 0;
            });
          }
        }
      },
      child: Container(
          width: _width,
          height: _height,
          color: ColorConstants.redColor,
          padding: const EdgeInsets.all(1.0),
          child: Stack(
            children: [
              Positioned(
                left: _width * 3 / 4,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      animDuration = 0;
                      leftDrag = 0;
                    });
                    Future.delayed(const Duration(milliseconds: 500), () {
                      if (mounted) {
                        setState(() {
                          animDuration = 500;
                        });
                      }
                    });
                    //widget.createElement().detachRenderObject();
                    widget.onDeleteTapped();
                  },
                  child: Container(
                    width: _width / 4,
                    height: _width * 2 / 3,
                    child: Align(
                      alignment: Alignment.center,
                      child: _getDeleteIcon(context),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: animDuration),
                left: -leftDrag,
                right: leftDrag,
                child: Container(
                  width: _width,
                  height: _height,
                  color: ColorConstants.whiteColor,
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      SizedBox(
                        width: _width,
                        height: _height,
                        child: _getImageWidget(widget.photo, _width, _height),
                      ),
                      Container(
                        width: _height / 5,
                        height: _height / 5,
                        margin: EdgeInsets.only(
                          top: 2.0,
                          left: _width - _height / 5 - 4.0,
                        ),
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: ColorConstants.redColor,
                          shape: BoxShape.circle,
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            widget.index.toString(),
                            style: StyleConstants.buttonTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _getDeleteIcon(BuildContext buildContext) {
    return Container(
      height: 3.5 * SizeConfig.imageSizeMultiplier,
      width: 3.5 * SizeConfig.imageSizeMultiplier,
      decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius:
              BorderRadius.circular(1.75 * SizeConfig.imageSizeMultiplier)),
      child: Icon(
        AddVehicleIcons.delete,
        color: ColorConstants.blackColor,
        size: 2.75 * SizeConfig.imageSizeMultiplier,
      ),
    );
  }

  Widget _getImageW(Photo photo, double width, double height) {
    if (widget.photo.local != null) {
      return Image.file(widget.photo.local);
    } else if (photo.asset != null) {
      return AssetThumb(
          asset: photo.asset, width: width.toInt(), height: height.toInt());
    } else if (photo.urlPath != null) {
      return MyNetworkImage(url: photo.urlPath); //Image.network(photo.urlPath);
    } else {
      return Text("Image");
    }
  }

  Widget _getImageWidget(Photo photo, double width, double height) {
    print("_getImageWidget PhotoWidget ${photo.progress}");
    List<Widget> children = [];
    
    children.add(SizedBox(
      height: height,
      width: width,
      child: FittedBox(
        fit: BoxFit.contain,
        child: _getImageW(photo, width, height),
      ),
    ));

    // children.add(Container(color: Colors.black, height: height, width: width,));
     
    if (photo.progress != null && photo.progress != 1) {
      if (photo.progress == 0) {
        children.add(CircularProgressIndicator(
            backgroundColor: ColorConstants.redColor,
          ),
        );
      } else {
        children.add(CircularProgressIndicator(
            backgroundColor: ColorConstants.redColor,
            value: photo.progress,
          ),
        );
      }
    }
    return Stack(
      // fit: StackFit.loose,
      alignment: Alignment.center,
      children: children,
    );
  }
}
