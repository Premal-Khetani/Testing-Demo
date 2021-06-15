import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/validators.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class PriceDropdown {
  List<String> options;
  String value;
  String errorMessage;

  PriceDropdown({
    @required this.value,
    @required this.errorMessage
  }){
    options = generatePriceList();
  }

  factory PriceDropdown.initial() => PriceDropdown(
    value: null,
    errorMessage: ''
  );

  static List<String> generatePriceList(){
    List<String> priceList = List<String>();
    
    final f = NumberFormat("#,###");
    int currentPrice = 1000;
    final earliestPrice = 200000;
    priceList.add(StringConstants.euroSign + f.format(currentPrice));
    
    while (currentPrice < earliestPrice) {
      if(currentPrice < 30000){
        currentPrice += 1000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue; 
      }

      if(currentPrice < 60000){
        currentPrice += 2000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue;
      }

      if(currentPrice < 120000){
        currentPrice += 5000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue;
      }

      if(currentPrice < 200000){
        currentPrice += 10000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue;
      }     
    }

    return priceList;
  }

  static List<String> generatePriceListWithEarliestPrice(String earliestPrice){
    List<String> priceList = List<String>();
    
    final f = NumberFormat("#,###");
    int currentPrice = 1000;
    final ep = PriceUtils.getPriceFromFormatedPrice(earliestPrice);
    priceList.add(StringConstants.euroSign + f.format(currentPrice));
    
    while (currentPrice < ep) {
      if(currentPrice < 30000){
        currentPrice += 1000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue; 
      }

      if(currentPrice < 60000){
        currentPrice += 2000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue;
      }

      if(currentPrice < 120000){
        currentPrice += 5000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue;
      }

      if(currentPrice < 200000){
        currentPrice += 10000;
        priceList.add(StringConstants.euroSign + f.format(currentPrice));
        continue;
      }     
    }

    return priceList;
  }

  static List<String> generatePriceListWithCurentPrice(String curentPrice){
    List<String> priceList = List<String>();
    
    final f = NumberFormat("#,###");
    int cp = PriceUtils.getPriceFromFormatedPrice(curentPrice);
    final earliestPrice = 200000;
    priceList.add(StringConstants.euroSign + f.format(cp));
    
    while (cp < earliestPrice) {
      if(cp < 30000){
        cp += 1000;
        priceList.add(StringConstants.euroSign + f.format(cp));
        continue; 
      }

      if(cp < 60000){
        cp += 2000;
        priceList.add(StringConstants.euroSign + f.format(cp));
        continue;
      }

      if(cp < 120000){
        cp += 5000;
        priceList.add(StringConstants.euroSign + f.format(cp));
        continue;
      }

      if(cp < 200000){
        cp += 10000;
        priceList.add(StringConstants.euroSign + f.format(cp));
        continue;
      }     
    }

    return priceList;
  }

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}