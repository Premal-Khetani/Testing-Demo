import 'dart:math';

import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/accessory.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/custom_accessory.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/accessories/add_vehicle_accessories_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/text_input_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/accessories_switch_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/custom_accessory_widget.dart';
import 'package:flutter/material.dart';

class AddVehicleAccessoriesForm extends StatefulWidget {
  final AddVehicleAccessoriesBloc accessoriesBloc;
  final ScrollController scrollController;
  final List<AccessoryHelperModel> accessories;
  final Accessory accessoryInput;
  final List<CustomAccessory> customAccessories;

  const AddVehicleAccessoriesForm({
    Key key,
    @required this.accessoriesBloc,
    @required this.scrollController,
    @required this.accessories,
    @required this.accessoryInput,
    @required this.customAccessories
  }) : super(key: key);

  @override
  _AddVehicleAccessoriesFormState createState() => _AddVehicleAccessoriesFormState();
}

class _AddVehicleAccessoriesFormState extends State<AddVehicleAccessoriesForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _accessoryFocusNode = FocusNode();

  MyTextEditingController _accessoryTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _accessoryTextEditingController.setTextAndPosition(widget.accessoryInput.value);

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      child: LayoutBuilder(
        builder: (buildContext, constraints){
          return Stack(
            children: [
              SingleChildScrollView(
                controller: widget.scrollController,
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
              ),
              Positioned(
                bottom: 3 * SizeConfig.heightMultiplier,
                right: 2.2 * SizeConfig.heightMultiplier,
                child: GestureDetector(
                  onTap: (){
                    widget.accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.goToTopTapped(scrollController: widget.scrollController));
                  },
                  child: Container(
                    height: 8 * SizeConfig.heightMultiplier,
                    width: 8 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      color: ColorConstants.redColor,
                      borderRadius: BorderRadius.circular(4 * SizeConfig.heightMultiplier)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.2 * SizeConfig.heightMultiplier),
                        child: Transform.rotate(
                          angle: 270 * pi / 180,
                          child: Icon(
                            AddVehicleIcons.arrow_right,
                            color: ColorConstants.whiteColor,
                            size: 4 * SizeConfig.imageSizeMultiplier,
                          ),
                        ),
                      )
                    ),
                  ),
                )
              )
            ],
          );
        },
      ),
    );
  }

  List<Widget> _getFormChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    for(int i = 0 ; i < widget.accessories.length; i++){
      if(i == 0){
        _childrens.add(_getCategoryNameWidget(widget.accessories[i].groupName));
        widget.accessories[i].accessories.forEach((accessory) {
          _childrens.add(_getSmallSeparator(buildContext));
          _childrens.add(AccessoriesSwitchWidget(
            value: accessory.state, 
            name: accessory.name, 
            onChanged: (value){
              widget.accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.accessoryValueChanged(accessory: accessory, value: value));
            }
          ));
        });
        continue;
      } 

      _childrens.add(_getBigSeparator(buildContext));
      _childrens.add(_getCategoryNameWidget(widget.accessories[i].groupName));
      widget.accessories[i].accessories.forEach((accessory) {
        _childrens.add(_getSmallSeparator(buildContext));
        _childrens.add(AccessoriesSwitchWidget(
          value: accessory.state, 
          name: accessory.name, 
          onChanged: (value){
            widget.accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.accessoryValueChanged(accessory: accessory, value: value));
          }
        ));
      });
    }

    _childrens.add(_getBigSeparator(buildContext));
    _childrens.add(_getCategoryNameWidget(StringConstants.addAccessory));
    _childrens.add(_getSmallSeparator(buildContext));
    _childrens.add(_getAccesoryInputWidget(buildContext));
    _childrens.add(_getSmallSeparator(buildContext));
    _childrens.add(_getAddButton(buildContext));

    if( widget.customAccessories.length > 0){
      _childrens.add(_getBigSeparator(buildContext));
      _childrens.add(_getCategoryNameWidget(StringConstants.addedAccessories));
    }

    widget.customAccessories.forEach((accessory) {
      _childrens.add(_getSmallSeparator(buildContext));
      _childrens.add(CusstomAccessoryWidget( 
        name: accessory.name, 
        onDeleteTapped: (){
          widget.accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.deleteCustomAccessory(customAccessory: accessory));
        },
      ));
    });

    //white space for back to top button
    _childrens.add(Container(
      height: 12 * SizeConfig.heightMultiplier,
    ));

    return _childrens;
  }

  Widget _getSmallSeparator(BuildContext buildContext){
    return SizedBox(
      height: 1.5 * SizeConfig.heightMultiplier
    );
  }

  Widget _getBigSeparator(BuildContext buildContext){
    return SizedBox(
      height: 2.5 * SizeConfig.heightMultiplier
    );
  }

  Widget _getCategoryNameWidget(String categoryName){
    return Text(
      categoryName,
      style: StyleConstants.accessoriesCategoryTextStyle,
      textAlign: TextAlign.start,
    );
  }

  Widget _getAccesoryInputWidget(BuildContext buildContext){
    return TextInputWidget(
      focusNode: _accessoryFocusNode, 
      textEditingController: _accessoryTextEditingController,
      onEditingComplete: (){
        FocusScope.of(buildContext).requestFocus(_backgroundFocusNode);
      },
      onChanged: (value){
        widget.accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.accessoryInputChanged(value: value));
      },   
      isError: widget.accessoryInput.isError,
      errorMessage: widget.accessoryInput.errorMessage, 
      hintText: StringConstants.accessory,
      haveLenghtValidation: true,
      allowedLenght: widget.accessoryInput.allowedLenght,
    );
  }

  Widget _getAddButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.add, 
      onPress: (){
        widget.accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.addTapped());
      }
    );
  }
}