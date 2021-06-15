import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:auto_db/presentation/blocs/trader/stock/inventory/inventory_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/stock/inventory_empty_widget.dart';
import 'package:auto_db/presentation/widgets/trader/stock/inventory_widget.dart';
import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  final ScrollController _scrollController = ScrollController();
  InventoryBloc _inventoryBloc;

  @override
  void dispose() {
    _inventoryBloc?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if(_inventoryBloc == null){
      _inventoryBloc = InventoryBloc(context: context);
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
        Expanded(
          child: _getInventoryStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getInventoryStateListener(BuildContext buildContext){
     final List<Widget> actionWidgets = [
        GestureDetector(
          onTap: (){
            _inventoryBloc.addEvent(InventoryEvent.onSearchTapped());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1 * SizeConfig.heightMultiplier),
            child: Container(
              height: 4.20 * SizeConfig.imageSizeMultiplier,
              width: 4.20 * SizeConfig.imageSizeMultiplier,
              decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.circular(2.0 * SizeConfig.imageSizeMultiplier)
              ),
              child: Icon(
                VehicleDetailsIcons.search,
                color: ColorConstants.blackColor,
                size: 2.75 * SizeConfig.imageSizeMultiplier,
              ),
            ),
          ),
        ),
      ];

    return StreamBuilder(
      initialData: _inventoryBloc.inventoryInitialState,
      stream: _inventoryBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<InventoryState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.inventory.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: state.haveCarsInInventory,
                trailerImageSource: VehicleDetailsIcons.add,
                onTrailerTapped: state.haveCarsInInventory ? (){
                  _inventoryBloc.addEvent(InventoryEvent.onAddVehicleTapped());
                } : null,
                actionWidgets: state.haveCarsInInventory ? actionWidgets : [],
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
                title: StringConstants.inventory.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: state.haveCarsInInventory,
                trailerImageSource: VehicleDetailsIcons.add,
                onTrailerTapped: state.haveCarsInInventory ? (){
                  _inventoryBloc.addEvent(InventoryEvent.onAddVehicleTapped());
                } : null,
                actionWidgets: state.haveCarsInInventory ? actionWidgets : [],
              ),
              Expanded(
                flex: 1, 
                child: NoInternetWidget(
                  onRetryPressed: (){
                    _inventoryBloc.addEvent(InventoryEvent.onRetryTapped());
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
                title: StringConstants.inventory.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: state.haveCarsInInventory,
                trailerImageSource: VehicleDetailsIcons.add,
                onTrailerTapped: state.haveCarsInInventory ? (){
                  _inventoryBloc.addEvent(InventoryEvent.onAddVehicleTapped());
                } : null,
                actionWidgets: state.haveCarsInInventory ? actionWidgets : [],
              ),
              Expanded(
                flex: 1, 
                child: MyErrorWidget(
                  massasge: state.errorMessage, 
                  onRetryPressed: (){
                    _inventoryBloc.addEvent(InventoryEvent.onRetryTapped());
                  }
                )
              )
            ],
          );
        }

        if(!state.haveCarsInInventory){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.inventory.toUpperCase(), 
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle, 
                haveBackButton: false,
              ),
              Expanded(
                flex: 1, 
                child: InventoryEmptyWidget(
                  onAddVehicleTapped: (){
                    _inventoryBloc.addEvent(InventoryEvent.onAddVehicleTapped());
                  }
                )
              )
            ],
          ); 
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationWidget(
              title: StringConstants.inventory.toUpperCase(), 
              textAlign: TextAlign.start,
              style: StyleConstants.bigPageTitleTextStyle, 
              haveBackButton: true,
              trailerImageSource: VehicleDetailsIcons.add,
              onTrailerTapped:(){
                _inventoryBloc.addEvent(InventoryEvent.onAddVehicleTapped());
              },
              actionWidgets: actionWidgets,
            ),
            Expanded(
              flex: 1, 
              child: InventoryWidget(
                numberOfVehicles: state.numberOfVehicles,
                filter: state.inventoryFilter,
                vehicleBrand: state.vehicleBrand, 
                ads: state.ads,
                isPaginationError: state.isPaginationError, 
                onAdTapped: (vehicleId){
                  _inventoryBloc.addEvent(InventoryEvent.onAdTapped(vehicleId: vehicleId));
                },
                onFilterValueChanged: (value){
                  _inventoryBloc.addEvent(InventoryEvent.onFilterValueChanged(value: value));
                },
                isRichedTheEnd: state.isRichedTheEnd,
                scrollController: _scrollController,
                onGetPageData: (){
                  _inventoryBloc.addEvent(InventoryEvent.getPageData());
                },
              )
            )
          ],
        );
      }
    );
  }
}