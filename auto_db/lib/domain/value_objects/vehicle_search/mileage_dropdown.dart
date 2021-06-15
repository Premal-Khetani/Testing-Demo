import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class MileageDropdown {
  List<String> options;
  String value;
  String errorMessage;

  MileageDropdown({
    @required this.value,
    @required this.errorMessage
  }){
    options = generateMileageList();
  }

  factory MileageDropdown.initial() => MileageDropdown(
    value: null,
    errorMessage: ''
  );

  static List<String> generateMileageList(){
    List<String> mileageList = List<String>();
    
    final f = NumberFormat("#,###");
    int currentMileage = 5000;
    final earliestMileage = 300000;
    mileageList.add(f.format(currentMileage));
    
    while (currentMileage < earliestMileage) {
      if(currentMileage < 10000){
        currentMileage += 5000;
        mileageList.add(f.format(currentMileage));
        continue; 
      }

      if(currentMileage < 60000){
        currentMileage += 10000;
        mileageList.add(f.format(currentMileage));
        continue;
      }

      if(currentMileage < 100000){
        currentMileage += 20000;
        mileageList.add(f.format(currentMileage));
        continue;
      }

      if(currentMileage < 200000){
        currentMileage += 25000;
        mileageList.add(f.format(currentMileage));
        continue;
      }

      if(currentMileage < 300000){
        currentMileage += 50000;
        mileageList.add(f.format(currentMileage));
        continue;
      }      
    }

    return mileageList;
  }

  static List<String> generateMileageWithCurrentMileage(String currentMileage){
    List<String> mileageList = List<String>();
    
    final f = NumberFormat("#,###");
    int cm = int.parse(currentMileage.replaceAll(f.symbols.GROUP_SEP, ''));
    final earliestMileage = 300000;
    mileageList.add(f.format(cm));
    
    while (cm < earliestMileage) {
      if(cm < 10000){
        cm += 5000;
        mileageList.add(f.format(cm));
        continue; 
      }

      if(cm < 60000){
        cm += 10000;
        mileageList.add(f.format(cm));
        continue;
      }

      if(cm < 100000){
        cm += 20000;
        mileageList.add(f.format(cm));
        continue;
      }

      if(cm < 200000){
        cm += 25000;
        mileageList.add(f.format(cm));
        continue;
      }

      if(cm < 300000){
        cm += 50000;
        mileageList.add(f.format(cm));
        continue;
      }      
    }

    return mileageList;
  }

  static List<String> generateMileageWithEarliestMileage(String earliestMileage){
    List<String> mileageList = List<String>();
    
    final f = NumberFormat("#,###");
    int currentMileage = 5000;
    final em = int.parse(earliestMileage.replaceAll(f.symbols.GROUP_SEP, ''));;
    mileageList.add(f.format(currentMileage));
    
    while (currentMileage < em) {
      if(currentMileage < 10000){
        currentMileage += 5000;
        mileageList.add(f.format(currentMileage));
        continue; 
      }

      if(currentMileage < 60000){
        currentMileage += 10000;
        mileageList.add(f.format(currentMileage));
        continue;
      }

      if(currentMileage < 100000){
        currentMileage += 20000;
        mileageList.add(f.format(currentMileage));
        continue;
      }

      if(currentMileage < 200000){
        currentMileage += 25000;
        mileageList.add(f.format(currentMileage));
        continue;
      }

      if(currentMileage < 300000){
        currentMileage += 50000;
        mileageList.add(f.format(currentMileage));
        continue;
      }      
    }

    return mileageList;
  }

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}