import 'package:flutter/services.dart';

class ToUpercaseInputFormater extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else {
      final int selectionIndexFromTheRight = newValue.text.length - newValue.selection.end;
      final newString = newValue.text.toUpperCase();
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(offset: newString.length - selectionIndexFromTheRight),
      ); 
    }
  }
}