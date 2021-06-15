import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/login_icons_icons.dart';
import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final Function() onEditingComplete;
  final Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String hintText;
  final bool shouldHaveRulesWidget;
  final bool haveUpperChar;
  final bool haveLowerChar;
  final bool haveNumber;
  final bool haveSpecialChar;
  final bool validLenght;

  const PasswordWidget({
    Key key, 
    @required this.focusNode, 
    @required this.textEditingController,
    this.onChanged, 
    @required this.onEditingComplete, 
    @required this.isError,
    @required this.errorMessage,
    @required this.hintText,
    this.shouldHaveRulesWidget = false,
    this.haveUpperChar,
    this.haveLowerChar,
    this.haveNumber,
    this.haveSpecialChar,
    this.validLenght
  }) : super(key: key);

  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _obscureText = true;

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
        Container(
          height: SizeConfig.textFieldHeight,
          padding: StyleConstants.textFielPadding,
          decoration: BoxDecoration(
            color: ColorConstants.whiteColor,
            border: Border.all(color: widget.isError ? ColorConstants.redColor : ColorConstants.greyColor)
          ),
          child: Align(
            alignment: Alignment.center,
            child: TextField(
            controller: widget.textEditingController,
              cursorColor: ColorConstants.greyColor,
              focusNode: widget.focusNode,
              style: StyleConstants.inputTextStyle,
              autocorrect: false,
              obscureText: _obscureText,
              decoration: InputDecoration(
              fillColor: ColorConstants.whiteColor,
                filled: true,
                hintStyle: StyleConstants.inputHintTextStyle,
                hintText: widget.hintText,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              onEditingComplete: widget.onEditingComplete,
              onChanged: widget.onChanged,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            color: Colors.transparent,
            height: SizeConfig.textFieldHeight,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 2 * SizeConfig.widthMultiplier),
                  child: Icon(
                    _obscureText ? LoginIcons.passwordVisible : LoginIcons.passwordInvisible, 
                    color: ColorConstants.redColor,
                    size: 3 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              )
            ),
          ),
        )
      ],
    ));

    if(widget.shouldHaveRulesWidget){
      _childrens.add(_getRulessWidget(buildContext));
    }

    if(widget.isError){
      _childrens.add(SizedBox(height: 0.75 * SizeConfig.heightMultiplier));

      _childrens.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.3 * SizeConfig.widthMultiplier),
        child: Text(
          widget.errorMessage,
          style: StyleConstants.inputErrorTextStyle,
          maxLines: 2,
        ),
      ));
    }

    return _childrens;
  }

  Widget _getRulessWidget(BuildContext buildContext){
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        border: Border(
          left: BorderSide(
            color: ColorConstants.greyColor,
          ),
          right: BorderSide(
            color: ColorConstants.greyColor,
          ),
          bottom: BorderSide(
            color: ColorConstants.greyColor,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              StringConstants.az.toUpperCase(),
              style: StyleConstants.passwordRulesTextStyle(widget.haveUpperChar),
              textAlign: TextAlign.center,
            )
          ),
          Container(
            height: 4.2 * SizeConfig.heightMultiplier,
            width: 1,
            color: ColorConstants.greyColor,
          ),
          Expanded(
            flex: 1,
            child: Text(
              StringConstants.az.toLowerCase(),
              style: StyleConstants.passwordRulesTextStyle(widget.haveLowerChar),
              textAlign: TextAlign.center,
            )
          ),
          Container(
            height: 4.2 * SizeConfig.heightMultiplier,
            width: 1,
            color: ColorConstants.greyColor,
          ),
          Expanded(
            flex: 1,
            child: Text(
              StringConstants.zeroToNine,
              style: StyleConstants.passwordRulesTextStyle(widget.haveNumber),
              textAlign: TextAlign.center,
            )
          ),
          Container(
            height: 4.2 * SizeConfig.heightMultiplier,
            width: 1,
            color: ColorConstants.greyColor,
          ),
          Expanded(
            flex: 1,
            child: Text(
              StringConstants.specialCharacter,
              style: StyleConstants.passwordRulesTextStyle(widget.haveSpecialChar),
              textAlign: TextAlign.center,
            )
          ),
          Container(
            height: 4.2 * SizeConfig.heightMultiplier,
            width: 1,
            color: ColorConstants.greyColor,
          ),
          Expanded(
            flex: 1,
            child: Text(
              StringConstants.bigerOrEqualThanEight,
              style: StyleConstants.passwordRulesTextStyle(widget.validLenght),
              textAlign: TextAlign.center,
            )
          )
        ],
      ),
    );
  }
  
}