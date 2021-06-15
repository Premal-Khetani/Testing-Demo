import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/value_objects/password_with_validation_rules.dart';

String emptyFieldValidation(String input){
  if(input == null){
    return StringConstants.emptyInputError;
  }

  input = input.replaceAll(' ', '');

  if(input.isEmpty){
    return StringConstants.emptyInputError;
  }

  return '';
}

String alfanumericalValidation(String input, {bool isOnlyNumbersAllowed = true}) {
  const hasSpecialCaracterRegex = r"[!@#$%^&*()_+=\[{\]};:<>|./?,-]";
  const hascharRegex = r"[A-z]";
  const hasNumberRegex = r"[0-9]";

  if(RegExp(hasSpecialCaracterRegex).hasMatch(input)){
    return StringConstants.onlyAlphanumericalCharactersAllowed;
  }
  
  if(!isOnlyNumbersAllowed){
    if(RegExp(hasNumberRegex).hasMatch(input) && !RegExp(hascharRegex).hasMatch(input)){
      return StringConstants.shouldContainLaters;
    }
  }

  return '';
}

String validateEmail(String input){
  const emailRegex = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return '';
  } else {
    return StringConstants.invalidEmailAddress;
  }  
}

String validateInteger(String input){
  final i = int.tryParse(input);

  return i == null ? StringConstants.invalidNumber : '';
}

void validatePasswordWithPasswordRules(PasswordWithValidationsRules passwordWithValidationsRules){
  const whiteSpaceRegex = r"[ ]";
  const maxCharcatersRegex = r".{8,}";
  const hasUpperCharRegex = r"[A-Z]";
  const hasLowerCharRegex = r"[a-z]";
  const hasNumberRegex = r"[0-9]";
  const hasSpecialCaracterRegex = r"[!@#$%^&*()_+=\[{\]};:<>|./?,-]";

  passwordWithValidationsRules.haveWhiteSpace = RegExp(whiteSpaceRegex).hasMatch(passwordWithValidationsRules.value);
  passwordWithValidationsRules.haveUpperChar = RegExp(hasUpperCharRegex).hasMatch(passwordWithValidationsRules.value);
  passwordWithValidationsRules.haveLowerChar = RegExp(hasLowerCharRegex).hasMatch(passwordWithValidationsRules.value);
  passwordWithValidationsRules.haveNumber = RegExp(hasNumberRegex).hasMatch(passwordWithValidationsRules.value);
  passwordWithValidationsRules.haveSpecialChar = RegExp(hasSpecialCaracterRegex).hasMatch(passwordWithValidationsRules.value);
  passwordWithValidationsRules.validLenght = RegExp(maxCharcatersRegex).hasMatch(passwordWithValidationsRules.value);
}

String valdatePhoneNumber(String input){
  // const phoneRegex = r"^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s0-9]*$";
  const phoneRegex = r'^[+]*[-\s0-9]*$';
  print(input);
  if (RegExp(phoneRegex).hasMatch(input)) {
    return '';
  } else {
    return StringConstants.invalidPhoneNumber;
  }  
}

String lenghtValidation(int allowedLenght, int lenght){
  return lenght > allowedLenght ? StringConstants.notValidLenghtError : '';
}

String validateLicencePlate(String value, int allowedLenght){
  if(value.isEmpty){
    return '';
  }

  if(value.length > allowedLenght){
    return StringConstants.licensePlateLenghtErrorMessage;
  }

  return '';
}