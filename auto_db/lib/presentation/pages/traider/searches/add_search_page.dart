import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/searches/add_search/add_search_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/searches/add_search_form.dart';
import 'package:flutter/material.dart';

class AddSearchPage extends StatefulWidget {
  final Search search;

  const AddSearchPage({
    Key key, 
    @required this.search
  }) : super(key: key);
  
  @override
  _AddSearchPageState createState() => _AddSearchPageState();
}

class _AddSearchPageState extends State<AddSearchPage> with WillPopRouteObserver {
  AddSearchBloc _addSearchBloc;

  @override
  void dispose() {
    _addSearchBloc?.dispose();
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
    if(_addSearchBloc == null){
      _addSearchBloc = AddSearchBloc(context: context, search: widget.search);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    _addSearchBloc.addEvent(AddSearchEvent.closeTapped());
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
          title: StringConstants.search.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            _addSearchBloc.addEvent(AddSearchEvent.closeTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getAddSearchListener(buildContext)
        )
      ],
    );
  }

  Widget _getAddSearchListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _addSearchBloc.addSearchInitialState,
      stream: _addSearchBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<AddSearchState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              _addSearchBloc.addEvent(AddSearchEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              _addSearchBloc.addEvent(AddSearchEvent.onRetryTapped());
            }
          );
        }

        return AddSearchForm(
          addSearchBloc: _addSearchBloc,
          vehicleType: state.vehicleType,
          dateFrom: state.dateFrom,
          dateTo: state.dateTo,
          searchName: state.searchName,
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
          isEdit: state.isEdit,
        );
      }
    );
  }
}