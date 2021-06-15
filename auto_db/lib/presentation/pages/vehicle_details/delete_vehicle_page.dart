import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/vehicle_details/delete_vehicle/delete_vehicle_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/vehicle_details/delete_vehicle_widget.dart';
import 'package:flutter/material.dart';

class DeleteVehiclePage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const DeleteVehiclePage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _DeleteVehiclePageState createState() => _DeleteVehiclePageState();
}

class _DeleteVehiclePageState extends State<DeleteVehiclePage> with WillPopRouteObserver{
  DeleteVehicleBloc _deleteVehicleBloc;

  @override
  void dispose() {
    _deleteVehicleBloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if(_deleteVehicleBloc == null){
      _deleteVehicleBloc = DeleteVehicleBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    TabNavigator.instance.addObserver(this);
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    _deleteVehicleBloc.addEvent(DeleteVehicleEvent.onCancelTapped());
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
          title: StringConstants.remove.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle,
          haveBackButton: false,
        ),
        Expanded(
          flex: 1,
          child: _getDeleteVehicleListener(buildContext)
        )
      ],
    );
  }

  Widget _getDeleteVehicleListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _deleteVehicleBloc.initialState,
      stream: _deleteVehicleBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<DeleteVehicleState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return DeleteVehicleWidget(
          image: state.image, 
          licensePlate: state.licensePlate, 
          stockNumber: state.stockNumber, 
          price: state.price, 
          year: state.year, 
          mileage: state.mileage, 
          fuel: state.fuel, 
          engine: state.engine, 
          transmission: state.transmission,
          power: state.power,
          isReserved: state.isReserved,
          onRemoveVehicleTap: (){
            _deleteVehicleBloc.addEvent(DeleteVehicleEvent.onRemoveVehicleTapped());
          },
          onCancelTap: (){
            _deleteVehicleBloc.addEvent(DeleteVehicleEvent.onCancelTapped());
          }, 
        );
      }
    );
  }
}