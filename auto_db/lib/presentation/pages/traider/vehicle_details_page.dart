import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/stock/inventory/vehicle_details/vehicle_details_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/stock/vehicle_details_widget.dart';
import 'package:flutter/material.dart';

class VehicleDetailsPage extends StatefulWidget {
  final int vehicleId;

  const VehicleDetailsPage({
    Key key, 
    @required this.vehicleId
  }) : super(key: key);
  
  @override
  _VehicleDetailsPageState createState() => _VehicleDetailsPageState();
}

class _VehicleDetailsPageState extends State<VehicleDetailsPage> with WillPopRouteObserver{
  VehicleDetailsBloc _vehicleDetailsBloc;

  @override
  void dispose() {
    _vehicleDetailsBloc?.dispose();
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
    if(_vehicleDetailsBloc == null){
      _vehicleDetailsBloc = VehicleDetailsBloc(context: context, vehicleId: widget.vehicleId);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.closeTapped());
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
          title: StringConstants.inventory.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.closeTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getVehicleDetailsListener(buildContext)
        )
      ],
    );
  }

  Widget _getVehicleDetailsListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _vehicleDetailsBloc.inventoryInitialState,
      stream: _vehicleDetailsBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<VehicleDetailsState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onRetryTapped());
            }
          );
        }

        return VehicleDetailsWidget(
          title: state.title,
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
          onViewTap: (){
            _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onViewTapped());
          },
          onEditTap: (){
            _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onEditTapped());
          },
          onReserveTap: (){
            _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onReserveTapped());
          },
          onDeleteTap: (){
            _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onDeleteTapped());
          },
          onPdfTap: (){
            _vehicleDetailsBloc.addEvent(VehicleDetailsEvent.onPdfTapped());
          },
        );
      }
    );
  }
}