import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/value_objects/inventory_filter.dart';
import 'package:auto_db/presentation/blocs/public_user/public_user_search_resoults/public_user_search_resoults_bloc.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/pagination_error_widget.dart';
import 'package:auto_db/presentation/widgets/pagination_loader_widget.dart';
import 'package:auto_db/presentation/widgets/public_user/public_user_vehicle_ad_widget.dart';
import 'package:flutter/material.dart';

class PublicUserSearchResoultsWidget extends StatelessWidget {
  final InventoryFilter filter;
  final List<PublicSearchListingModel> ads;
  final Function(int) onAdTapped;
  final Function(AddVehicleLookup) onFilterValueChanged;
  final bool isRichedTheEnd;
  final bool isPaginationError;
  final ScrollController scrollController;
  final Function() onGetPageData;

  const PublicUserSearchResoultsWidget({
    Key key, 
    @required this.filter,
    @required this.ads, 
    @required this.onAdTapped, 
    @required this.onFilterValueChanged, 
    @required this.isRichedTheEnd, 
    @required this.isPaginationError, 
    @required this.scrollController, 
    @required this.onGetPageData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: ListView(
        padding: EdgeInsets.only(
          left: 1.5 * SizeConfig.heightMultiplier, 
          top: 1.5 * SizeConfig.heightMultiplier,
          right: 1.5 * SizeConfig.heightMultiplier,
          bottom: 2.2 * SizeConfig.heightMultiplier
        ),
        controller: scrollController,
        children: _getChildrens(context),
      ),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && scrollController.position.extentAfter == 0) {
      if(!isPaginationError){
        onGetPageData();
      }
    }

    return false;
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    _childrens.add(MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.sortBy,
      value: filter.value,
      isError: false,
      errorMessage: '',
      items: filter.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
          value: e,
          child: Text(
            e.name,
            style: StyleConstants.inputTextStyle,
          )
        );
      }).toList(), 
      onChanged: (value){
        onFilterValueChanged(value);
      },
    ));

    ads.forEach((ad) {
      _childrens.add(SizedBox(height: 1.5 * SizeConfig.heightMultiplier));

      _childrens.add(PublicUserVehicleAdWidget(
        title: ad.title,
        image: ad.image,
        price: ad.price,
        year: ad.year,
        mileage: ad.mileage,
        fuel: ad.fuel,
        engine: ad.engine,
        transmission: ad.transmission,
        power: ad.power,
        traderLogo: ad.traderLogo,
        accountType: ad.accountType,
        onTap: onAdTapped(ad.id),
      ));
    });

    if(!isRichedTheEnd){
      _childrens.add(isPaginationError ? PaginationErrorWidget(onTap: onGetPageData) : PaginationLoaderWidget());
    }

    return _childrens;
  }
}