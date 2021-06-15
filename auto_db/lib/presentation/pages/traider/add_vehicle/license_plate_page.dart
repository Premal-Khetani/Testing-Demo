import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/license_plate/license_plate_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/license_plate_form.dart';
import 'package:flutter/material.dart';

class LicensePlatePage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const LicensePlatePage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _LicensePlatePageState createState() => _LicensePlatePageState();
}

class _LicensePlatePageState extends State<LicensePlatePage> with WillPopRouteObserver{
  LicensePlateBloc licensePlateBloc;

  @override
  void dispose() {
    licensePlateBloc?.dispose();
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
    if(licensePlateBloc == null){
      licensePlateBloc = LicensePlateBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    await licensePlateBloc?.close();
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
        NavigationWidget(
          title: StringConstants.licensePlate.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            licensePlateBloc.addEvent(LicensePlateEvent.close());
          },
        ),
        Expanded(
          flex: 1,
          child: _getDescriptionStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getDescriptionStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: licensePlateBloc.licensePlateFormInitialState,
      stream: licensePlateBloc.outLicensePlateStateController,
      builder: (BuildContext context, AsyncSnapshot<LicensePlateState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return LicensePlateForm(
          licensePlateBloc: licensePlateBloc,
          licensePlate: state.licensePlate, 
          nameOrStockNumber: state.nameOrStockNumber,
        );
      }
    );
  }
}