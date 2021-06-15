import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePickerWidget extends StatelessWidget {
  final String hint;
  final DateTime value;
  final Function(DateTime) onChanged;
  final bool isError;
  final String errorMessage;
  final DateTime firstDate;
  final DateTime lastDate;

  const MyDatePickerWidget({
    Key key, 
    @required this.hint, 
    @required this.value, 
    @required this.onChanged, 
    @required this.isError, 
    @required this.errorMessage,
    this.firstDate,
    this.lastDate
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getChildrens(context),
    );
  }

  List<Widget> _getChildrens(BuildContext buildContext){
    List<Widget> _childrens = List<Widget>();

    List<Widget> _dateChildrens = List<Widget>();

    if(value == null){
      _dateChildrens.add(Expanded(
        flex: 1,
        child: Text(
          hint,
          style: StyleConstants.inputHintTextStyle,
        ),
      ));
    } else {
      _dateChildrens.add(Expanded(
        flex: 1,
        child: Text(
          _formatDate(value),
          style: StyleConstants.inputTextStyle,
        ),
      ));
    }

    _dateChildrens.add(Image.asset(
      'images/icons/arrow_dropdown.png',
      width: 2.2 * SizeConfig.imageSizeMultiplier,
    ));

    _childrens.add(GestureDetector(
      onTap: () async{
        await _selectDate(buildContext);
      },
      child: Container(
        height: SizeConfig.textFieldHeight,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          border: Border.all(color: isError ? ColorConstants.redColor : ColorConstants.greyColor)
        ),
        padding: EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _dateChildrens,
        ),
      ),
    ));

    if(isError){
      _childrens.add(SizedBox(height: 0.75 * SizeConfig.heightMultiplier));

      _childrens.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.3 * SizeConfig.widthMultiplier),
        child: Text(
          errorMessage,
          style: StyleConstants.inputErrorTextStyle,
          maxLines: 2,
        ),
      ));
    }

    return _childrens;
  }

  String _formatDate(DateTime date){
    final f = new DateFormat('dd-MM-yyyy');
    return f.format(date);
  }

  DateTime _getInitialDate(){
    if(value == null){
      return DateTime.now();
    }

    return value;
  }

  DateTime _getFirstDate(){
    if(firstDate == null){
      return DateTime(2000);
    }

    return firstDate;
  }

  DateTime _getLastDate(){
    if(lastDate == null){
      return DateTime(2100);
    }

    return lastDate;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _getInitialDate(),
      firstDate: _getFirstDate(),
      lastDate: _getLastDate(),
    );

    if (picked != null && picked != value){
      onChanged(picked);
    }
  }
}