import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class LenghtInputFormater extends TextInputFormatter{
  final int allowedLenght;

  LenghtInputFormater({@required this.allowedLenght});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if(newValue.text.length > allowedLenght){
      final newString = newValue.text.substring(0, allowedLenght);
      print(newString);
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(offset: 15),
      );
    }

    return newValue;
  }
}