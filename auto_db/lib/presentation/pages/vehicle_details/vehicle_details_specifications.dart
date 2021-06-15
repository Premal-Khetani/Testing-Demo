import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/vehicle_details/vehicle_details_specifications/vehicle_details_specifications_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/vehicle_details/vehicle_details_specifications_widget.dart';
import 'package:flutter/material.dart';

class VehicleDetailsSpecificationsPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const VehicleDetailsSpecificationsPage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _VehicleDetailsSpecificationsPageState createState() => _VehicleDetailsSpecificationsPageState();
}

class _VehicleDetailsSpecificationsPageState extends State<VehicleDetailsSpecificationsPage> with WillPopRouteObserver{
  VehicleDetailsSpecificationsBloc _vehicleDetailsSpecificationsBloc;

  @override
  void dispose() {
    _vehicleDetailsSpecificationsBloc?.dispose();
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
    if(_vehicleDetailsSpecificationsBloc == null){
      _vehicleDetailsSpecificationsBloc = VehicleDetailsSpecificationsBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    _vehicleDetailsSpecificationsBloc.addEvent(VehicleDetailsSpecificationsEvent.onCloseTapped());
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteBackgroundColor,
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
          title: StringConstants.specifications, 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            _vehicleDetailsSpecificationsBloc.addEvent(VehicleDetailsSpecificationsEvent.onCloseTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getVehicleDetailsSpecificationsListener(buildContext)
        )
      ],
    );
  }

  Widget _getVehicleDetailsSpecificationsListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _vehicleDetailsSpecificationsBloc.initialState,
      stream: _vehicleDetailsSpecificationsBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<VehicleDetailsSpecificationsState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return VehicleDetailsSpecificationsWidget(
          vehicleType: state.vehicleType,
          brand: state.brand,
          model: state.model,
          year: state.year,
          fuel: state.fuel,
          mileage: state.mileage,
          mileageUnit: state.mileageUnit,
          transmission: state.transmission,
          body: state.body,
          color: state.color,
          interior: state.interior,
          engine: state.engine,
        );
      }
    );
  }
}