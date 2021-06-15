import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/inventory/inventory_ad.dart';
import 'package:auto_db/domain/value_objects/inventory_filter.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/network_image.dart';
import 'package:auto_db/presentation/widgets/pagination_error_widget.dart';
import 'package:auto_db/presentation/widgets/pagination_loader_widget.dart';
import 'package:auto_db/presentation/widgets/trader/stock/inventory_ad_widget.dart';
import 'package:flutter/material.dart';

class InventoryWidget extends StatelessWidget{
  final int numberOfVehicles;
  final InventoryFilter filter;
  final String vehicleBrand;
  final List<InventoryAd> ads;
  final Function(int) onAdTapped;
  final Function(AddVehicleLookup) onFilterValueChanged;
  final bool isRichedTheEnd;
  final bool isPaginationError;
  final ScrollController scrollController;
  final Function() onGetPageData;

  const InventoryWidget({
    Key key,
    @required this.numberOfVehicles,
    @required this.filter, 
    @required this.vehicleBrand,
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

    _childrens.add(SizedBox(height: 1.5 * SizeConfig.heightMultiplier));

    _childrens.add(_getResoultsNumberWidget(buildContext));

    _childrens.add(SizedBox(height: 1.5 * SizeConfig.heightMultiplier));

    for(int i = 0;  i < ads.length; i+=2){
      final firstAd = ads[i];
      InventoryAd secoundAd;
      if(ads.last.id != firstAd.id){
        secoundAd = ads[i + 1];
      }

      _childrens.add(Row(
        children: [
          Expanded(
            flex: 1,
            child: InventoryAdWidget(
              licensePlate: firstAd.licensePlate,
              stockNumber: firstAd.stockNumber,
              price: _getPrice(firstAd),
              isReserved: firstAd.reserved,
              photo: MyNetworkImage(
                url: firstAd.photo
              ),
              onTap: (){
                onAdTapped(firstAd.id);
              },
            ),
          ),
          SizedBox(width: 0.4 * SizeConfig.heightMultiplier),
          Expanded(
            flex: 1,
            child: secoundAd != null ? InventoryAdWidget(
              licensePlate: secoundAd.licensePlate,
              stockNumber: secoundAd.stockNumber,
              isReserved: secoundAd.reserved,
              price: _getPrice(secoundAd),
              photo: MyNetworkImage(
                url: secoundAd.photo
              ),
              onTap: (){
                onAdTapped(secoundAd.id);
              },
            ) : Container(),
          ),
        ],
      ));

      _childrens.add(SizedBox(height: 0.4 * SizeConfig.heightMultiplier));
    }

    if(!isRichedTheEnd){
      _childrens.add(isPaginationError ? PaginationErrorWidget(onTap: onGetPageData) : PaginationLoaderWidget());
    }

    return _childrens;
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && scrollController.position.extentAfter == 0) {
      if(!isPaginationError){
        onGetPageData();
      }
    }

    return false;
  }

  String _getPrice(InventoryAd ad){
    if(ad.priceType != null){
      if(ad.priceType.name == 'Asking price'){
        if(ad.price != null){
          return PriceUtils.formatPriceFromApi(ad.price);
        }
      } else {
        return ad.priceType.name;
      }
    }

    return '';
  }

  Widget _getResoultsNumberWidget(BuildContext buildContext){
    List<InlineSpan> _childrens = List<InlineSpan>();
    if(vehicleBrand != null && vehicleBrand.isNotEmpty){
      _childrens.add(TextSpan(
        text: vehicleBrand + ' ',
        style: StyleConstants.detailsLabelTextStyleBold
      ));
    }

    _childrens.add(TextSpan(
      text: '(' + numberOfVehicles.toString() + ' ' + StringConstants.results + ')',
      style: StyleConstants.detailsLabelTextStyle
    ));

    return Text.rich(
      TextSpan(
        children: _childrens
      ),
      textAlign: TextAlign.start
    );
  }
}