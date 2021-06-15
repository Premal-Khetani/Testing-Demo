import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/description.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/description_title.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/multiline_text_field.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/add_vehicle_description/add_vehicle_description_bloc.dart';
import 'package:flutter/material.dart';

class AddVehiclesDescriptionForm extends StatefulWidget {
  final AddVehicleDescriptionBloc descriptionBloc; 
  final DescriptionTitle title;
  final Description description;

  const AddVehiclesDescriptionForm({
    Key key,
    @required this.descriptionBloc, 
    @required this.title, 
    @required this.description,
  }) : super(key: key);

  @override
  _AddVehiclesDescriptionFormState createState() => _AddVehiclesDescriptionFormState();
}

class _AddVehiclesDescriptionFormState extends State<AddVehiclesDescriptionForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _titleFocusNode = FocusNode();
  FocusNode _descriptionFocusNode = FocusNode();

  MyTextEditingController _titleTextEditingController = MyTextEditingController();
  MyTextEditingController _descriptionTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _titleTextEditingController.setTextAndPosition(widget.title.value);
    _descriptionTextEditingController.setTextAndPosition(widget.description.value);

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

    _childrens.add(_getTitleWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getDescriptionWidget(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSaveButton(buildContext));

    return _childrens;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: SizeConfig.separatorSize
    );
  }

  Widget _getTitleWidget(BuildContext buildContext){
    return MultilineTextField(
      height: 12.5 * SizeConfig.heightMultiplier,
      hintText: StringConstants.title, 
      focusNode: _titleFocusNode, 
      textEditingController: _titleTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(context).requestFocus(_descriptionFocusNode);
      }, 
      onChanged: (value){
        widget.descriptionBloc.addEvent(AddVehicleDescriptionEvent.titleChanged(value: value));
      }, 
      isError: widget.title.isError, 
      errorMessage: widget.title.errorMessage, 
      haveLenghtValidator: true,
      lenght: widget.title.freeLenght,
      allowedLenght: widget.title.allowedLenght,
    );
  }

  Widget _getDescriptionWidget(BuildContext buildContext){
    return MultilineTextField(
      height: 30 * SizeConfig.heightMultiplier,
      hintText: StringConstants.description, 
      focusNode: _descriptionFocusNode, 
      textEditingController: _descriptionTextEditingController, 
      onEditingComplete: (){
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
        widget.descriptionBloc.addEvent(AddVehicleDescriptionEvent.save());
      }, 
      onChanged: (value){
        widget.descriptionBloc.addEvent(AddVehicleDescriptionEvent.descriptionChanged(value: value));
      }, 
      isError: widget.description.isError, 
      errorMessage: widget.description.errorMessage, 
      haveLenghtValidator: false,
    );
  }

  Widget _getSaveButton(BuildContext buildContext){
    return ButtonWidget(
      text: StringConstants.save,
      isEnabled: true, 
      onPress: (){
        widget.descriptionBloc.addEvent(AddVehicleDescriptionEvent.save());
      }
    );
  }
}