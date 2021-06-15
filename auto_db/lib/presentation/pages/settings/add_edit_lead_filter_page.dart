import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/navigation/trader/trader_more_route_generator.dart';
import 'package:auto_db/presentation/blocs/more/lead_filters/add_edit_lead_filters/add_edit_lead_filter_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class AddEditLeadFilterPage extends StatefulWidget {
  final AddEditLeadFilterRuteArgs routeArgs;
  const AddEditLeadFilterPage({Key key, @required this.routeArgs})
      : super(key: key);

  @override
  _AddEditLeadFilterPageState createState() => _AddEditLeadFilterPageState();
}

class _AddEditLeadFilterPageState extends State<AddEditLeadFilterPage>
    with WillPopRouteObserver {
  AddEditLeadFilterBloc bloc;

  @override
  void dispose() {
    bloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    bloc = AddEditLeadFilterBloc(widget.routeArgs);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    bloc.setContext(context);
    super.didChangeDependencies();
  }

  @override
  willPopRoute() async {
    bloc.addEvent(AddEditLeadFilterEvent.close());
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
            haveBackButton: true,
            onTrailerTapped: () {
              bloc.addEvent(AddEditLeadFilterEvent.close());
            },
            actionWidgets: [
              GestureDetector(
                onTap: () {
                  bloc.addEvent(AddEditLeadFilterEvent.save());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 1 * SizeConfig.heightMultiplier),
                  child: Container(
                    height: 4.25 * SizeConfig.imageSizeMultiplier,
                    width: 4.25 * SizeConfig.imageSizeMultiplier,
                    decoration: BoxDecoration(
                        color: ColorConstants.whiteColor,
                        borderRadius: BorderRadius.circular(
                            2 * SizeConfig.imageSizeMultiplier)),
                    child: Icon(
                      AddVehicleIcons.save,
                      color: ColorConstants.blackColor,
                      size: 2.75 * SizeConfig.imageSizeMultiplier,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 1,
            child: StreamBuilder(
                initialData: bloc.initialState,
                stream: bloc.outStateController,
                builder: (BuildContext context,
                    AsyncSnapshot<AddEditLeadFilterState> snapshot) {
                  final state = snapshot.data;

                  if (state.isSubmitting) {
                    return LoaderWidget();
                  }

                  if (state.noInternetConnection) {
                    return NoInternetWidget(onRetryPressed: () {
                      bloc.addEvent(AddEditLeadFilterEvent.onRetryTapped());
                    });
                  }

                  if (state.isError) {
                    return MyErrorWidget(
                        massasge: state.errorMessage,
                        onRetryPressed: () {
                          bloc.addEvent(AddEditLeadFilterEvent.onRetryTapped());
                        });
                  }

                  return AddEditLeadFilterForm(
                    isEdit: widget.routeArgs.isEdit,
                    vehicleType: state.vehicleType,
                    vehicleBrand: state.vehicleBrand,
                    vehicleModel: state.vehicleModel,
                    vehicleFuelType: state.vehicleFuelType,
                    onVehicleTypeChanged: (value) {
                      bloc.addEvent(
                        AddEditLeadFilterEvent.vehicleTypeChanged(value: value),
                      );
                    },
                    onVehicleBrandChanged: (value) {
                      bloc.addEvent(
                        AddEditLeadFilterEvent.vehicleBrandChanged(
                            value: value),
                      );
                    },
                    onVehicleModelChanged: (value) {
                      bloc.addEvent(
                        AddEditLeadFilterEvent.vehicleModelChanged(
                            value: value),
                      );
                    },
                    onVehicleFuelTypeChanged: (value) {
                      bloc.addEvent(
                        AddEditLeadFilterEvent.vehicleFuelTypeChanged(
                            value: value),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class AddEditLeadFilterForm extends StatefulWidget {
  final bool isEdit;
  final VehicleType vehicleType;
  final VehicleBrand vehicleBrand;
  final VehicleModel vehicleModel;
  final VehicleFuelType vehicleFuelType;
  final Function(AddVehicleLookup value) onVehicleTypeChanged;
  final Function(AddVehicleLookup value) onVehicleBrandChanged;
  final Function(AddVehicleLookup value) onVehicleModelChanged;
  final Function(AddVehicleLookup value) onVehicleFuelTypeChanged;

  const AddEditLeadFilterForm({
    Key key,
    @required this.isEdit,
    @required this.vehicleType,
    @required this.vehicleBrand,
    @required this.vehicleModel,
    @required this.vehicleFuelType,
    @required this.onVehicleBrandChanged,
    @required this.onVehicleFuelTypeChanged,
    @required this.onVehicleModelChanged,
    @required this.onVehicleTypeChanged,
  }) : super(key: key);

  @override
  _AddEditLeadFilterFormState createState() => _AddEditLeadFilterFormState();
}

class _AddEditLeadFilterFormState extends State<AddEditLeadFilterForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _vehicleTypeFocusNode = FocusNode();
  FocusNode _vehicleBrandFocusNode = FocusNode();
  FocusNode _vehicleModelFocusNode = FocusNode();
  FocusNode _vehicleFuelTypeFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      child: LayoutBuilder(
        builder: (buildContext, constraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              padding: EdgeInsets.only(
                  left: 2.2 * SizeConfig.heightMultiplier,
                  top: 1.5 * SizeConfig.heightMultiplier,
                  right: 2.2 * SizeConfig.heightMultiplier,
                  bottom: 2.2 * SizeConfig.heightMultiplier),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: _getFormChildren(context),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _getFormChildren(BuildContext buildContext) {
    List<Widget> _children = List<Widget>();
    if (widget.isEdit) {
      _children.add(Text(
        "Edit filter",
        style: StyleConstants.searchVehicleTypeTextStyle,
      ));
    } else {
      _children.add(Text(
        "Add filter",
        style: StyleConstants.searchVehicleTypeTextStyle,
      ));
    }
    _children.add(SizedBox(height: 1.5 * SizeConfig.heightMultiplier));
    _children.add(_getVehicleTypeDropdown(buildContext));
    _children.add(_getSeparator(buildContext));
    _children.add(_getVehicleBrandDropdown(buildContext));
    _children.add(_getSeparator(buildContext));
    _children.add(_getVehicleModelDropdown(buildContext));
    _children.add(_getSeparator(buildContext));
    _children.add(_getVehicleFuelTypeDropdown(buildContext));
    _children.add(_getSeparator(buildContext));

    return _children;
  }

  Widget _getSeparator(BuildContext buildContext) {
    return SizedBox(height: SizeConfig.separatorSize);
  }

  Widget _getVehicleTypeDropdown(BuildContext buildContext) {
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.vehicle,
      value: widget.vehicleType.value,
      focusNode: _vehicleTypeFocusNode,
      isError: widget.vehicleType.isError,
      errorMessage: widget.vehicleType.errorMessage,
      items: widget.vehicleType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
            value: e,
            child: Text(
              e.name,
              style: StyleConstants.inputTextStyle,
            ));
      }).toList(),
      onChanged: (value) {
        FocusScope.of(buildContext).requestFocus(_vehicleBrandFocusNode);
        widget.onVehicleTypeChanged(value);
        //widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleTypeChanged(value: value));
      },
      isDisabled: widget.vehicleType.isDisabled,
    );
  }

  Widget _getVehicleBrandDropdown(BuildContext buildContext) {
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.brand,
      value: widget.vehicleBrand.value,
      focusNode: _vehicleBrandFocusNode,
      isError: widget.vehicleBrand.isError,
      errorMessage: widget.vehicleBrand.errorMessage,
      items: widget.vehicleBrand.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
            value: e,
            child: Text(
              e.name,
              style: StyleConstants.inputTextStyle,
            ));
      }).toList(),
      onChanged: (value) {
        FocusScope.of(buildContext).requestFocus(_vehicleModelFocusNode);
        widget.onVehicleBrandChanged(value);
        //widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleBrandChanged(value: value));
      },
      isDisabled: widget.vehicleBrand.isDisabled,
    );
  }

  Widget _getVehicleModelDropdown(BuildContext buildContext) {
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.model,
      value: widget.vehicleModel.value,
      focusNode: _vehicleModelFocusNode,
      isError: widget.vehicleModel.isError,
      errorMessage: widget.vehicleModel.errorMessage,
      items: widget.vehicleModel.options == null
          ? null
          : widget.vehicleModel.options.map((e) {
              return DropdownMenuItem<AddVehicleLookup>(
                  value: e,
                  child: Text(
                    e.name,
                    style: StyleConstants.inputTextStyle,
                  ));
            }).toList(),
      onChanged: (value) {
        FocusScope.of(buildContext).requestFocus(_vehicleFuelTypeFocusNode);
        widget.onVehicleModelChanged(value);
        //widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleModelChanged(value: value));
      },
      isDisabled: widget.vehicleModel.isDisabled,
    );
  }

  Widget _getVehicleFuelTypeDropdown(BuildContext buildContext) {
    return MyDropdownWidget<AddVehicleLookup>(
      hint: StringConstants.fuel,
      value: widget.vehicleFuelType.value,
      focusNode: _vehicleFuelTypeFocusNode,
      isError: widget.vehicleFuelType.isError,
      errorMessage: widget.vehicleFuelType.errorMessage,
      items: widget.vehicleFuelType.options.map((e) {
        return DropdownMenuItem<AddVehicleLookup>(
            value: e,
            child: Text(
              e.name,
              style: StyleConstants.inputTextStyle,
            ));
      }).toList(),
      onChanged: (value) {
        FocusScope.of(buildContext).requestFocus(_backgroundFocusNode);
        widget.onVehicleFuelTypeChanged(value);
        //widget.specificationsBloc.addEvent(AddVehicleSpecificationsEvent.vehicleFuelTypeChanged(value: value));
      },
      isDisabled: widget.vehicleFuelType.isDisabled,
    );
  }
}
