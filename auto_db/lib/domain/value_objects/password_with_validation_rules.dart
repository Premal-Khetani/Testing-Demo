import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/validators.dart';

class PasswordWithValidationsRules{
  String value;
  String errorMessage;
  bool haveWhiteSpace;
  bool haveUpperChar;
  bool haveLowerChar;
  bool haveNumber;
  bool haveSpecialChar;
  bool validLenght;

  PasswordWithValidationsRules._({
    this.value,
    this.haveWhiteSpace,
    this.errorMessage,
    this.haveUpperChar,
    this.haveLowerChar,
    this.haveNumber,
    this.haveSpecialChar,
    this.validLenght
  });
  
  factory PasswordWithValidationsRules.initial() => PasswordWithValidationsRules._(
    value: '',
    errorMessage: '',
    haveWhiteSpace: false,
    haveUpperChar: false,
    haveLowerChar: false,
    haveNumber: false,
    haveSpecialChar: false,
    validLenght: false
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    errorMessage = emptyFieldValidation(value);
    if(errorMessage.isNotEmpty){
      return !isError;
    }

    // errorMessage = _validateRules();

    validateRules();
    
    if(haveWhiteSpace){
      errorMessage = StringConstants.whiteSpaceInPasswordError;
      return false;
    }

    if(haveUpperChar && haveLowerChar && haveNumber && haveSpecialChar && validLenght){
      return true;
    } else {
      return false;
    }
  }

  // String _validateRules(){
  //   validateRules();
    
  //   if(haveWhiteSpace){
  //     return StringConstants.whiteSpaceInPasswordError;
  //   }

  //   if(haveUpperChar && haveLowerChar && haveNumber && haveSpecialChar && validLenght){
  //     return '';
  //   }

  //   return StringConstants.passwordNotMatchValidationsRulesError;
  // }

  void validateRules(){
    validatePasswordWithPasswordRules(this);
  }
}