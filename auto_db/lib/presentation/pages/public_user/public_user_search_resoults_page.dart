import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/public_user/public_user_search_resoults_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_db/presentation/blocs/public_user/public_user_search_resoults/public_user_search_resoults_bloc.dart';

class PublicUserSearchResoultsPage extends StatefulWidget {
  final String title;
  final VehicleSearchModel vehicleSearchModel;

  const PublicUserSearchResoultsPage({
    Key key, 
    @required this.title,
    @required this.vehicleSearchModel
  }) : super(key: key);

  @override
  _PublicUserSearchResoultsPageState createState() => _PublicUserSearchResoultsPageState();
}

class _PublicUserSearchResoultsPageState extends State<PublicUserSearchResoultsPage> with WillPopRouteObserver {
  final ScrollController _scrollController = ScrollController();
  PublicUserSearchResoultsBloc _searchResoultsBloc;

  @override
  void dispose() {
    _searchResoultsBloc?.dispose();
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
    if(_searchResoultsBloc == null){
      _searchResoultsBloc = PublicUserSearchResoultsBloc(context: context, vehicleSearchModel: widget.vehicleSearchModel);
    }
    super.didChangeDependencies();
  }

  @override
  willPopRoute() async{
    _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.onCloseTapped());
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
          haveHomeButton: false,
          haveHelpButton: true,
          onHelpTapped: (){

          },
        ),
        NavigationWidget(
          title: widget.title, 
          textAlign: TextAlign.start,
          style: StyleConstants.pageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.onCloseTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getListener(buildContext)
        )
      ],
    );
  }

  Widget _getListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _searchResoultsBloc.initialState,
      stream: _searchResoultsBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<PublicUserSearchResoultsState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.onRetryTapped());
            }
          );
        }

        return PublicUserSearchResoultsWidget(
          filter: state.inventoryFilter,
          ads: state.ads, 
          isPaginationError: state.isPaginationError, 
          isRichedTheEnd: state.isRichedTheEnd, 
          onAdTapped: (vehicleId ) {
            _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.onAdTapped(vehicleId: vehicleId));
          }, 
          onFilterValueChanged: (value) {
            _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.onFilterValueChanged(value: value));
          }, 
          onGetPageData: () {
            _searchResoultsBloc.addEvent(PublicUserSearchResoultsEvent.getPageData());
          }, 
          scrollController: _scrollController,
        );
      }
    );
  }
}