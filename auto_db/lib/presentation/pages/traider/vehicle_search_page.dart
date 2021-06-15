import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/vehicle_search_form.dart';
import 'package:flutter/material.dart';

class VehicleSearchPage extends StatefulWidget {
  final VehicleSearchBloc vehicleSearchBloc;

  const VehicleSearchPage({
    Key key, 
    @required this.vehicleSearchBloc
  }) : super(key: key);
  
  @override
  _VehicleSearchPageState createState() => _VehicleSearchPageState();
}

class _VehicleSearchPageState extends State<VehicleSearchPage> with WillPopRouteObserver{
  @override
  void dispose() {
    if(!widget.vehicleSearchBloc.isPublicUser){
      TabNavigator.instance.removeObserver(this);
    }

    if(widget.vehicleSearchBloc.isPublicUser){
      widget.vehicleSearchBloc.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    if(!widget.vehicleSearchBloc.isPublicUser){
      TabNavigator.instance.addObserver(this);
    }
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if(widget.vehicleSearchBloc.isPublicUser){
      widget.vehicleSearchBloc.context = context;
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    widget.vehicleSearchBloc.addEvent(VehicleSearchEvent.onCloseTapped());
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
          haveHomeButton: !widget.vehicleSearchBloc.isPublicUser,
          haveHelpButton: true,
          onHelpTapped: (){

          },
        ),
        NavigationWidget(
          title: widget.vehicleSearchBloc.isPublicUser ? StringConstants.loginTitle : StringConstants.inventory.toUpperCase(), 
          textAlign: widget.vehicleSearchBloc.isPublicUser ? TextAlign.center : TextAlign.start,
          style: widget.vehicleSearchBloc.isPublicUser ? StyleConstants.pageTitleTextStyle : StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: !widget.vehicleSearchBloc.isPublicUser,
          onTrailerTapped: widget.vehicleSearchBloc.isPublicUser ? null : (){
            widget.vehicleSearchBloc.addEvent(VehicleSearchEvent.onCloseTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getSearchListener(buildContext)
        )
      ],
    );
  }

  Widget _getSearchListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: widget.vehicleSearchBloc.searchInitialState,
      stream: widget.vehicleSearchBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<VehicleSearchState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              widget.vehicleSearchBloc.addEvent(VehicleSearchEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              widget.vehicleSearchBloc.addEvent(VehicleSearchEvent.onRetryTapped());
            }
          );
        }

        return VehicleSearchForm(
          vehicleSearchBloc: widget.vehicleSearchBloc,
          vehicleType: state.vehicleType,
          vehicleBrand: state.vehicleBrand,
          vehicleModel: state.vehicleModel,
          vehicleTransmissionType: state.vehicleTransmissionType,
          vehicleBodyWork: state.vehicleBodyWork,
          vehicleFuelType: state.vehicleFuelType,
          yearFrom: state.yearFrom,
          yearTo: state.yearTo,
          priceFrom: state.priceFrom,
          priceTo: state.priceTo,
          mileageFrom: state.mileageFrom,
          mileageTo: state.mileageTo,
          numberOfAds: state.numberOfAds,
        );
      }
    );
  }
}