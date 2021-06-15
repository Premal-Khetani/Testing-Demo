import 'package:auto_db/core/constants/string_constants.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class PriceInputFormater extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    print(newValue.text);

    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight = newValue.text.length - newValue.selection.end;
      final f = NumberFormat("#,###");
      final splits = newValue.text.split('.');
      String nt = newValue.text.replaceAll(StringConstants.euroSign, '');
      if(splits.length > 1 && splits[1].length < 2){
        nt = nt.replaceAll('.0', '');
        nt = nt.substring(0, nt.length - 1);
      } else {
        nt = nt.replaceAll('.00', '');
      }
      if(nt.isEmpty){
        return newValue.copyWith(text: '');
      }
      final number = int.parse(nt.replaceAll(f.symbols.GROUP_SEP, ''));
      final newString = StringConstants.euroSign + f.format(number) + '.00';
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}