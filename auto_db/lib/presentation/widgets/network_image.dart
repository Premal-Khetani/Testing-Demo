import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyNetworkImage extends StatelessWidget {
  final String url;

  const MyNetworkImage({
    Key key, 
    @required this.url
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(url == null || url.isEmpty){
      return _getNoImage(context);
    }

    return _getImage(context);
  }

  Widget _getNoImage(BuildContext buildContext){
    return FittedBox(
      fit: BoxFit.contain,
      child: Image.asset(
        'images/no_image_placeholder.png',
        alignment: Alignment.center
      ),
    );
  }

  Widget _getImage(BuildContext buildContext){
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (_, provider){
        return FittedBox(
          fit: BoxFit.contain,
          child: Image(
            image: provider
          ),
        );
      },
      placeholder: (_,__){
        return LoaderWidget();
      },
      errorWidget: (_,__,___){
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: 2 * SizeConfig.imageSizeMultiplier,
              color: ColorConstants.blackColor,
            ),
            Text(
              StringConstants.errorWhileGettingImage,
              style: StyleConstants.detailsLabelSmallTextStyle,
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }
}