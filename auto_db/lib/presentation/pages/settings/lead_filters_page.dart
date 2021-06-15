import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/icons/vehicle_details_icons.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/more/lead_filters/lead_filters_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class LeadFiltersPage extends StatefulWidget {
  @override
  _LeadFiltersPageState createState() => _LeadFiltersPageState();
}

class _LeadFiltersPageState extends State<LeadFiltersPage> with WillPopRouteObserver{
  LeadFiltersBloc bloc;

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    bloc = LeadFiltersBloc();
    super.initState();
  }

  @override
  void dispose() {
    TabNavigator.instance.removeObserver(this);
    bloc?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    bloc.setContext(context);
    super.didChangeDependencies();
  }

  @override
  willPopRoute() async {
    bloc.addEvent(LeadFilterEvent.close());
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NotificationAreaWidget(
            topPadding: padding.top,
            haveHomeButton: true,
            haveHelpButton: true,
            onHelpTapped: () {},
          ),
          NavigationWidget(
            title: StringConstants.leadFilters.toUpperCase(),
            textAlign: TextAlign.start,
            style: StyleConstants.bigPageTitleTextStyle,
            //bottomPadding: 0.0,
            haveBackButton: true,
            trailerImageSource: VehicleDetailsIcons.add,
            onTrailerTapped: () {
              bloc.addEvent(LeadFilterEvent.add());
            },
          ),
          StreamBuilder<LeadFiltersState>(
              initialData: bloc.initialState,
              stream: bloc.outStateController,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state.isSubmitting) {
                  return Expanded(flex: 1, child: LoaderWidget());
                }
                if (state.noInternetConnection) {
                  return Expanded(
                      flex: 1,
                      child: NoInternetWidget(onRetryPressed: () {
                        bloc.addEvent(LeadFilterEvent.onRetryTapped());
                      }));
                }
                if (state.isError) {
                  return Expanded(
                      flex: 1,
                      child: MyErrorWidget(
                          massasge: state.errorMessage,
                          onRetryPressed: () {
                            bloc.addEvent(LeadFilterEvent.onRetryTapped());
                          }));
                }
                return Flexible(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: state.filters.length,
                    itemBuilder: (context, index) {
                      final filter = state.filters[index];
                      return LeadFilterListTileWidget(
                        isEven: index % 2 != 0,
                        model: filter.carModel != null &&
                                filter.carModel.name.isNotEmpty
                            ? filter.carModel.name
                            : StringConstants.everything,
                        brand:
                            filter.brand != null && filter.brand.name.isNotEmpty
                                ? filter.brand.name
                                : StringConstants.everything,
                        fuel: filter.fuelType != null &&
                                filter.fuelType.name.isNotEmpty
                            ? filter.fuelType.name
                            : StringConstants.everything,
                        vehicle: filter.vehicleType != null &&
                                filter.vehicleType.name.isNotEmpty
                            ? filter.vehicleType.name
                            : StringConstants.everything,
                        onDelete: () {
                          bloc.addEvent(LeadFilterEvent.delete(filter));
                        },
                        onEdit: () {
                          bloc.addEvent(LeadFilterEvent.update(filter));
                        },
                      );
                    },
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                  ),
                );
              }),
          Flexible(
            flex: 0,
            fit: FlexFit.loose,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 2.2 * SizeConfig.heightMultiplier,
                  top: 1.5 * SizeConfig.heightMultiplier,
                  right: 2.2 * SizeConfig.heightMultiplier,
                  bottom: 2.2 * SizeConfig.heightMultiplier),
              child: ButtonWidget(
                  text: StringConstants.goBack,
                  color: ColorConstants.blackColor,
                  onPress: () {
                    bloc.addEvent(LeadFilterEvent.close());
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class LeadFilterListTileWidget extends StatelessWidget {
  final bool isEven;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final String vehicle;
  final String brand;
  final String model;
  final String fuel;

  LeadFilterListTileWidget({
    Key key,
    @required this.isEven,
    @required this.vehicle,
    @required this.brand,
    @required this.model,
    @required this.fuel,
    @required this.onEdit,
    @required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: (2.2 * SizeConfig.heightMultiplier)),
      color: isEven
          ? ColorConstants.backgroundColor
          : ColorConstants.lightGreyColor,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(right: 2.2 * SizeConfig.heightMultiplier),
                child: InkWell(
                  onTap: onEdit,
                  child: Icon(
                    VehicleDetailsIcons.edit,
                    color: ColorConstants.blackColor,
                    size: 3.25 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ),
              SizedBox(
                height: 2.4 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 2.2 * SizeConfig.heightMultiplier),
                child: InkWell(
                  onTap: onDelete,
                  child: Icon(
                    AddVehicleIcons.delete,
                    color: ColorConstants.blackColor,
                    size: 3.25 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getTextSeparator(),
              Text(
                '${StringConstants.vehicle}: $vehicle',
                style: StyleConstants.detailsLabelTextStyle,
              ),
              _getTextSeparator(),
              Text(
                '${StringConstants.brand}: $brand',
                style: StyleConstants.detailsLabelTextStyle,
              ),
              _getTextSeparator(),
              Text(
                '${StringConstants.model}: $model',
                style: StyleConstants.detailsLabelTextStyle,
              ),
              _getTextSeparator(),
              Text(
                '${StringConstants.fuel}: $fuel',
                style: StyleConstants.detailsLabelTextStyle,
              ),
              _getTextSeparator(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getTextSeparator() {
    return SizedBox(
      height: 0.5 * SizeConfig.heightMultiplier,
    );
  }
}
