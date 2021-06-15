import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputWidget extends StatelessWidget {
  final FocusNode focusNode;
  final MyTextEditingController textEditingController;
  final TextInputType keyboardType;
  final Function() onEditingComplete;
  final Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String hintText;
  final String suffixText;
  final bool haveLenghtValidation;
  final int allowedLenght;
  final bool isDisabled;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter> inputFormatters;

  const TextInputWidget({
    Key key, 
    @required this.focusNode, 
    @required this.textEditingController,
    this.keyboardType = TextInputType.text,
    @required this.onEditingComplete,
    @required this.onChanged, 
    @required this.isError,
    @required this.errorMessage,
    @required this.hintText,
    this.suffixText,
    this.haveLenghtValidation = false,
    this.allowedLenght,
    this.isDisabled = false,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
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
      Widget _children;
      if(suffixText != null){
        _children = Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                textEditingController.text,
                style: StyleConstants.inputTextStyle,
              )
            ),
            SizedBox(width: SizeConfig.heightMultiplier),
            Text(
              suffixText,
              style: StyleConstants.inputSuffixTextStyle,
            )
          ],
        );
      } else {
        _children = Text(
          textEditingController.text,
          style: StyleConstants.inputTextStyle,
        );
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
        padding: StyleConstants.textFielPadding,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          border: Border.all(color: isError ? ColorConstants.redColor : ColorConstants.greyColor)
        ),
        child: Align(
          alignment: Alignment.center,
          child: TextField(
            controller: textEditingController,
            cursorColor: ColorConstants.greyColor,
            focusNode: focusNode,
            style: StyleConstants.inputTextStyle,
            keyboardType: keyboardType,
            textCapitalization: textCapitalization,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              fillColor: ColorConstants.whiteColor,
              filled: true,
              hintStyle: StyleConstants.inputHintTextStyle,
              hintText: hintText,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
              suffix: suffixText != null ? Text(
                suffixText,
                style: StyleConstants.inputSuffixTextStyle,
              ) : null,
            ),
            onEditingComplete: onEditingComplete,
            onChanged: (value){
              if(haveLenghtValidation && value.length > allowedLenght){
                textEditingController.setTextAndPosition(value.substring(0, allowedLenght));
              }
              onChanged(textEditingController.text);
            },
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