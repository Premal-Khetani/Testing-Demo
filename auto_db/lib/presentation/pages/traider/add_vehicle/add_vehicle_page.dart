import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/add_vehicle_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_widget.dart';
import 'package:flutter/material.dart';

class AddVehiclePage extends StatefulWidget {
  final String title;
  final AddVehicleResponse addVehicleResponse;

  const AddVehiclePage({
    Key key, 
    @required this.title,
    @required this.addVehicleResponse
  }) : super(key: key);
   
  @override
  _AddVehiclePageState createState() => _AddVehiclePageState();
}

class _AddVehiclePageState extends State<AddVehiclePage> with WillPopRouteObserver{
  AddVehicleBloc _addVehicleBloc;

  @override
  void dispose() {
    _addVehicleBloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    super.initState();
  }

  @override
  Future<bool> willPopRoute() async{
    _addVehicleBloc.addEvent(AddVehicleEvent.closeTapped());
    return true;
  }

  @override
  void didChangeDependencies() {
    if(_addVehicleBloc == null){
      _addVehicleBloc = AddVehicleBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
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
            _addVehicleBloc.addEvent(AddVehicleEvent.closeTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getAddVehicleStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getAddVehicleStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _addVehicleBloc.addVehicleInitialState,
      stream: _addVehicleBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<AddVehicleState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return AddVehicleWidget(
          addVehicleBloc: _addVehicleBloc,
          title: widget.title, 
          isLicensePlateSaved: state.isLicensePlateSaved,
          isLicensePlateAdded: state.isLicensePlateAdded,
          isSpecificationsSaved: state.isSpecificationsSaved,
          isDescriptionSaved: state.isDescriptionSaved,
          photosDetails: state.photosDetails,
          isPhotosSaved: state.isPhotoSaved,
          isAccessoriesSaved: state.isAcessoriesSaved,
          isPriceSaved: state.isPriceSaved,
        );
      }
    );
  }
}