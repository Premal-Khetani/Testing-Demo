import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/view_ad/view_ad_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/view_ad_widget.dart';
import 'package:flutter/material.dart';

class ViewAdPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;
  final AddVehicleLookup priceType;
  final String price;

  const ViewAdPage({
    Key key, 
    @required this.addVehicleResponse,
    @required this.priceType,
    @required this.price
  }) : super(key: key);

  @override
  _ViewAdPageState createState() => _ViewAdPageState();
}

class _ViewAdPageState extends State<ViewAdPage> with WillPopRouteObserver{
  ViewAdBloc viewAdBloc;

  @override
  void dispose() {
    viewAdBloc?.dispose();
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
    if(viewAdBloc == null){
      viewAdBloc = ViewAdBloc(
        context: context, 
        addVehicleResponse: widget.addVehicleResponse,
        priceType: widget.priceType,
        price: widget.price
      );
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    viewAdBloc.addEvent(ViewAdEvent.close());
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
          title: StringConstants.ad.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            viewAdBloc.addEvent(ViewAdEvent.close());
          },
        ),
        Expanded(
          flex: 1,
          child: _getViewAdStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getViewAdStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: viewAdBloc.viewAdInitialState,
      stream: viewAdBloc.outViewAdStateController,
      builder: (BuildContext context, AsyncSnapshot<ViewAdState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return ViewAdWidget(
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
          onOkTapped: (){
            viewAdBloc.addEvent(ViewAdEvent.onOKTapped());
          }
        );
      }
    );
  }
}