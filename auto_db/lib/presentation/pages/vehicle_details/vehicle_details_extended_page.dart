import 'dart:io';

import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/vehicle_details/vehicle_details_extended/vehicle_details_extended_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/vehicle_details/vehicle_details_extended_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VehicleDetailsExtendedPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const VehicleDetailsExtendedPage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _VehicleDetailsExtendedPageState createState() => _VehicleDetailsExtendedPageState();
}

class _VehicleDetailsExtendedPageState extends State<VehicleDetailsExtendedPage> with WillPopRouteObserver{
  VehicleDetailsExtendedBloc _vehicleDetailsExtendedBloc;

  @override
  void dispose() {
    _disableOrientation();
    _vehicleDetailsExtendedBloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _enableOrientation();    
    if(_vehicleDetailsExtendedBloc == null){
      _vehicleDetailsExtendedBloc = VehicleDetailsExtendedBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  void _enableOrientation(){
    if(Platform.isIOS && SizeConfig.isTablet){
      return;
    }

    print('_enableOrientation');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
  }

  void _disableOrientation(){
    if(Platform.isIOS && SizeConfig.isTablet){
      return;
    }

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Future<bool> willPopRoute() async{
    _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onCloseTapped());
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: _drawBody(context),
    );
  }

  Widget _drawBody(BuildContext buildContext){
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: true,
          haveHelpButton: true,
          onHelpTapped: (){

          },
        ),
        Expanded(
          flex: 1,
          child: _getDetailsStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getDetailsStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _vehicleDetailsExtendedBloc.initialState,
      stream: _vehicleDetailsExtendedBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<VehicleDetailsExtendedState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: '', 
                textAlign: TextAlign.start,
                style: StyleConstants.pageTitleTextStyle, 
                haveBackButton: true,
                onTrailerTapped: (){
                  _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onCloseTapped());
                }
              ),
              Expanded(
                flex: 1, 
                child: LoaderWidget()
              )
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationWidget(
              title: state.title, 
              textAlign: TextAlign.start,
              style: StyleConstants.pageTitleTextStyle, 
              haveBackButton: true,
              onTrailerTapped: (){
                _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onCloseTapped());
              }
            ),
            Expanded(
              flex: 1, 
              child: VehicleDetailsExtendedWidget(
                images: state.images, 
                licensePlate: state.licensePlate, 
                stockNumber: state.stockNumber, 
                price: state.price, 
                onSpecificationsTap: (){
                  _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onSpecificationsTapped());
                },
                onAccessoriesTap: (){
                  _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onAccessoriesTapped());
                },
                onDescriptionTap: (){
                  _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onDescriptionTapped());
                },
                onFullScreenGallery: (gallery){
                  _vehicleDetailsExtendedBloc.addEvent(VehicleDetailsExtendedEvent.onFullScreenGallery(gallery: gallery));
                },
                pageController: state.galleryController,
              )
            )
          ],
        ); 
      }
    );
  }
}