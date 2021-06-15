import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/presentation/widgets/dialog_pop_up_widget.dart';
import 'package:flutter/material.dart';

class DataChangedPopUpUtil{
  static Future<DataChangedPopupResponse> showDataChangedPopUp(BuildContext context) async{
    DataChangedPopupResponse response = await showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return DialogPopupWidget(
          message: StringConstants.dataChangedPopUpMessage,
          negativeButtonName: StringConstants.no,
          onYesTapped: (){
            Navigator.of(buildContext).pop(DataChangedPopupResponse.SaveAndClose);
          },
          onCancelTapped: (){
            Navigator.of(buildContext).pop(DataChangedPopupResponse.Close);
          },
        );
      },
    );

    return response;
  }
}

enum DataChangedPopupResponse{
  SaveAndClose,
  Close
}