import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/add_vehicle_year.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_body_work.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_transmission_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/domain/value_objects/searches/date_value_object.dart';
import 'package:auto_db/domain/value_objects/searches/search_name.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/mileage_dropdown.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/price_dropdown.dart';
import 'package:auto_db/presentation/blocs/trader/searches/add_search/add_search_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/my_date_picker_widget.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/text_input_widget.dart';
import 'package:flutter/material.dart';

class AddSearchForm extends StatefulWidget {
  final AddSearchBloc addSearchBloc;
  final VehicleType vehicleType;
  final DateValueObject dateFrom;
  final DateValueObject dateTo;
  final SearchName searchName;
  final VehicleBrand vehicleBrand;
  final VehicleModel vehicleModel;
  final VehicleTransmissionType vehicleTransmissionType;
  final VehicleBodyWork vehicleBodyWork;
  final VehicleFuelType vehicleFuelType;
  final AddVehicleYear yearFrom;
  final AddVehicleYear yearTo;
  final PriceDropdown priceFrom;
  final PriceDropdown priceTo;
  final MileageDropdown mileageFrom;
  final MileageDropdown mileageTo;
  final bool isEdit;

  const AddSearchForm({
    Key key,
    @required this.addSearchBloc, 
    @required this.vehicleType,
    @required this.dateFrom,
    @required this.dateTo,
    @required this.searchName,
    @required this.vehicleBrand, 
    @required this.vehicleModel, 
    @required this.vehicleTransmissionType, 
    @required this.vehicleBodyWork, 
    @required this.vehicleFuelType, 
    @required this.yearFrom, 
    @required this.yearTo,
    @required this.priceFrom,
    @required this.priceTo,
    @required this.mileageFrom,
    @required this.mileageTo,
    @required this.isEdit
  }) : super(key: key);

  @override
  _AddSearchFormState createState() => _AddSearchFormState();
}

class _AddSearchFormState extends State<AddSearchForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _searchNameFocusNode = FocusNode();

  MyTextEditingController _searchNameTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _searchNameTextEditingController.setTextAndPosition(widget.searchName.value);

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

    _childrens.add(_getClearButton(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getDatePickerWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSearchNameWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleBrandDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleModelDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleTransmisionTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleBodyWorkTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getYearWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getPriceWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleFuelTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getMileageWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSearchButton(buildContext));

    return _childrens;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: SizeConfig.separatorSize
    );
  }

  Widget _getClearButton(BuildContext buildContext){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ButtonWidget(
            text: StringConstants.clear,
            color: ColorConstants.blackColor, 
            onPress: (){
              widget.addSearchBloc.addEvent(AddSearchEvent.onClearTapped());
            }
          )
        ),
        SizedBox(
          width: SizeConfig.separatorSize
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }

  Widget _getVehicleTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.vehicle,
      value: widget.vehicleType.value,
      isError: widget.vehicleType.isError,
      errorMessage: widget.vehicleType.errorMessage,
      items: widget.vehicleType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.vehicleTypeChanged(value: value));
      },
    );
  }

  Widget _getDatePickerWidget(BuildContext buildContext){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: MyDatePickerWidget(
            hint: StringConstants.periodMin, 
            value: widget.dateFrom.value, 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.dateFromChanged(value: value));
            }, 
            isError: widget.dateFrom.isError, 
            errorMessage: widget.dateFrom.errorMessage,
            lastDate: widget.dateTo.value,
          )
        ),
        SizedBox(
          width: SizeConfig.separatorSize
        ),
        Expanded(
          flex: 1,
          child: MyDatePickerWidget(
            hint: StringConstants.periodMax, 
            value: widget.dateTo.value, 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.dateToChanged(value: value));
            }, 
            isError: widget.dateTo.isError, 
            errorMessage: widget.dateTo.errorMessage,
            firstDate: widget.dateFrom.value,
          ),
        )
      ],
    );
  }

  Widget _getSearchNameWidget(BuildContext buildContext){
    return TextInputWidget(
      focusNode: _searchNameFocusNode, 
      textEditingController: _searchNameTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_backgroundFocusNode);
      },
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.searchNameChanged(value: value));
      },   
      isError: widget.searchName.isError,
      errorMessage: widget.searchName.errorMessage, 
      hintText: StringConstants.searchName,
      haveLenghtValidation: true,
      allowedLenght: widget.searchName.allowedLenght,
    );
  }

  Widget _getVehicleBrandDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.brand,
      value: widget.vehicleBrand.value,
      isError: widget.vehicleBrand.isError,
      errorMessage: widget.vehicleBrand.errorMessage,
      items: widget.vehicleBrand.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.vehicleBrandChanged(value: value));
      },
    );
  }

  Widget _getVehicleModelDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.model,
      value: widget.vehicleModel.value,
      isError: widget.vehicleModel.isError,
      errorMessage: widget.vehicleModel.errorMessage,
      items: widget.vehicleModel.options == null ? null : widget.vehicleModel.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.vehicleModelChanged(value: value));
      },
    );
  }

  Widget _getVehicleTransmisionTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.transmission,
      value: widget.vehicleTransmissionType.value,
      isError: widget.vehicleTransmissionType.isError,
      errorMessage: widget.vehicleTransmissionType.errorMessage,
      items: widget.vehicleTransmissionType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.vehicleTransmissionChanged(value: value));
      },
    );
  }

  Widget _getVehicleBodyWorkTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.body,
      value: widget.vehicleBodyWork.value,
      isError: widget.vehicleBodyWork.isError,
      errorMessage: widget.vehicleBodyWork.errorMessage,
      items: widget.vehicleBodyWork.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.vehicleBodyWorkChanged(value: value));
      },
    );
  }

  Widget _getYearWidget(BuildContext buildContext){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.yearFrom,
            value: widget.yearFrom.value,
            isError: widget.yearFrom.isError,
            errorMessage: widget.yearFrom.errorMessage,
            items: widget.yearFrom.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.yearFromChanged(value: value));
            },
          )
        ),
        SizedBox(
          width: SizeConfig.separatorSize
        ),
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.yearTo,
            value: widget.yearTo.value,
            isError: widget.yearTo.isError,
            errorMessage: widget.yearTo.errorMessage,
            items: widget.yearTo.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.yearToChanged(value: value));
            },
          ),
        )
      ],
    );
  }

  Widget _getPriceWidget(BuildContext buildContext){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.priceFrom,
            value: widget.priceFrom.value,
            isError: widget.priceFrom.isError,
            errorMessage: widget.priceFrom.errorMessage,
            items: widget.priceFrom.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.priceFromChanged(value: value));
            },
          )
        ),
        SizedBox(
          width: SizeConfig.separatorSize
        ),
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.priceTo,
            value: widget.priceTo.value,
            isError: widget.priceTo.isError,
            errorMessage: widget.priceTo.errorMessage,
            items: widget.priceTo.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.priceToChanged(value: value));
            },
          ),
        )
      ],
    );
  }

  Widget _getVehicleFuelTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.fuel,
      value: widget.vehicleFuelType.value,
      isError: widget.vehicleFuelType.isError,
      errorMessage: widget.vehicleFuelType.errorMessage,
      items: widget.vehicleFuelType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        widget.addSearchBloc.addEvent(AddSearchEvent.vehicleFuelTypeChanged(value: value));
      },
    );
  }

  Widget _getMileageWidget(BuildContext buildContext){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.mileageFrom,
            value: widget.mileageFrom.value,
            isError: widget.mileageFrom.isError,
            errorMessage: widget.mileageFrom.errorMessage,
            items: widget.mileageFrom.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.mileageFromChanged(value: value));
            },
          )
        ),
        SizedBox(
          width: SizeConfig.separatorSize
        ),
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.mileageTo,
            value: widget.mileageTo.value,
            isError: widget.mileageTo.isError,
            errorMessage: widget.mileageTo.errorMessage,
            items: widget.mileageTo.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              widget.addSearchBloc.addEvent(AddSearchEvent.mileageToChanged(value: value));
            },
          ),
        )
      ],
    );
  }

  Widget _getSearchButton(BuildContext buildContext){
    return ButtonWidget(
      text: widget.isEdit ? StringConstants.save : StringConstants.postSearch, 
      onPress: (){
        widget.addSearchBloc.addEvent(AddSearchEvent.onPostSearchTapped());
      }
    );
  }
}