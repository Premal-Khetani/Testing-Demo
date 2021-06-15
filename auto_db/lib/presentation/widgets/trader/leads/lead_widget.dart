import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/trader/leads/lead_contact_widget.dart';
import 'package:flutter/material.dart';

class LeadWidget extends StatelessWidget {
  final String title;
  final String period;
  final String vehicle;
  final String year;
  final String price;
  final String transmission;
  final String bodywork;
  final String fuel;
  final String mileage;
  final List<LeadContact> leadContacts;
  final VoidCallback onSendAnEmailTapped;
  final Function(LeadContact) onViewSendMessageTapped;

  const LeadWidget({
    Key key,
    @required this.title,
    @required this.period,
    @required this.vehicle,
    @required this.year,
    @required this.price,
    @required this.transmission,
    @required this.bodywork,
    @required this.fuel,
    @required this.mileage,
    @required this.leadContacts,
    @required this.onSendAnEmailTapped,
    @required this.onViewSendMessageTapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _getDetails(context)
    );
  }

  List<Widget> _getDetails(BuildContext buildContext){
    List<Widget> _details = List<Widget>();

    _details.add(Text(
      title,
      style: StyleConstants.leadTitleTextStyle,
    ),);

    _details.add(SizedBox(
      height: SizeConfig.heightMultiplier * 2,
    ));

    _details.add( Text(
      StringConstants.searchPeriod + ': ' + period,
      style: StyleConstants.detailsLabelTextStyleBold,
    ),);

    if(vehicle != null){
      _details.add(_getSeparator(buildContext));
      
      _details.add( Text(
        StringConstants.vehicle + ': ' + vehicle,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(year != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.yearBuild + ': ' + year,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(price != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.price + ': ' + price,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(fuel != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.fuel + ': ' + fuel,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(mileage != null){
      _details.add(_getSeparator(buildContext));
      
      _details.add(Text(
        StringConstants.mileage + ': ' + mileage,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(transmission != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.transmission + ': ' + transmission,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(bodywork != null){
      _details.add(_getSeparator(buildContext));

      _details.add(Text(
        StringConstants.bodywork + ': ' + bodywork,
        style: StyleConstants.detailsLabelTextStyle,
      ),);
    }

    if(leadContacts != null && leadContacts.length > 0){
      _details.add(SizedBox(
        height: SizeConfig.heightMultiplier * 1.5,
      ));

      leadContacts.forEach((leadContact) {
        _details.add(LeadContactWidget(
          messageSeantAt: leadContact.createdAt, 
          onViewTapped: (){
            onViewSendMessageTapped(leadContact);
          }
        ));

        if(leadContacts.last != leadContact){
          _details.add(_getSeparator(buildContext));          
        }
      });
    }

    _details.add(SizedBox(
      height: SizeConfig.heightMultiplier * 1.5,
    ));

    _details.add(ButtonWidget(
      text: StringConstants.sendAnEmail, 
      onPress: onSendAnEmailTapped
    ));

    _details.add(SizedBox(
      height: SizeConfig.heightMultiplier * 2,
    ));

    return _details;
  }

  Widget _getSeparator(BuildContext buildContext){
    return SizedBox(
      height: SizeConfig.separatorSize
    );
  }
}