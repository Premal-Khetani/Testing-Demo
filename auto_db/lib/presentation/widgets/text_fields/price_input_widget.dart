import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/widgets/text_fields/lenght_input_formater.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/price_input_formater.dart';
import 'package:flutter/material.dart';

class PriceInputWidget extends StatelessWidget {
  final FocusNode focusNode;
  final MyTextEditingController textEditingController;
  final Function() onEditingComplete;
  final Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String hintText;
  final bool haveLenghtValidation;
  final int allowedLenght;
  final bool isEnabled;

  const PriceInputWidget({
    Key key, 
    @required this.focusNode, 
    @required this.textEditingController,
    @required this.onEditingComplete,
    @required this.onChanged, 
    @required this.isError,
    @required this.errorMessage,
    @required this.hintText,
    this.haveLenghtValidation = false,
    this.allowedLenght,
    this.isEnabled = true
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

    _childrens.add(Container(
      height: SizeConfig.textFieldHeight,
      padding: StyleConstants.textFielPadding,
      decoration: BoxDecoration(
        color: isEnabled ? ColorConstants.whiteColor : ColorConstants.bottomBarColor,
        border: Border.all(color: isError ? ColorConstants.redColor : ColorConstants.greyColor)
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextField(
          enabled: isEnabled,
          controller: textEditingController,
          cursorColor: ColorConstants.greyColor,
          focusNode: focusNode,
          style: StyleConstants.inputTextStyle,
          keyboardType: TextInputType.numberWithOptions(
            decimal: true,
            signed: false,
          ),
          inputFormatters: [
            LenghtInputFormater(allowedLenght: allowedLenght),
            PriceInputFormater()
          ],
          decoration: InputDecoration(
            fillColor: isEnabled ? ColorConstants.whiteColor : ColorConstants.bottomBarColor,
            filled: true,
            hintStyle: StyleConstants.inputHintTextStyle,
            hintText: hintText,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.zero,
          ),
          onEditingComplete: onEditingComplete,
          onChanged: (value){
            onChanged(value);
          },
        ),
      ),
    ));

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