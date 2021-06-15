import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_description_form.dart';
import 'package:flutter/material.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/add_vehicle_description/add_vehicle_description_bloc.dart';

class AddVehicleDescriptionPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const AddVehicleDescriptionPage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);

  @override
  _AddVehicleDescriptionPageState createState() => _AddVehicleDescriptionPageState();
}

class _AddVehicleDescriptionPageState extends State<AddVehicleDescriptionPage> with WillPopRouteObserver{
  AddVehicleDescriptionBloc descriptionBloc;

  @override
  void dispose() {
    descriptionBloc?.dispose();
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
    if(descriptionBloc == null){
      descriptionBloc = AddVehicleDescriptionBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    await descriptionBloc?.close();
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
          title: StringConstants.description.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            descriptionBloc.addEvent(AddVehicleDescriptionEvent.close());
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
      initialData: descriptionBloc.descriptionFormInitialState,
      stream: descriptionBloc.outDescriptionFormStateController,
      builder: (BuildContext context, AsyncSnapshot<AddVehicleDescriptionState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return AddVehiclesDescriptionForm(
          descriptionBloc: descriptionBloc,
          title: state.descriptionTitle, 
          description: state.description,
        );
      }
    );
  }
}