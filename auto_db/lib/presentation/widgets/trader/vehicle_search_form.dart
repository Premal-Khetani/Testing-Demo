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
import 'package:auto_db/domain/value_objects/vehicle_search/mileage_dropdown.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/price_dropdown.dart';
import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:flutter/material.dart';

class VehicleSearchForm extends StatelessWidget {
  final VehicleSearchBloc vehicleSearchBloc;
  final VehicleType vehicleType;
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
  final int numberOfAds;

  const VehicleSearchForm({
    Key key,
    @required this.vehicleSearchBloc, 
    @required this.vehicleType, 
    @required this.vehicleBrand, 
    @required this.vehicleModel, 
    @required this.vehicleTransmissionType, 
    @required this.vehicleBodyWork, 
    @required this.vehicleFuelType, 
    @required this.yearFrom, 
    @required this.yearTo, 
    @required this.numberOfAds,
    @required this.priceFrom,
    @required this.priceTo,
    @required this.mileageFrom,
    @required this.mileageTo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
    );
  }
  
  List<Widget> _getFormChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    _childrens.add(_getClearButton(buildContext));
    _childrens.add(_getSeparator(buildContext));
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
              vehicleSearchBloc.addEvent(VehicleSearchEvent.onClearTapped());
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
      value: vehicleType.value,
      isError: vehicleType.isError,
      errorMessage: vehicleType.errorMessage,
      items: vehicleType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        vehicleSearchBloc.addEvent(VehicleSearchEvent.vehicleTypeChanged(value: value));
      },
    );
  }

  Widget _getVehicleBrandDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.brand,
      value: vehicleBrand.value,
      isError: vehicleBrand.isError,
      errorMessage: vehicleBrand.errorMessage,
      items: vehicleBrand.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        vehicleSearchBloc.addEvent(VehicleSearchEvent.vehicleBrandChanged(value: value));
      },
    );
  }

  Widget _getVehicleModelDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.model,
      value: vehicleModel.value,
      isError: vehicleModel.isError,
      errorMessage: vehicleModel.errorMessage,
      items: vehicleModel.options == null ? null : vehicleModel.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
       vehicleSearchBloc.addEvent(VehicleSearchEvent.vehicleModelChanged(value: value));
      },
    );
  }

  Widget _getVehicleTransmisionTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.transmission,
      value: vehicleTransmissionType.value,
      isError: vehicleTransmissionType.isError,
      errorMessage: vehicleTransmissionType.errorMessage,
      items: vehicleTransmissionType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        vehicleSearchBloc.addEvent(VehicleSearchEvent.vehicleTransmissionChanged(value: value));
      },
    );
  }

  Widget _getVehicleBodyWorkTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.body,
      value: vehicleBodyWork.value,
      isError: vehicleBodyWork.isError,
      errorMessage: vehicleBodyWork.errorMessage,
      items: vehicleBodyWork.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        vehicleSearchBloc.addEvent(VehicleSearchEvent.vehicleBodyWorkChanged(value: value));
      },
    );
  }

  Widget _getYearWidget(BuildContext buildContext){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.yearFrom,
            value: yearFrom.value,
            isError: yearFrom.isError,
            errorMessage: yearFrom.errorMessage,
            items: yearFrom.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              vehicleSearchBloc.addEvent(VehicleSearchEvent.yearFromChanged(value: value));
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
            value: yearTo.value,
            isError: yearTo.isError,
            errorMessage: yearTo.errorMessage,
            items: yearTo.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              vehicleSearchBloc.addEvent(VehicleSearchEvent.yearToChanged(value: value));
            },
          ),
        )
      ],
    );
  }

  Widget _getPriceWidget(BuildContext buildContext){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.priceFrom,
            value: priceFrom.value,
            isError: priceFrom.isError,
            errorMessage: priceFrom.errorMessage,
            items: priceFrom.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              vehicleSearchBloc.addEvent(VehicleSearchEvent.priceFromChanged(value: value));
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
            value: priceTo.value,
            isError: priceTo.isError,
            errorMessage: priceTo.errorMessage,
            items: priceTo.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              vehicleSearchBloc.addEvent(VehicleSearchEvent.priceToChanged(value: value));
            },
          ),
        )
      ],
    );
  }

  Widget _getVehicleFuelTypeDropdown(BuildContext buildContext){
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.fuel,
      value: vehicleFuelType.value,
      isError: vehicleFuelType.isError,
      errorMessage: vehicleFuelType.errorMessage,
      items: vehicleFuelType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        vehicleSearchBloc.addEvent(VehicleSearchEvent.vehicleFuelTypeChanged(value: value));
      },
    );
  }

  Widget _getMileageWidget(BuildContext buildContext){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MyDropdownWidget<String>(
            hint: StringConstants.mileageFrom,
            value: mileageFrom.value,
            isError: mileageFrom.isError,
            errorMessage: mileageFrom.errorMessage,
            items: mileageFrom.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              vehicleSearchBloc.addEvent(VehicleSearchEvent.mileageFromChanged(value: value));
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
            value: mileageTo.value,
            isError: mileageTo.isError,
            errorMessage: mileageTo.errorMessage,
            items: mileageTo.options.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: StyleConstants.inputTextStyle,
                )
              );
            }).toList(), 
            onChanged: (value){
              vehicleSearchBloc.addEvent(VehicleSearchEvent.mileageToChanged(value: value));
            },
          ),
        )
      ],
    );
  }

  Widget _getSearchButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.search + ' ($numberOfAds)', 
      onPress: (){
        vehicleSearchBloc.addEvent(VehicleSearchEvent.onSearchTapped());
      }
    );
  }
}