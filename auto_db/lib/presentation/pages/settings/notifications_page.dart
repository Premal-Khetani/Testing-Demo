
import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/more/notifications/notifications_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/accessories_switch_widget.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage>
    with WillPopRouteObserver {
  NotificationsBloc bloc;

  @override
  void dispose() {
    bloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    bloc = NotificationsBloc();
    TabNavigator.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    bloc.setContext(context);
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async {
    await bloc?.close();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NotificationAreaWidget(
            topPadding: padding.top,
            haveHomeButton: true,
            haveHelpButton: true,
            onHelpTapped: () {},
          ),
          NavigationWidget(
            title: StringConstants.notifications.toUpperCase(),
            textAlign: TextAlign.start,
            style: StyleConstants.bigPageTitleTextStyle,
            haveBackButton: true,
            onTrailerTapped: () {
              bloc.addEvent(NotificationsEvent.onClose());
            },
            actionWidgets: [
              GestureDetector(
                onTap: () {
                  bloc.addEvent(NotificationsEvent.onSave());
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
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: 2.2 * SizeConfig.heightMultiplier,
                    top: 1.5 * SizeConfig.heightMultiplier,
                    right: 2.2 * SizeConfig.heightMultiplier,
                    bottom: 2.2 * SizeConfig.heightMultiplier),
                child: StreamBuilder<NotificationsState>(
                    initialData: bloc.initialState,
                    stream: bloc.outStateController,
                    builder: (context, snapshot) {
                      final state = snapshot.data;
                      if (state.isSubmitting) {
                        return LoaderWidget();
                      }

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            StringConstants.howToBeInformed,
                            style: StyleConstants.detailsLabelTextStyle,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
                          Text(
                            StringConstants.receiveNotifications,
                            style: StyleConstants.accessoriesCategoryTextStyle,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          AccessoriesSwitchWidget(
                              value: state.entity.email,
                              name: StringConstants.email,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.Email,
                                        value: value));
                              }),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          AccessoriesSwitchWidget(
                              value: state.entity.smartphone,
                              name: StringConstants.smartPhone,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.SmartPhone,
                                        value: value));
                              }),
                          SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
                          Text(
                            StringConstants.typeOfNotifications,
                            style: StyleConstants.accessoriesCategoryTextStyle,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          /*AccessoriesSwitchWidget(
                              value: state.entity.everything,
                              name: StringConstants.everything,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.Everything,
                                        value: value));
                              }),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),*/
                          AccessoriesSwitchWidget(
                              value: state.entity.adPlaced,
                              name: StringConstants.adPosted,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.AdPosted,
                                        value: value));
                              }),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          AccessoriesSwitchWidget(
                              value: state.entity.reactionPotentialBuyer,
                              name: StringConstants.reactionFromPotentialBuyer,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType: NotificationsType
                                            .ReactionPotentialByer,
                                        value: value));
                              }),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          AccessoriesSwitchWidget(
                              value: state.entity.searchPosted,
                              name: StringConstants.searchPosted,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.SearchPosted,
                                        value: value));
                              }),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          AccessoriesSwitchWidget(
                              value: state.entity.leadReceived,
                              name: StringConstants.leadReceived,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.LeadReceived,
                                        value: value));
                              }),
                          SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          AccessoriesSwitchWidget(
                              value: state.entity.inventoryShareRequestReceived,
                              name: StringConstants.inventoryShare,
                              onChanged: (value) {
                                bloc.addEvent(
                                    NotificationsEvent.onNotificationChange(
                                        notificationsType:
                                            NotificationsType.InventoryShareRequestReceived,
                                        value: value));
                              }),
                          /*SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
                          ButtonWidget(
                              text: StringConstants.saveNotifications,
                              onPress: () {
                                bloc.addEvent(NotificationsEvent.onSave());
                              }),
                          //SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                          ButtonWidget(
                              text: StringConstants.goBack,
                              color: ColorConstants.blackColor,
                              onPress: () {
                                bloc.addEvent(NotificationsEvent.onClose());
                              }),*/
                        ],
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
