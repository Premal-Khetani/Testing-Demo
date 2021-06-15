import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/presentation/blocs/trader/searches/searches_bloc.dart';
import 'package:auto_db/presentation/widgets/trader/searches/search_widget.dart';
import 'package:flutter/material.dart';

class SearchesWidget extends StatelessWidget {
  final List<SearchListingModel> searches;
  final Function(SearchListingModel search) onEditTapped;
  final Function(SearchListingModel search) odDeleteTapped;

  const SearchesWidget({
    Key key, 
    @required this.searches, 
    @required this.onEditTapped, 
    @required this.odDeleteTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 1.5 * SizeConfig.heightMultiplier, 
        top: 1.5 * SizeConfig.heightMultiplier,
        right: 1.5 * SizeConfig.heightMultiplier,
        bottom: 2.2 * SizeConfig.heightMultiplier
      ),
      children: _getChildrens(context),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    searches.forEach((search) {
      _childrens.add(
        SearchWidget(
          title: search.title,
          searchName: search.searchName,
          period: search.period,
          vehicle: search.vehicle,
          year: search.year,
          price: search.price,
          transmission: search.transmission,
          bodywork: search.bodywork,
          fuel: search.fuel,
          mileage: search.mileage,
          onEditTapped: (){
            onEditTapped(search);
          },
          onDeleteTapped: (){
            odDeleteTapped(search);
          }
        )
      );
    });

    return _childrens;
  }
}