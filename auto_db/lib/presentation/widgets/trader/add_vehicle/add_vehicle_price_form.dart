import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/price.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/price_type.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/price/add_vehicle_price_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/price_input_widget.dart';
import 'package:flutter/material.dart';

class AddVehiclePriceForm extends StatefulWidget {
  final AddVehiclePriceBloc priceBloc;
  final PriceType priceType;
  final Price price;
  final bool isPriceEnabled;
  final Price bpm;
  final bool isBpmEnabled;
  final Price vat;
  final bool isVatEnabled;
  final Price tradingPrice;
  final bool isTradingPriceEnabled;
  final Price exportPrice;
  final bool isExportPriceEnabled;

  const AddVehiclePriceForm({
    Key key, 
    @required this.priceType,
    @required this.priceBloc, 
    @required this.price,
    @required this.isPriceEnabled, 
    @required this.bpm,
    @required this.isBpmEnabled, 
    @required this.vat,
    @required this.isVatEnabled, 
    @required this.tradingPrice,
    @required this.isTradingPriceEnabled, 
    @required this.exportPrice,
    @required this.isExportPriceEnabled,
  }) : super(key: key);

  @override
  _AddVehiclePriceFormState createState() => _AddVehiclePriceFormState();
}

class _AddVehiclePriceFormState extends State<AddVehiclePriceForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _priceTypeFocusNode = FocusNode();
  FocusNode _priceFocusNode = FocusNode();
  FocusNode _bpmFocusNode = FocusNode();
  FocusNode _vatFocusNode = FocusNode();
  FocusNode _tradePriceFocusNode = FocusNode();
  FocusNode _exportPriceFocusNode = FocusNode();

  MyTextEditingController _priceTextEditingController = MyTextEditingController();
  MyTextEditingController _bpmTextEditingController = MyTextEditingController();
  MyTextEditingController _vatTextEditingController = MyTextEditingController();
  MyTextEditingController _tradePriceTextEditingController = MyTextEditingController();
  MyTextEditingController _exportPriceTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _priceTextEditingController.setTextAndPosition(widget.price.value);
    _bpmTextEditingController.setTextAndPosition(widget.bpm.value);
    _vatTextEditingController.setTextAndPosition(widget.vat.value);
    _tradePriceTextEditingController.setTextAndPosition(widget.tradingPrice.value);
    _exportPriceTextEditingController.setTextAndPosition(widget.exportPrice.value);

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
              padding: StyleConstants.pageContentPadding,
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

    _childrens.add(_getPriceTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getPriceWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getBPMWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVATWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getTradePriceWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getExportPriceWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getPriceInfoWidget(buildContext));
    _childrens.add(_getBigSeparator(buildContext));
    _childrens.add(_getViewAdButton(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getWhatHapenAfterSaveButton(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSaveButton(buildContext));

    return _childrens;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: SizeConfig.separatorSize
    );
  }

  Widget _getBigSeparator(BuildContext buildContext){
    return SizedBox(
      height: 2.5 * SizeConfig.heightMultiplier
    );
  }

  Widget _getPriceTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.priceType,
      value: widget.priceType.value,
      focusNode: _priceTypeFocusNode,
      isError: widget.priceType.isError,
      errorMessage: widget.priceType.errorMessage,
      items: widget.priceType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        FocusScope.of(buildContext).requestFocus(_backgroundFocusNode);
        widget.priceBloc.addEvent(AddVehiclePriceEvent.priceTypeChanged(value: value));
      },
    );
  }

  Widget _getPriceWidget(BuildContext buildContext){
    return PriceInputWidget(
      focusNode: _priceFocusNode, 
      textEditingController: _priceTextEditingController,
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_bpmFocusNode);
      },
      onChanged: (value){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.priceChanged(value: value));
      },   
      isError: widget.price.isError,
      errorMessage: widget.price.errorMessage, 
      hintText: StringConstants.price,
      haveLenghtValidation: true,
      allowedLenght: widget.price.allowedLenght,
      isEnabled: widget.isPriceEnabled,
    );
  }

  Widget _getBPMWidget(BuildContext buildContext){
    return PriceInputWidget(
      focusNode: _bpmFocusNode, 
      textEditingController: _bpmTextEditingController,
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_vatFocusNode);
      },
      onChanged: (value){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.bpmChanged(value: value));
      },   
      isError: widget.bpm.isError,
      errorMessage: widget.bpm.errorMessage, 
      hintText: StringConstants.bpm,
      haveLenghtValidation: true,
      allowedLenght: widget.bpm.allowedLenght,
      isEnabled: widget.isBpmEnabled,
    );
  }

  Widget _getVATWidget(BuildContext buildContext){
    return PriceInputWidget(
      focusNode: _vatFocusNode, 
      textEditingController: _vatTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_tradePriceFocusNode);
      },
      onChanged: (value){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.vatChanged(value: value));
      },   
      isError: widget.vat.isError,
      errorMessage: widget.vat.errorMessage, 
      hintText: StringConstants.vat,
      haveLenghtValidation: true,
      allowedLenght: widget.vat.allowedLenght,
      isEnabled: widget.isVatEnabled,
    );
  }

  Widget _getTradePriceWidget(BuildContext buildContext){
    return PriceInputWidget(
      focusNode: _tradePriceFocusNode, 
      textEditingController: _tradePriceTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_exportPriceFocusNode);
      },
      onChanged: (value){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.traderPriceChanged(value: value));
      },   
      isError: widget.tradingPrice.isError,
      errorMessage: widget.tradingPrice.errorMessage, 
      hintText: StringConstants.tradePrice,
      haveLenghtValidation: true,
      allowedLenght: widget.tradingPrice.allowedLenght,
      isEnabled: widget.isTradingPriceEnabled,
    );
  }

  Widget _getExportPriceWidget(BuildContext buildContext){
    return PriceInputWidget(
      focusNode: _exportPriceFocusNode, 
      textEditingController: _exportPriceTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_backgroundFocusNode);
      },
      onChanged: (value){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.exportPriceChanged(value: value));
      },   
      isError: widget.exportPrice.isError,
      errorMessage: widget.exportPrice.errorMessage, 
      hintText: StringConstants.exportPrice,
      haveLenghtValidation: true,
      allowedLenght: widget.exportPrice.allowedLenght,
      isEnabled: widget.isExportPriceEnabled,
    );
  }

  Widget _getPriceInfoWidget(BuildContext buildContext){
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: StringConstants.priceDescription1,
            style: StyleConstants.detailsLabelTextStyle
          ),
          TextSpan(
            text: StringConstants.priceDescription2,
            style: StyleConstants.detailsLabelTextStyleBold
          ),
          TextSpan(
            text: StringConstants.priceDescription3,
            style: StyleConstants.detailsLabelTextStyle
          ),
          TextSpan(
            text: StringConstants.auto,
            style: StyleConstants.detailsLabelTextStyleBold
          ),
          TextSpan(
            text: StringConstants.db,
            style: StyleConstants.detailsLabelTextStyleBoldAndRed
          ),
          TextSpan(
            text: StringConstants.traders,
            style: StyleConstants.detailsLabelTextStyle
          )
        ]
      )
    );
  }

  Widget _getViewAdButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.viewAd,
      color: ColorConstants.blackColor, 
      onPress: (){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.onViewAdTapped());
      }
    );
  }

  Widget _getWhatHapenAfterSaveButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.whatHappensAfterSave,
      color: ColorConstants.blackColor, 
      onPress: (){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.onWhatHappensAffterSaveTapped());
      }
    );
  }

  Widget _getSaveButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.save, 
      onPress: (){
        widget.priceBloc.addEvent(AddVehiclePriceEvent.save());
      }
    );
  }

}