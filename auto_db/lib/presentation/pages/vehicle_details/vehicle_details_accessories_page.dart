import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/vehicle_details/vehicle_details_accessories/vehicle_details_accessories_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/vehicle_details/vehicle_details_accessories_widget.dart';
import 'package:flutter/material.dart';

class VehicleDetailsAccessoriesPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const VehicleDetailsAccessoriesPage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _VehicleDetailsAccessoriesPageState createState() => _VehicleDetailsAccessoriesPageState();
}

class _VehicleDetailsAccessoriesPageState extends State<VehicleDetailsAccessoriesPage> with WillPopRouteObserver{
  VehicleDetailsAccessoriesBloc _vehicleDetailsAccessoriesBloc;

  @override
  void dispose() {
    _vehicleDetailsAccessoriesBloc?.dispose();
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
    if(_vehicleDetailsAccessoriesBloc == null){
      _vehicleDetailsAccessoriesBloc = VehicleDetailsAccessoriesBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    _vehicleDetailsAccessoriesBloc.addEvent(VehicleDetailsAccessoriesEvent.onCloseTapped());
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
          title: StringConstants.accessories, 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            _vehicleDetailsAccessoriesBloc.addEvent(VehicleDetailsAccessoriesEvent.onCloseTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getVehicleDetailsAccessoriesListener(buildContext)
        )
      ],
    );
  }

  Widget _getVehicleDetailsAccessoriesListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _vehicleDetailsAccessoriesBloc.initialState,
      stream: _vehicleDetailsAccessoriesBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<VehicleDetailsAccessoriesState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              _vehicleDetailsAccessoriesBloc.addEvent(VehicleDetailsAccessoriesEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              _vehicleDetailsAccessoriesBloc.addEvent(VehicleDetailsAccessoriesEvent.onRetryTapped());
            }
          );
        }

        return VehicleDetailsAccessoriesWidget(
          accessories: state.accessories,
          customAcessories: state.customAcessories,
        );
      }
    );
  }
}