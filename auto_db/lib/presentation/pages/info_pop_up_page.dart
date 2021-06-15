import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class InfoPopUpPage extends StatefulWidget {
  final Widget content;

  const InfoPopUpPage({Key key, @required this.content}) : super(key: key);

  @override
  _InfoPopUpPageState createState() => _InfoPopUpPageState();
}

class _InfoPopUpPageState extends State<InfoPopUpPage>
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
    return Scaffold(
      backgroundColor: Colors.black87,
      body: _drawBody(context),
    );
  }

  Widget _drawBody(BuildContext buildContext) {
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: true,
          haveHelpButton: false,
        ),
        Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(buildContext).pop();
              },
              child:
                  Container(color: Colors.transparent, child: widget.content),
            ))
      ],
    );
  }
}