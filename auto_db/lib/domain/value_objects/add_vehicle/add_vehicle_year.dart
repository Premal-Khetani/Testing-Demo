import 'package:auto_db/domain/validators.dart';
import 'package:flutter/foundation.dart';

class AddVehicleYear {
  List<String> options;
  String value;
  String errorMessage;
  bool isDisabled;

  AddVehicleYear({
    @required this.value,
    @required this.errorMessage,
    @required this.isDisabled
  }){
    options = generateYearsList();
  }

  factory AddVehicleYear.initial() => AddVehicleYear(
    value: null,
    errorMessage: '',
    isDisabled: false
  );

  static List<String> generateYearsList(){
    List<String> years = List<String>();

    int currentYear = DateTime.now().year;
    final earliestYear = 1950;

    while (currentYear >= earliestYear) {       
      years.add(currentYear.toString());      
      currentYear -= 1;    
    }

    return years;
  }

  static List<String> generateYearsWithEarliest(String earliestYear){
    List<String> years = List<String>();

    int currentYear = DateTime.now().year;
    final ey = int.parse(earliestYear);

    while (currentYear >= ey) {       
      years.add(currentYear.toString());      
      currentYear -= 1;    
    }

    return years;
  }

  static List<String> generateYearsWithCurent(String curentYear){
    List<String> years = List<String>();

    int currentYear = int.parse(curentYear);
    final earliestYear = 1950;

    while (currentYear >= earliestYear) {       
      years.add(currentYear.toString());      
      currentYear -= 1;    
    }

    return years; 
  }

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    return !isError;
  }
}