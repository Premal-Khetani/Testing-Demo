import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/specifications/add_vehicle_specifications_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_specifications_form.dart';
import 'package:flutter/material.dart';

class AddVehicleSpecificationsPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;
  final RDWResponse rdw;

  const AddVehicleSpecificationsPage({
    Key key, 
    @required this.addVehicleResponse,
    @required this.rdw
  }) : super(key: key);

  @override
  _AddVehicleSpecificationsPageState createState() => _AddVehicleSpecificationsPageState();
}

class _AddVehicleSpecificationsPageState extends State<AddVehicleSpecificationsPage> with WillPopRouteObserver{
  AddVehicleSpecificationsBloc specificationsBloc;

  @override
  void dispose() {
    specificationsBloc?.dispose();
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
    if(specificationsBloc == null){
      specificationsBloc = AddVehicleSpecificationsBloc(
        context: context, 
        addVehicleResponse: widget.addVehicleResponse,
        rdw: widget.rdw
      );
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    await specificationsBloc?.close();
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
          title: StringConstants.specifications.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            specificationsBloc.addEvent(AddVehicleSpecificationsEvent.close());
          },
        ),
        Expanded(
          flex: 1,
          child: _getSpecificationsStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getSpecificationsStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: specificationsBloc.specificationsFormInitialState,
      stream: specificationsBloc.outSpecificationsFormStateController,
      builder: (BuildContext context, AsyncSnapshot<AddVehicleSpecificationsState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              specificationsBloc.addEvent(AddVehicleSpecificationsEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              specificationsBloc.addEvent(AddVehicleSpecificationsEvent.onRetryTapped());
            }
          );
        }

        return AddVehicleSpecificationsForm(
          specificationsBloc: specificationsBloc,
          vehicleType: state.vehicleType,
          vehicleBrand: state.vehicleBrand,
          vehicleModel: state.vehicleModel,
          vehicleTransmissionType: state.vehicleTransmissionType,
          vehicleBodyWork: state.vehicleBodyWork,
          year: state.year,
          vehicleFuelType: state.vehicleFuelType,
          mileage: state.mileage,
          mileageMeasurmentUnit: state.mileageMeasurmentUnit,
          color: state.color,
          vehicleInterior: state.vehicleInterior,
          engineSize: state.engineSize,
        );
      }
    );
  }
}