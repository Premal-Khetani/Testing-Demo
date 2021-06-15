import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class VehicleDetailsDescriptionWidget extends StatelessWidget {
  final String title;
  final String description;

  const VehicleDetailsDescriptionWidget({
    Key key, 
    @required this.title, 
    @required this.description
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
              children: _getChildrens(context),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    _childrens.add(_getTitleWidget(buildContext));
    _childrens.add(SizedBox(height: 1.5 * SizeConfig.heightMultiplier));
    _childrens.add(_getDescriptionWidget(buildContext));

    return _childrens;
  }

  Widget _getTitleWidget(BuildContext buildContext){
    return Text(
      title,
      style: StyleConstants.detailsLabelTextStyleBold,
    );
  }

  Widget _getDescriptionWidget(BuildContext buildContext){
    return Text(
      description,
      style: StyleConstants.detailsLabelTextStyle,
    );
  }
}