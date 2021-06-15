import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/blocs/trader/leads/leads_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/leads/leads_listing_widget.dart';
import 'package:auto_db/presentation/widgets/trader/leads/no_leads_widget.dart';
import 'package:flutter/material.dart';

class LeadsPage extends StatefulWidget {
  @override
  _LeadsPageState createState() => _LeadsPageState();
}

class _LeadsPageState extends State<LeadsPage> {
  LeadsBloc _leadsBloc;

  @override
  void dispose() {
    _leadsBloc?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if(_leadsBloc == null){
      _leadsBloc = LeadsBloc(context: context);
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
        NavigationWidget(
          title: StringConstants.leads.toUpperCase(), 
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle, 
          haveBackButton: false,
        ),
        Expanded(
          flex: 1,
          child: _getLeadsListener(buildContext)
        )
      ],
    );
  }

  Widget _getLeadsListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _leadsBloc.leadsInitialState,
      stream: _leadsBloc.outStateController,
      builder: (BuildContext context, AsyncSnapshot<LeadsState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        if(state.noInternetConnection){
          return NoInternetWidget(
            onRetryPressed: (){
              _leadsBloc.addEvent(LeadsEvent.onRetryTapped());
            }
          );
        }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              _leadsBloc.addEvent(LeadsEvent.onRetryTapped());
            }
          );
        }

        if(!(state.leads.length > 0)){
          return NoLeadsWidget(
            onToLeadFiltersTapped: (){
              _leadsBloc.addEvent(LeadsEvent.toLeadFiltersTapped());
            },
          );
        }

        return LeadsListingWidget(
          leads: state.leads,
          onSendAnEmailTapped: (leadId){
            _leadsBloc.addEvent(LeadsEvent.onSendAnEmailTapped(leadId));
          },
          onViewLeadContact: (leadContact){
            _leadsBloc.addEvent(LeadsEvent.onViewLeadContact(leadContact));
          },
        );
      }
    );
  }

}

