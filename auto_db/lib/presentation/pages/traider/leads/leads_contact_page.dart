import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/mail/leads_contact_bloc.dart';
import 'package:auto_db/presentation/blocs/mail/mail_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/mail_form.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:flutter/material.dart';

class LeadsContactPage extends StatefulWidget {
  final int traderSearchId;
  final String subject;

  const LeadsContactPage({
    Key key,
    @required this.traderSearchId,
    @required this.subject
  }) : super(key: key);

  @override
  _LeadsContactPageState createState() => _LeadsContactPageState();
}

class _LeadsContactPageState extends State<LeadsContactPage>
    with WillPopRouteObserver {
  LeadsContactBloc bloc;

  @override
  void dispose() {
    bloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    bloc = LeadsContactBloc(widget.traderSearchId, widget.subject);
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
    bloc?.addEvent(MailEvent.onBack());
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
            onHelpTapped: () {
              bloc.addEvent(MailEvent.onHelpButtonTapped());
            },
          ),
          NavigationWidget(
            title: StringConstants.leadsContactTitle.toUpperCase(),
            textAlign: TextAlign.start,
            style: StyleConstants.bigPageTitleTextStyle,
            haveBackButton: true,
            onTrailerTapped: () {
              bloc.addEvent(MailEvent.onBack());
            },
          ),
          Expanded(
            flex: 1,
            child: StreamBuilder<MailState>(
                initialData: bloc.initialState,
                stream: bloc.outStateController,
                builder: (context, snapshot) {
                  final state = snapshot.data;

                  if (state.isSubmitting) {
                    return LoaderWidget();
                  }

                  return MailForm(
                    subject: state.subject,
                    question: state.question,
                    fullName: state.fullName,
                    email: state.email,
                    onSubjectChanged: (value) {
                      bloc.addEvent(MailEvent.onSubjectChange(value: value));
                    },
                    onQuestionChanged: (value) {
                      bloc.addEvent(MailEvent.onQuestionChange(value: value));
                    },
                    onNameChanged: (value) {
                      bloc.addEvent(MailEvent.onFullNameChange(value: value));
                    },
                    onEmailChanged: (value) {
                      bloc.addEvent(MailEvent.onEmailChange(value: value));
                    },
                    onSend: () {
                      bloc.addEvent(MailEvent.onSend());
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
