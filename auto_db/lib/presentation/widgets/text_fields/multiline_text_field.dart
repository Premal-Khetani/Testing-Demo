import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:flutter/material.dart';

class MultilineTextField extends StatelessWidget {
  final double height;
  final FocusNode focusNode;
  final MyTextEditingController textEditingController;
  final Function() onEditingComplete;
  final Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String hintText;
  final bool haveLenghtValidator;
  final int lenght;
  final int allowedLenght;

  const MultilineTextField({
    Key key,
    @required this.height, 
    @required this.focusNode, 
    @required this.textEditingController,
    @required this.onEditingComplete,
    @required this.onChanged, 
    @required this.isError,
    @required this.errorMessage,
    @required this.hintText,
    @required this.haveLenghtValidator,
    this.lenght,
    this.allowedLenght
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

    if(haveLenghtValidator){
      _childrens.add(Stack(
        children: [
          Container(
            height: height,
            child: TextField(
              controller: textEditingController,
              cursorColor: ColorConstants.greyColor,
              focusNode: focusNode,
              style: StyleConstants.inputTextStyle,
              keyboardType: TextInputType.multiline,
              maxLines: 99,
              decoration: InputDecoration(
                fillColor: ColorConstants.whiteColor,
                filled: true,
                hintStyle: StyleConstants.inputHintTextStyle,
                hintText: hintText,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: isError ? ColorConstants.redColor : ColorConstants.greyColor),
                  borderRadius: const BorderRadius.all(Radius.zero)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: isError ? ColorConstants.redColor : ColorConstants.greyColor),
                  borderRadius: const BorderRadius.all(Radius.zero)
                ),
                isDense: true,
                contentPadding: StyleConstants.miltilineTextFielPadding,
              ),
              onEditingComplete: onEditingComplete,
              onChanged: (value){
                if(value.length > allowedLenght){
                  textEditingController.setTextAndPosition(value.substring(0, allowedLenght));
                }
                onChanged(textEditingController.text);
              },
            ),
          ),
          Positioned(
            right: 1.5 * SizeConfig.heightMultiplier,
            bottom: 1.5 * SizeConfig.heightMultiplier,
            child: Text(
              lenght.toString(),
              style: StyleConstants.multilineTextFieldAllowedCaractersLableTextStyle,
              textAlign: TextAlign.end,
            )
          )
        ],
      ));
    } else {
      _childrens.add(Container(
        height: height,
        child: TextField(
          controller: textEditingController,
          cursorColor: ColorConstants.greyColor,
          focusNode: focusNode,
          style: StyleConstants.inputTextStyle,
          keyboardType: TextInputType.multiline,
          maxLines: 99,
          decoration: InputDecoration(
            fillColor: ColorConstants.whiteColor,
            filled: true,
            hintStyle: StyleConstants.inputHintTextStyle,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: isError ? ColorConstants.redColor : ColorConstants.greyColor),
              borderRadius: const BorderRadius.all(Radius.zero)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: isError ? ColorConstants.redColor : ColorConstants.greyColor),
              borderRadius: const BorderRadius.all(Radius.zero)
            ),
            isDense: true,
            contentPadding: StyleConstants.miltilineTextFielPadding,
          ),
          onEditingComplete: onEditingComplete,
          onChanged: onChanged,
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