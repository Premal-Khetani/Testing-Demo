import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/add_vehicle_year.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/engine_size.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/mileage.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/mileage_measurment_unit.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_body_work.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_color.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_interior.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_transmission_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/specifications/add_vehicle_specifications_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/text_input_widget.dart';
import 'package:flutter/material.dart';

class AddVehicleSpecificationsForm extends StatefulWidget {
  final AddVehicleSpecificationsBloc specificationsBloc;
  final VehicleType vehicleType;
  final VehicleBrand vehicleBrand;
  final VehicleModel vehicleModel;
  final VehicleTransmissionType vehicleTransmissionType;
  final VehicleBodyWork vehicleBodyWork;
  final AddVehicleYear year;
  final VehicleFuelType vehicleFuelType;
  final Mileage mileage;
  final MileageMeasurmentUnit mileageMeasurmentUnit;
  final VehicleColor color;
  final VehicleInterior vehicleInterior;
  final EngineSize engineSize;

  const AddVehicleSpecificationsForm({
    Key key, 
    @required this.specificationsBloc, 
    @required this.vehicleType, 
    @required this.vehicleBrand, 
    @required this.vehicleModel, 
    @required this.vehicleTransmissionType, 
    @required this.vehicleBodyWork,
    @required this.year, 
    @required this.vehicleFuelType, 
    @required this.mileage, 
    @required this.mileageMeasurmentUnit,
    @required this.color,
    @required this.vehicleInterior, 
    @required this.engineSize
  }) : super(key: key);
  
  @override
  _AddVehicleSpecificationsFormState createState() => _AddVehicleSpecificationsFormState();
}

class _AddVehicleSpecificationsFormState extends State<AddVehicleSpecificationsForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _vehicleTypeFocusNode = FocusNode();
  FocusNode _vehicleBrandFocusNode = FocusNode();
  FocusNode _vehicleModelFocusNode = FocusNode();
  FocusNode _vehicleTransmissionTypeFocusNode = FocusNode();
  FocusNode _vehicleBodyWorkFocusNode = FocusNode();
  FocusNode _yearFocusNode = FocusNode();
  FocusNode _vehicleFuelTypeFocusNode = FocusNode();
  FocusNode _mileageFocusNode = FocusNode();
  FocusNode _mileageMeasurmentUnitFocusNode = FocusNode();
  FocusNode _colorFocusNode = FocusNode();
  FocusNode _vehicleInteriorFocusNode = FocusNode();
  FocusNode _engineSizeFocusNode = FocusNode();

  MyTextEditingController _mileageTextEditingController = MyTextEditingController();
  MyTextEditingController _engineSizeTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _mileageTextEditingController.setTextAndPosition(widget.mileage.value);
    _engineSizeTextEditingController.setTextAndPosition(widget.engineSize.value);

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

    _childrens.add(_getVehicleTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleBrandDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleModelDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleTransmisionTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleBodyWorkTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getYearDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleFuelTypeDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getMileageAndMeasurementUnit(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getColorDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getVehicleInteriorDropdown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getEgineContentWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSaveButton(buildContext));

    return _childrens;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: SizeConfig.separatorSize
    );
  }

  Widget _getVehicleTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.vehicle,
      value: widget.vehicleType.value,
      focusNode: _vehicleTypeFocusNode,
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
        FocusScope.of(buildContext).requestFocus(_vehicleBrandFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleTypeChanged(value: value));
      },
      isDisabled: widget.vehicleType.isDisabled,
    );
  }

  Widget _getVehicleBrandDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.brand,
      value: widget.vehicleBrand.value,
      focusNode: _vehicleBrandFocusNode,
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
        FocusScope.of(buildContext).requestFocus(_vehicleModelFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleBrandChanged(value: value));
      },
      isDisabled: widget.vehicleBrand.isDisabled,
    );
  }

  Widget _getVehicleModelDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.model,
      value: widget.vehicleModel.value,
      focusNode: _vehicleModelFocusNode,
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
        FocusScope.of(buildContext).requestFocus(_vehicleTransmissionTypeFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleModelChanged(value: value));
      },
      isDisabled: widget.vehicleModel.isDisabled,
    );
  }

  Widget _getVehicleTransmisionTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.transmission,
      value: widget.vehicleTransmissionType.value,
      focusNode: _vehicleTransmissionTypeFocusNode,
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
        FocusScope.of(buildContext).requestFocus(_vehicleBodyWorkFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleTransmissionChanged(value: value));
      },
      isDisabled: widget.vehicleTransmissionType.isDisabled,
    );
  }

  Widget _getVehicleBodyWorkTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.body,
      value: widget.vehicleBodyWork.value,
      focusNode: _vehicleBodyWorkFocusNode,
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
        FocusScope.of(buildContext).requestFocus(_yearFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleBodyWorkChanged(value: value));
      },
      isDisabled: widget.vehicleBodyWork.isDisabled,
    );
  }

  Widget _getYearDropdown(BuildContext buildContext){
    return MyDropdownWidget<String>(
      hint: StringConstants.year,
      value: widget.year.value,
      focusNode: _yearFocusNode,
      isError: widget.year.isError,
      errorMessage: widget.year.errorMessage,
      items: widget.year.options.map((e) {
        return DropdownMenuItem<String>(
          value: e,
          child: Text(
            e,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        FocusScope.of(buildContext).requestFocus(_vehicleFuelTypeFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.yearChanged(value: value));
      },
      isDisabled: widget.year.isDisabled,
    );
  }

  Widget _getVehicleFuelTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.fuel,
      value: widget.vehicleFuelType.value,
      focusNode: _vehicleFuelTypeFocusNode,
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
        FocusScope.of(buildContext).requestFocus(_mileageFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleFuelTypeChanged(value: value));
      },
      isDisabled: widget.vehicleFuelType.isDisabled,
    );
  }

  Widget _getMileageAndMeasurementUnit(BuildContext buildContext){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: TextInputWidget(
            focusNode: _mileageFocusNode, 
            textEditingController: _mileageTextEditingController,
            keyboardType: TextInputType.number, 
            onEditingComplete: (){
              FocusScope.of(buildContext).requestFocus(_mileageMeasurmentUnitFocusNode);
            },
            onChanged: (value){
              widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.mileageChanged(value: value));
            },   
            isError: widget.mileage.isError,
            errorMessage: widget.mileage.errorMessage, 
            hintText: StringConstants.mileage,
            haveLenghtValidation: true,
            allowedLenght: widget.mileage.allowedLenght,
          ) 
        ),
        SizedBox(width: SizeConfig.separatorSize),
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: '',
            value: widget.mileageMeasurmentUnit.value,
            focusNode: _mileageMeasurmentUnitFocusNode,
            isError: widget.mileageMeasurmentUnit.isError,
            errorMessage: widget.mileageMeasurmentUnit.errorMessage,
            items: widget.mileageMeasurmentUnit.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              FocusScope.of(buildContext).requestFocus(_colorFocusNode);
              widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.mileageMeasurmentUnitChanged(value: value));
            },
          )
        )
      ],
    );
  }

  Widget _getColorDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.color,
      value: widget.color.value,
      focusNode: _colorFocusNode,
      isError: widget.color.isError,
      errorMessage: widget.color.errorMessage,
      items: widget.color.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        FocusScope.of(buildContext).requestFocus(_vehicleInteriorFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.colorChaneged(value: value));
      },
      isDisabled: widget.color.isDisabled,
    );
  }

  Widget _getVehicleInteriorDropdown(BuildContext buildContext){
    return MyDropdownWidget<String>(
      hint: StringConstants.interior,
      value: widget.vehicleInterior.value,
      focusNode: _vehicleInteriorFocusNode,
      isError: widget.vehicleInterior.isError,
      errorMessage: widget.vehicleInterior.errorMessage,
      items: widget.vehicleInterior.options.map((e) {
        return DropdownMenuItem<String>(
          value: e.en,
          child: Text(
            e.en,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        FocusScope.of(buildContext).requestFocus(_engineSizeFocusNode);
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleInteriorChanged(value: value));
      },
    );
  }

  Widget _getEgineContentWidget(BuildContext buildContext){
    return TextInputWidget(
      focusNode: _engineSizeFocusNode, 
      textEditingController: _engineSizeTextEditingController,
      keyboardType: TextInputType.number, 
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_backgroundFocusNode);
      },
      onChanged: (value){
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.egnineSizeChanged(value: value));
      },   
      isError: widget.engineSize.isError,
      errorMessage: widget.engineSize.errorMessage, 
      hintText: StringConstants.engineContent,
      suffixText: StringConstants.cc,
      haveLenghtValidation: true,
      allowedLenght: widget.engineSize.allowedLenght,
      isDisabled: widget.color.isDisabled,
    );
  }

  Widget _getSaveButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.save, 
      onPress: (){
        widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.save());
      }
    );
  }
}