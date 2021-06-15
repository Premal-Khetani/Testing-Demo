import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/add_vehicle_bloc.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_step_button.dart';
import 'package:flutter/material.dart';

class AddVehicleWidget extends StatelessWidget {
  final AddVehicleBloc addVehicleBloc;
  final String title;
  final bool isLicensePlateSaved;
  final bool isLicensePlateAdded;
  final bool isSpecificationsSaved;
  final bool isDescriptionSaved;
  final String photosDetails;
  final bool isPhotosSaved;
  final bool isAccessoriesSaved;
  final bool isPriceSaved;

  const AddVehicleWidget({
    Key key, 
    @required this.addVehicleBloc,
    @required this.title, 
    @required this.isLicensePlateSaved, 
    @required this.isLicensePlateAdded, 
    @required this.isSpecificationsSaved, 
    @required this.isDescriptionSaved,
    @required this.photosDetails, 
    @required this.isPhotosSaved,
    @required this.isAccessoriesSaved,
    @required this.isPriceSaved
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
  }

  List<Widget> _getFormChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    _childrens.add(Text(
      title,
      style: StyleConstants.pageDetailsTextStyle,
      textAlign: TextAlign.start,
    ));

    _childrens.add(_getSeparator(buildContext));

    _childrens.add(AddVehicleStepButton(
      name: StringConstants.licensePlate.toUpperCase(),
      onTap: (){
        addVehicleBloc.addEvent(AddVehicleEvent.onLicensePlateTapped());
      },
      isLicensPlateButton: true,
      isSaved: isLicensePlateSaved,
      isLicensePlateAdded: isLicensePlateAdded,
    ));

    _childrens.add(_getSeparator(buildContext));

    _childrens.add(AddVehicleStepButton(
      name: StringConstants.specifications.toUpperCase(),
      onTap: (){
        addVehicleBloc.addEvent(AddVehicleEvent.onSpecificationsTapped());
      },
      isSaved: isSpecificationsSaved,
    ));

    _childrens.add(_getSeparator(buildContext));

    _childrens.add(AddVehicleStepButton(
      name: StringConstants.description.toUpperCase(),
      onTap: (){
        addVehicleBloc.addEvent(AddVehicleEvent.onDescriptionTapped());
      },
      isSaved: isDescriptionSaved,
    ));

    _childrens.add(_getSeparator(buildContext));

    _childrens.add(AddVehicleStepButton(
      name: StringConstants.photos.toUpperCase(),
      isPhotosButton: true,
      detailsText: photosDetails,
      onTap: (){
        addVehicleBloc.addEvent(AddVehicleEvent.onPhotosTapped());
      },
      isSaved: isPhotosSaved,
    ));

    _childrens.add(_getSeparator(buildContext));

    _childrens.add(AddVehicleStepButton(
      name: StringConstants.accessories.toUpperCase(),
      onTap: (){
        addVehicleBloc.addEvent(AddVehicleEvent.onAccessoriesTapped());
      },
      isSaved: isAccessoriesSaved,
    ));

    _childrens.add(_getSeparator(buildContext));

    _childrens.add(AddVehicleStepButton(
      name: StringConstants.price.toUpperCase(),
      onTap: (){
        addVehicleBloc.addEvent(AddVehicleEvent.onPriceTapped());
      },
      isSaved: isPriceSaved,
    ));

    return _childrens;
  }
  
  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: 1.5 * SizeConfig.heightMultiplier
    );
  }
}