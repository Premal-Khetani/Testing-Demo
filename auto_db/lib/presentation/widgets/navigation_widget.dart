import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/icons/navigation_bar_icons.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final TextStyle style;
  final bool haveBackButton;
  final bool havetTrailerSeparator;
  final VoidCallback onTrailerTapped;
  final List<Widget> actionWidgets;
  final IconData trailerImageSource;
  final double bottomPadding;

  const NavigationWidget(
      {Key key,
      @required this.title,
      @required this.textAlign,
      @required this.style,
      this.haveBackButton = true,
      this.havetTrailerSeparator = true,
      this.onTrailerTapped,
      this.actionWidgets = const [],
      this.trailerImageSource = NavigationBarIcons.arrow_back,
      this.bottomPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.redColor,
      padding: textAlign == TextAlign.center
          ? EdgeInsets.all(0.75 * SizeConfig.heightMultiplier)
          : EdgeInsets.only(
              top: 0.75 * SizeConfig.heightMultiplier,
              right: 0.75 * SizeConfig.heightMultiplier,
              bottom: bottomPadding == null ? 0.75 * SizeConfig.heightMultiplier : bottomPadding,
            ),
      child: Row(
        children: _getChildrens(context),
      ),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext) {
    List<Widget> _childrens = List<Widget>();

    if (textAlign == TextAlign.center) {
      _childrens.add(Container(width: 7 * SizeConfig.imageSizeMultiplier));
    }

    _childrens.add(Expanded(
        flex: 1,
        child: Padding(
          padding: EdgeInsets.only(
              left: 2.2 * SizeConfig.heightMultiplier,
              right: 1.3 * SizeConfig.widthMultiplier),
          child: Text(
            title,
            textAlign: textAlign,
            style: style,
            overflow: TextOverflow.ellipsis,
          ),
        )));

    actionWidgets.forEach((actionWidget) {
      _childrens.add(actionWidget);
    });

    _childrens.add(Container(
      color: ColorConstants.whiteColor,
      width: havetTrailerSeparator ? 1.0 : 0.0,
      height: 7 * SizeConfig.imageSizeMultiplier,
    ));

    _childrens.add(Container(
        width: 7 * SizeConfig.imageSizeMultiplier,
        child: haveBackButton
            ? IconButton(
                iconSize: 3.3 * SizeConfig.imageSizeMultiplier,
                icon: Icon(
                  trailerImageSource,
                  color: ColorConstants.whiteColor,
                ),
                onPressed: onTrailerTapped)
            : Container()));

    return _childrens;
  }
}
