import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class MyDropdownWidget<T> extends StatelessWidget {
  final String hint;
  final T value;
  final List<DropdownMenuItem<T>> items;
  final Function(T) onChanged;
  final bool isError;
  final String errorMessage;
  final FocusNode focusNode;
  final bool isDisabled;

  const MyDropdownWidget({
    Key key, 
    @required this.hint, 
    @required this.value, 
    @required this.items,
    @required this.onChanged,
    @required this.isError,
    @required this.errorMessage,
    this.focusNode,
    this.isDisabled = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getChildrens(context),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    if(isDisabled){
      Widget _children = Container();
      final indx = items.indexWhere((element) => element.value == value);
      if(indx > - 1){
        _children = items[indx].child;
      }
      _childrens.add(Container(
        height: SizeConfig.textFieldHeight,
        decoration: BoxDecoration(
          color: ColorConstants.bottomBarColor,
          border: Border.all(color: isError ? ColorConstants.redColor : ColorConstants.greyColor)
        ),
        padding: EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier),
        child: Align(
          alignment: Alignment.centerLeft,
          child: _children,
        ),
      ));
    } else {
      _childrens.add(Container(
        height: SizeConfig.textFieldHeight,
        decoration: BoxDecoration(
          color: items == null ? ColorConstants.bottomBarColor : ColorConstants.whiteColor,
          border: Border.all(color: isError ? ColorConstants.redColor : ColorConstants.greyColor)
        ),
        child: Align(
          alignment: Alignment.center,
          child: DropdownButtonFormField<T>(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier),
            ),
            focusNode: focusNode,
            dropdownColor: ColorConstants.whiteColor,
            hint: Text(
              hint,
              style: StyleConstants.inputHintTextStyle,
            ),
            icon: Image.asset(
              'images/icons/arrow_dropdown.png',
              width: 2.2 * SizeConfig.imageSizeMultiplier,
            ),
            value: value,
            items: items,
            isExpanded: true,
            onChanged: onChanged
          ),
        ),
      ));
    }

    if(isError){
      _childrens.add(SizedBox(height: 0.75 * SizeConfig.heightMultiplier));

      _childrens.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.3 * SizeConfig.widthMultiplier),
        child: Text(
          errorMessage,
          style: StyleConstants.inputErrorTextStyle,
          maxLines: 2,
        ),
      ));
    }

    return _childrens;
  }
}