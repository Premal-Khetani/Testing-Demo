import 'package:auto_db/core/constants/string_constants.dart';
import 'package:intl/intl.dart';

class PriceUtils{
  static int getPriceFromFormatedPrice(String formatedPrice){
    String price = formatedPrice.replaceAll(StringConstants.euroSign, '');
    price = price.replaceAll('.00', '');
    final f = NumberFormat("#,###");
    price = price.replaceAll(f.symbols.GROUP_SEP, '');
    return price == '' ? -1 : int.parse(price);
  }

  static String formatPriceFromApi(String priceFromApi){
    final f = NumberFormat("#,###");
    String price = priceFromApi.replaceAll('.00', '');
    if(price.isEmpty){
      return '';
    }
    final number = int.parse(price);
    return StringConstants.euroSign + f.format(number) + '.00';
  }

  static String formatInt(int mileage){
    final f = NumberFormat("#,###");

    return f.format(mileage);
  }
}