import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:auto_db/presentation/blocs/trader/leads/leads_bloc.dart';
import 'package:auto_db/presentation/widgets/trader/leads/lead_widget.dart';
import 'package:flutter/material.dart';

class LeadsListingWidget extends StatelessWidget {
  final List<LeadListingModel> leads;
  final Function(int) onSendAnEmailTapped;
  final Function(LeadContact) onViewLeadContact;

  const LeadsListingWidget({
    Key key, 
    @required this.leads,
    @required this.onSendAnEmailTapped,
    @required this.onViewLeadContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 1.5 * SizeConfig.heightMultiplier, 
        top: 1.5 * SizeConfig.heightMultiplier,
        right: 1.5 * SizeConfig.heightMultiplier,
        bottom: 2.2 * SizeConfig.heightMultiplier
      ),
      children: _getChildrens(context),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    leads.forEach((lead) {
      _childrens.add(
        LeadWidget(
          title: lead.title,
          period: lead.period,
          vehicle: lead.vehicle,
          year: lead.year,
          price: lead.price,
          transmission: lead.transmission,
          bodywork: lead.bodywork,
          fuel: lead.fuel,
          mileage: lead.mileage,
          leadContacts: lead.leadContacts,
          onSendAnEmailTapped: (){
            onSendAnEmailTapped(lead.id);
          },
          onViewSendMessageTapped: (leadContact){
            onViewLeadContact(leadContact);
          },
        )
      );
    });

    return _childrens;
  }
}