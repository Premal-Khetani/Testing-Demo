import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/vehicle_details/vehicle_details_description/vehicle_details_description_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/vehicle_details/vehicle_details_description_widget.dart';
import 'package:flutter/material.dart';

class VehicleDetailsDescriptionPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const VehicleDetailsDescriptionPage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _VehicleDetailsDescriptionPageState createState() => _VehicleDetailsDescriptionPageState();
}

class _VehicleDetailsDescriptionPageState extends State<VehicleDetailsDescriptionPage> with WillPopRouteObserver{
  VehicleDetailsDescriptionBloc _vehicleDetailsDescriptionBloc;

  @override
  void dispose() {
    _vehicleDetailsDescriptionBloc?.dispose();
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
    if(_vehicleDetailsDescriptionBloc == null){
      _vehicleDetailsDescriptionBloc = VehicleDetailsDescriptionBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    _vehicleDetailsDescriptionBloc.addEvent(VehicleDetailsDescriptionEvent.onCloseTapped());
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
          title: StringConstants.description, 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            _vehicleDetailsDescriptionBloc.addEvent(VehicleDetailsDescriptionEvent.onCloseTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getVehicleDetailsDescriptionListener(buildContext)
        )
      ],
    );
  }

  Widget _getVehicleDetailsDescriptionListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _vehicleDetailsDescriptionBloc.initialState,
      stream: _vehicleDetailsDescriptionBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<VehicleDetailsDescriptionState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return VehicleDetailsDescriptionWidget(
          title: state.title,
          description: state.description,
        );
      }
    );
  }
}