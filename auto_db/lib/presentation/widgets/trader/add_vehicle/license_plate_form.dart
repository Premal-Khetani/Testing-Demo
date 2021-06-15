import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/license_plate.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/name_or_stock_number.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/license_plate/license_plate_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/text_input_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/license_plate_widget.dart';
import 'package:flutter/material.dart';

class LicensePlateForm extends StatefulWidget {
  final LicensePlateBloc licensePlateBloc;
  final LicensePlate licensePlate;
  final NameOrStockNumber nameOrStockNumber;

  const LicensePlateForm({
    Key key, 
    @required this.licensePlateBloc, 
    @required this.licensePlate, 
    @required this.nameOrStockNumber
  }) : super(key: key);

  @override
  _LicensePlateFormState createState() => _LicensePlateFormState();
}

class _LicensePlateFormState extends State<LicensePlateForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _licensePlateFocusNode = FocusNode();
  FocusNode _stockNumberFocusNode = FocusNode();

  MyTextEditingController _licensePlateTextEditingController = MyTextEditingController();
  MyTextEditingController _stockNumberTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _licensePlateTextEditingController.setTextAndPosition(widget.licensePlate.value);
    _stockNumberTextEditingController.setTextAndPosition(widget.nameOrStockNumber.value);

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      child: LayoutBuilder(
        builder: (buildContext, constraints){
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight
              ),
              padding: EdgeInsets.only(
                left: 2.2 * SizeConfig.heightMultiplier, 
                top: 1.5 * SizeConfig.heightMultiplier,
                right: 2.2 * SizeConfig.heightMultiplier,
                bottom: 2.2 * SizeConfig.heightMultiplier
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: _getFormChildrens(context),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _getFormChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    _childrens.add(_getLicensePlateWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getDescritpionLable(buildContext, StringConstants.useLicensePlateDescription));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getUseLicensePlateButton(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getDescritpionLable(buildContext, StringConstants.stockNumberDescription));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getNameAndStockNumberWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSaveButton(buildContext));

    return _childrens;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: 1.5 * SizeConfig.heightMultiplier
    );
  }

  Widget _getLicensePlateWidget(BuildContext buildContext){
    return LicensePlateWidget(
      hintText: StringConstants.dutchLicensePlate,
      focusNode: _licensePlateFocusNode, 
      textEditingController: _licensePlateTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      onChanged: (value){
        widget.licensePlateBloc.addEvent(LicensePlateEvent.licensePlateChanged(value: value));
      }, 
      isError: widget.licensePlate.isError, 
      errorMessage: widget.licensePlate.errorMessage,
      // allowedLenght: widget.licensePlate.allowedLenght, 
    );
  }

  Widget _getDescritpionLable(BuildContext buildContext, String text){
    return Text(
      text,
      style: StyleConstants.detailsLabelSmallTextStyle,
      textAlign: TextAlign.center,
      maxLines: 3,
    );
  }

  Widget _getUseLicensePlateButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.useLicensePlate, 
      onPress: (){
        widget.licensePlateBloc.addEvent(LicensePlateEvent.onUseLicensePlateTapped());
      }
    );
  }

  Widget _getNameAndStockNumberWidget(BuildContext buildContext){
    return TextInputWidget(
      hintText: StringConstants.identificationNameOrStockNumber,
      focusNode: _stockNumberFocusNode, 
      textEditingController: _stockNumberTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      onChanged: (value){
        widget.licensePlateBloc.addEvent(LicensePlateEvent.nameOrStockNumberChanged(value: value));
      }, 
      isError: widget.nameOrStockNumber.isError, 
      errorMessage: widget.nameOrStockNumber.errorMessage 
    );
  }

  Widget _getSaveButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.save, 
      color: ColorConstants.blackColor,
      onPress: (){
        widget.licensePlateBloc.addEvent(LicensePlateEvent.onSaveTapped());
      }
    );
  }
}