import 'package:auto_db/core/constants/string_constants.dart';

class ErrorMassages{

  static String getHttpErrorMassage(int errorCode){
    String error = '';

    switch(errorCode){
      case 400:
        error = StringConstants.badRequest;
        break;
      case 401:
        error = StringConstants.unautorizedAccess;
        break;
      case 403:
        error = StringConstants.unautorizedAccess;  
        break;
      case 404:
        error = StringConstants.notFound;
        break;
      case 408:
        error = StringConstants.requestTimeout;
        break;
      case 500:
        error = StringConstants.serverError;
        break;
      default:
        error = StringConstants.generalError;
        break;
    }

    return error;
  }

   static String getLoginErrorMassage(int errorCode){
    String error = '';

    switch(errorCode){
      case 400:
        error = StringConstants.invalidEmailOrPassword;
        break;
      case 401:
        error = StringConstants.invalidEmailOrPassword;
        break;
      case 403:
        error = StringConstants.invalidEmailOrPassword;  
        break;
      case 404:
        error = StringConstants.invalidEmailOrPassword;
        break;
      case 408:
        error = StringConstants.requestTimeout;
        break;
      case 500:
        error = StringConstants.serverError;
        break;
      default:
        error = StringConstants.generalError;
        break;
    }

    return error;
  }
  
}