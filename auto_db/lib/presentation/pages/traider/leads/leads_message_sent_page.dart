import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class LeadsMessageSentPage extends StatefulWidget {
  final String subject;
  final String message;
  final String email;

  const LeadsMessageSentPage({
    Key key,
    @required this.subject,
    @required this.message,
    @required this.email,
  }) : super(key: key);

  @override
  _LeadsMessageSentPageState createState() => _LeadsMessageSentPageState();
}

class _LeadsMessageSentPageState extends State<LeadsMessageSentPage>
    with WillPopRouteObserver {
  @override
  void dispose() {
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    super.initState();
  }

  @override
  willPopRoute() async {
    Navigator.of(context).pop();
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
            title: StringConstants.messageSent.toUpperCase(),
            textAlign: TextAlign.start,
            style: StyleConstants.bigPageTitleTextStyle,
            haveBackButton: true,
            onTrailerTapped: () {
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                  left: 2.2 * SizeConfig.heightMultiplier,
                  top: 1.5 * SizeConfig.heightMultiplier,
                  right: 2.2 * SizeConfig.heightMultiplier,
                  bottom: 2.2 * SizeConfig.heightMultiplier),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.separatorSize),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.greyColor)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorConstants.lightGreyColor,
                          child: Text(
                            StringConstants.subject,
                            style: StyleConstants.popupMessageTextStyleBold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorConstants.backgroundColor,
                          child: Text(
                            widget.subject != null ? widget.subject : '',
                            style: StyleConstants.popupMessageTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.2 * SizeConfig.heightMultiplier),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.greyColor)),
                      child: Flex(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        direction: Axis.vertical,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            color: ColorConstants.lightGreyColor,
                            child: Text(
                              StringConstants.message,
                              style: StyleConstants.popupMessageTextStyleBold,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(2),
                              color: ColorConstants.backgroundColor,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical, //.horizontal
                                child: Text(
                                  widget.message != null ? widget.message : '',
                                  style: StyleConstants.popupMessageTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.2 * SizeConfig.heightMultiplier),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.greyColor)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorConstants.lightGreyColor,
                          child: Text(
                            StringConstants.sentOnBehalfOf,
                            style: StyleConstants.popupMessageTextStyleBold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          color: ColorConstants.backgroundColor,
                          child: Text(
                            widget.email != null ? widget.email : '',
                            style: StyleConstants.popupMessageTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.2 * SizeConfig.heightMultiplier),
                  ButtonWidget(text: StringConstants.ok, onPress: () {Navigator.of(context).pop();}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
