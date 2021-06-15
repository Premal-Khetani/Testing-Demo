import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:auto_db/presentation/blocs/trader/searches/searches_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/searches/no_searches_widget.dart';
import 'package:auto_db/presentation/widgets/trader/searches/searches_widget.dart';
import 'package:flutter/material.dart';

class SearchesPage extends StatefulWidget {
  @override
  _SearchesPageState createState() => _SearchesPageState();
}

class _SearchesPageState extends State<SearchesPage> {
  SearchesBloc _searchesBloc;

  @override
  void dispose() {
    _searchesBloc?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if(_searchesBloc == null){
      _searchesBloc = SearchesBloc(context: context);
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
            _searchesBloc.addEvent(SearchesEvent.onHelpButtonTapped());
          },
        ),
        Expanded(
          flex: 1,
          child: _getSearchesStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getSearchesStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _searchesBloc.searchesInitialState,
      stream: _searchesBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<SearchesState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.searches.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: state.searches.length > 0,
                trailerImageSource: VehicleDetailsIcons.add,
                onTrailerTapped: state.searches.length > 0 ? (){
                  _searchesBloc.addEvent(SearchesEvent.onNewSearchTapped());
                } : null,
              ),
              Expanded(
                flex: 1, 
                child: LoaderWidget()
              )
            ],
          ); 
        }

        if(state.noInternetConnection){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.searches.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: state.searches.length > 0,
                trailerImageSource: VehicleDetailsIcons.add,
                onTrailerTapped: state.searches.length > 0 ? (){
                  _searchesBloc.addEvent(SearchesEvent.onNewSearchTapped());
                } : null,
              ),
              Expanded(
                flex: 1, 
                child: NoInternetWidget(
                  onRetryPressed: (){
                    _searchesBloc.addEvent(SearchesEvent.onRetryTapped());
                  }
                )
              )
            ],
          ); 
        }

        if(state.isError){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.searches.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: state.searches.length > 0,
                trailerImageSource: VehicleDetailsIcons.add,
                onTrailerTapped: state.searches.length > 0 ? (){
                  _searchesBloc.addEvent(SearchesEvent.onNewSearchTapped());
                } : null,
              ),
              Expanded(
                flex: 1, 
                child: MyErrorWidget(
                  massasge: state.errorMessage, 
                  onRetryPressed: (){
                    _searchesBloc.addEvent(SearchesEvent.onRetryTapped());
                  }
                )
              )
            ],
          );
        }

        if(!(state.searches.length > 0)){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.searches.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: false,
              ),
              Expanded(
                flex: 1, 
                child: NoSearchesWidget(
                  onPostSearchesTapped: (){
                    _searchesBloc.addEvent(SearchesEvent.onNewSearchTapped());
                  },
                )
              )
            ],
          ); 
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationWidget(
              title: StringConstants.searches.toUpperCase(), 
              textAlign: TextAlign.start,
              style: StyleConstants.bigPageTitleTextStyle, 
              haveBackButton: true,
              trailerImageSource: VehicleDetailsIcons.add,
              onTrailerTapped:(){
                _searchesBloc.addEvent(SearchesEvent.onNewSearchTapped());
              },
            ),
            Expanded(
              flex: 1, 
              child: SearchesWidget(
                searches: state.searches,
                onEditTapped: (search){
                  _searchesBloc.addEvent(SearchesEvent.onEditSearchTapped(search: search));
                },
                odDeleteTapped: (search){
                  _searchesBloc.addEvent(SearchesEvent.onDeleteSearchTapped(search: search));
                },
              )
            )
          ],
        );
      }
    );
  }
}