import 'package:auto_db/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class FullScreenGallery extends StatefulWidget {
  final Widget gallery;

  const FullScreenGallery({
    Key key, 
    @required this.gallery
  }) : super(key: key);
  @override
  _FullScreenGalleryState createState() => _FullScreenGalleryState();
}

class _FullScreenGalleryState extends State<FullScreenGallery> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final orientation = WidgetsBinding.instance.window.physicalSize.aspectRatio > 1 ? Orientation.landscape : Orientation.portrait;
    if(orientation == Orientation.portrait){
      WidgetsBinding.instance.removeObserver(this);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: OrientationBuilder(
        builder: (context, orientation) {
          print('builder');
          if(orientation == Orientation.landscape){
            return Container(
              color: ColorConstants.whiteColor,
              child: Center(
                child: widget.gallery,
              ),
            );
          } else {
            return Container(
              color: ColorConstants.whiteColor
            );
          }
        }
      ),
    );
  }
}