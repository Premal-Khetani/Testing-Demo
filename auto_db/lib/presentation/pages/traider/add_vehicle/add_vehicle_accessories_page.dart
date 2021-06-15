import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/accessories/add_vehicle_accessories_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_accessories_form.dart';
import 'package:flutter/material.dart';

class AddVehicleAccessoriesPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const AddVehicleAccessoriesPage({
    Key key, 
    @required this.addVehicleResponse
  }) : super(key: key);
  
  @override
  _AddVehicleAccessoriesPageState createState() => _AddVehicleAccessoriesPageState();
}

class _AddVehicleAccessoriesPageState extends State<AddVehicleAccessoriesPage> with WillPopRouteObserver{
  AddVehicleAccessoriesBloc accessoriesBloc;
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    accessoriesBloc?.dispose();
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
    if(accessoriesBloc == null){
      accessoriesBloc = AddVehicleAccessoriesBloc(context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    await accessoriesBloc?.close();
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
    final List<Widget> actionWidgets = [
      GestureDetector(
        onTap: (){
          accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.saveTapped());
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1 * SizeConfig.heightMultiplier),
          child: Container(
            height: 4.25 * SizeConfig.imageSizeMultiplier,
            width: 4.25 * SizeConfig.imageSizeMultiplier,
            decoration: BoxDecoration(
              color: ColorConstants.whiteColor,
              borderRadius: BorderRadius.circular(2 * SizeConfig.imageSizeMultiplier)
            ),
            child: Icon(
              AddVehicleIcons.save,
              color: ColorConstants.blackColor,
              size: 2.75 * SizeConfig.imageSizeMultiplier,
            ),
          ),
        ),
      )
    ];

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
          title: StringConstants.accessories.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: true,
          onTrailerTapped: (){
            accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.closeTapped());
          },
          actionWidgets: actionWidgets,
        ),
        Expanded(
          flex: 1,
          child: _getDescriptionStateListener(buildContext)
        )
      ],
    );
  }

  Widget _getDescriptionStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: accessoriesBloc.accessoriesFormInitialState,
      stream: accessoriesBloc.outAccessoriesFormStateController,
      builder: (BuildContext context, AsyncSnapshot<AddVehicleAccessoriesState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              accessoriesBloc.addEvent(AddVehicleAccessoriesEvent.onRetryTapped());
            }
          );
        }

        return AddVehicleAccessoriesForm(
          accessoriesBloc: accessoriesBloc,
          scrollController: _scrollController,
          accessories: state.accessories,
          accessoryInput: state.accessoryInput,
          customAccessories: state.cusstomAccessories,
        );
      }
    );
  }
}