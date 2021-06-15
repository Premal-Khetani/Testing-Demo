import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class RadioButtonWidget extends StatelessWidget {
  final List<String> options;
  final String value;
  final int numberOfButtonsInRow;
  final Function(String) onSelected;

  const RadioButtonWidget({
    Key key, 
    @required this.options, 
    @required this.value,
    @required this.numberOfButtonsInRow,
    @required this.onSelected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: _getChildrens(context),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext) {
    List<Widget> _childrens = List<Widget>();

    int _counter = 0;

    options.forEach((element) {
      _childrens.add(Expanded(
        flex: 1,
        child: _getOptionWidget(element),
      ));
      _childrens.add(SizedBox(width: 2.6 * SizeConfig.widthMultiplier));
      _counter += 1;
    });

    if(_counter < numberOfButtonsInRow){
      while(_counter < numberOfButtonsInRow){
        _childrens.add(Expanded(
        flex: 1,
        child: Container()
      ));
      _childrens.add(SizedBox(width: 2.6 * SizeConfig.widthMultiplier));
      _counter += 1;
      }
    }

    _childrens.removeLast();

    return _childrens;
  }

  Widget _getOptionWidget(String option){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 3 * SizeConfig.imageSizeMultiplier,
          icon: option.toLowerCase() == value.toLowerCase() ? Image.asset(
            'images/icons/radio_button_selected.png',
            height: 3 * SizeConfig.imageSizeMultiplier,
            width: 3 * SizeConfig.imageSizeMultiplier,
          ) : Image.asset(
            'images/icons/radio_button_not_selected.png',
            height: 3 * SizeConfig.imageSizeMultiplier,
            width: 3 * SizeConfig.imageSizeMultiplier,
          ), 
          onPressed: (){
            onSelected(option);
          }
        ),
        Text(
          option,
          style: StyleConstants.detailsLabelSmallTextStyle,
        )
      ],
    );
  }
}