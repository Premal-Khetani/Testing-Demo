import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/to_upercase_input_formater.dart';
import 'package:flutter/material.dart';

class LicensePlateWidget extends StatelessWidget {
  final FocusNode focusNode;
  final MyTextEditingController textEditingController;
  final Function() onEditingComplete;
  final Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String hintText;
  // final int allowedLenght;

  const LicensePlateWidget({
    Key key, 
    @required this.focusNode, 
    @required this.textEditingController,
    @required this.onEditingComplete,
    @required this.onChanged, 
    @required this.isError,
    @required this.errorMessage,
    @required this.hintText,
    // @required this.allowedLenght
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

    _childrens.add(Stack(
      children: [
        Row(
          children: [
            Container(
              height: SizeConfig.licensePlateHeight,
              width: SizeConfig.licensePlateHeight * 3 / 4,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  'images/license_plate_country.png',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: SizeConfig.licensePlateHeight,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(
                    'images/license_plate_blank.png',
                  ),
                ),
              )
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.licensePlateHeight,
              width: SizeConfig.licensePlateHeight * 3 / 4,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Expanded(
              flex: 1,
              child: TextField(
                textAlign: TextAlign.center,
                controller: textEditingController,
                cursorColor: ColorConstants.greyColor,
                focusNode: focusNode,
                style: StyleConstants.licensePlateInputTextStyle,
                keyboardType: TextInputType.text,
                inputFormatters: [
                  ToUpercaseInputFormater()
                ],
                decoration: InputDecoration(
                  hintStyle: StyleConstants.licensePlateInputHintTextStyle,
                  hintText: hintText,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                  contentPadding: StyleConstants.textFielPadding,
                ),
                onEditingComplete: onEditingComplete,
                onChanged: onChanged,
                // onChanged: (value){
                //   // textEditingController.setTextAndPosition(value.toUpperCase());
                //   // if(value.length > textEditingController.text.length - 1){
                //   //   if(value.length == 2){
                //   //     textEditingController.setTextAndPosition(value + ' - ');
                //   //   }

                //   //   if(value.length == 8){
                //   //     textEditingController.setTextAndPosition(value + ' - ');
                //   //   }
                //   // }

                //   final v = value.toUpperCase();
                //   textEditingController.setTextAndPosition(v);
                //   // if(v.length > allowedLenght){
                //   //   textEditingController.setTextAndPosition(v.substring(0, allowedLenght));
                //   // }
                //   onChanged(textEditingController.text);
                // },
              )
            )
          ],
        )
      ],
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