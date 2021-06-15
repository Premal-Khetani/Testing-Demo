import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/price/add_vehicle_price_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_price_form.dart';
import 'package:flutter/material.dart';

class AddVehiclePricePage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const AddVehiclePricePage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);

  @override
  _AddVehiclePricePageState createState() => _AddVehiclePricePageState();
}

class _AddVehiclePricePageState extends State<AddVehiclePricePage> with WillPopRouteObserver{
  AddVehiclePriceBloc priceBloc;

  @override
  void dispose() {
    priceBloc?.dispose();
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
    if(priceBloc == null){
      priceBloc = AddVehiclePriceBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    await priceBloc?.close();
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
          title: StringConstants.price.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            priceBloc.addEvent(AddVehiclePriceEvent.close());
          },
        ),
        Expanded(
          flex: 1,
          child: _getPriceStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getPriceStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: priceBloc.priceFormInitialState,
      stream: priceBloc.outPriceFormStateController,
      builder: (BuildContext context, AsyncSnapshot<AddVehiclePriceState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              priceBloc.addEvent(AddVehiclePriceEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              priceBloc.addEvent(AddVehiclePriceEvent.onRetryTapped());
            }
          );
        }

        return AddVehiclePriceForm(
          priceBloc: priceBloc,
          priceType: state.priceType,
          price: state.price,
          isPriceEnabled: state.isPriceEnabled,
          bpm: state.bpm,
          isBpmEnabled: state.isBpmEnabled,
          vat: state.vat,
          isVatEnabled: state.isVatEnabled,
          tradingPrice: state.tradingPrice,
          isTradingPriceEnabled: state.isTradingPriceEnabled,
          exportPrice: state.exportPrice,
          isExportPriceEnabled: state.isExportPriceEnabled,
        );
      }
    );
  }
}