import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/user_register/user_register_post_body.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/postcode_nl_repository.dart';
import 'package:auto_db/domain/usecases/authentication/user_register_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_country_lookups_usecase.dart';
import 'package:auto_db/domain/usecases/get_address_by_zipcode_and_street_number_usecase.dart';
import 'package:auto_db/domain/value_objects/addition.dart';
import 'package:auto_db/domain/value_objects/city.dart';
import 'package:auto_db/domain/value_objects/coc_number.dart';
import 'package:auto_db/domain/value_objects/company.dart';
import 'package:auto_db/domain/value_objects/country.dart';
import 'package:auto_db/domain/value_objects/email.dart';
import 'package:auto_db/domain/value_objects/first_name.dart';
import 'package:auto_db/domain/value_objects/inserts.dart';
import 'package:auto_db/domain/value_objects/password.dart';
import 'package:auto_db/domain/value_objects/password_with_validation_rules.dart';
import 'package:auto_db/domain/value_objects/phone_number.dart';
import 'package:auto_db/domain/value_objects/radio_button.dart';
import 'package:auto_db/domain/value_objects/street.dart';
import 'package:auto_db/domain/value_objects/street_number.dart';
import 'package:auto_db/domain/value_objects/surname.dart';
import 'package:auto_db/domain/value_objects/zip_code.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';

part 'user_register_bloc.freezed.dart';

class UserRegisterBloc {
  BuildContext _context;

  UserRegisterState _state;
  final bool isProfile;

  GetAddressByZipCodeAndStreetNumberUsecase _getAddressByZipCodeAndStreetNumber;
  UserRegisterUsecase _userRegisterUsecase;
  GetCountryLookupsUsecase _getCountryLookupsUsecase;
  AuthenticationRepository _repository;

  UserRegisterBloc({@required BuildContext context, @required this.isProfile}) {
    this._context = context;
    _resolveDependencies();
    _userRegisterBlocEventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  UserRegisterState get registerFormInitialState {
    if (_state == null) {
      _state = UserRegisterState.initial();
    }
    return _state;
  }

  var _userRegisterBlocEventsController = StreamController<UserRegisterEvent>();
  StreamSink<UserRegisterEvent> get _inUserRegisterBlocEventsControler =>
      _userRegisterBlocEventsController.sink;

  var _registerFormStateController = StreamController<UserRegisterState>();
  StreamSink<UserRegisterState> get _inRegisterFormStateController =>
      _registerFormStateController.sink;
  Stream<UserRegisterState> get outRegisterFormStateController =>
      _registerFormStateController.stream;

  void _initialise() async {
    if (isProfile) {
      if (_state == null) {
        _state = registerFormInitialState;
      }
    }

    final _countriesResponse = await _getCountryLookupsUsecase(NoParams());
    if (_countriesResponse.body != null) {
      _state.country.options = _countriesResponse.body;
      _emitNewState();
    }

    // final _myLocale = Localizations.localeOf(_context);
    // switch (_myLocale.languageCode) {
    //   case 'en':
    //     _state.language.value = StringConstants.english;
    //     _emitNewState();
    //     break;
    //   case 'nl':
    //     _state.language.value = StringConstants.dutch;
    //     _emitNewState();
    //     break;
    //   default:
    //     break;
    // }

    if (isProfile) {
      await _getUserProfile();
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(UserRegisterEvent event) {
    event.map(
      createAccount: (e) async {
      await _createOrUpdateAccount(e);
    },
    onRetryTapped: (_) async { 
      _state = _state.copyWith(
        isSubmitting: true,
        isError: false,
        errorMessage: '',
        noInternetConnection: false
      );
      _emitNewState();
      await _getUserProfile();
    },
    cancelCreatingAccount: (_) {
      Navigator.of(_context).pop();
    }, accountTypeRadioButtonChanged: (e) {
      _state.accountTypeRadioButton.value = e.value;
      _emitNewState();
    }, mrOrMrsRadioButtonChanged: (e) {
      _state.mrOrMrsRadioButton.value = e.value;
      _emitNewState();
    }, languageChanged: (e) {
      // _state.language.value = e.value;
      // if (_state.language.isError) {
      //   _state.language.errorMessage = '';
      // }
      // _emitNewState();
    }, countryChanged: (e) {
      _state.country.value = e.value;
      if (_state.country.isError) {
        _state.country.errorMessage = '';
      }
      _emitNewState();
    }, autoPopulateStreetAndCity: (e) async {
      await _autoPopulateStreetAndCity(e);
    }, passwordChanged: (e) {
      _state.password.value = e.value;
      if (_state.password.isError) {
        _state.password.errorMessage = '';
      }
      _state.password.validateRules();
      _emitNewState();
    }, additionChanged: (e) {
      _state.addition.value = e.value;
      if (_state.addition.isError) {
        _state.addition.errorMessage = '';
        _emitNewState();
      }
    }, alternativePhoneNumberChanged: (e) {
      _state.alternativePhoneNumber.value = e.value;
      if (_state.alternativePhoneNumber.isError) {
        _state.alternativePhoneNumber.errorMessage = '';
        _emitNewState();
      }
    }, cityChanged: (e) {
      _state.city.value = e.value;
      if (_state.city.isError) {
        _state.city.errorMessage = '';
        _emitNewState();
      }
    }, cocNumberChanged: (e) {
      _state.cocNumber.value = e.value;
      if (_state.cocNumber.isError) {
        _state.cocNumber.errorMessage = '';
        _emitNewState();
      }
    }, companyChanged: (e) {
      _state.company.value = e.value;
      if (_state.company.isError) {
        _state.company.errorMessage = '';
        _emitNewState();
      }
    }, confirmPasswordChanged: (e) {
      _state.passwordConfirm.value = e.value;
      if (_state.passwordConfirm.isError) {
        _state.passwordConfirm.errorMessage = '';
        _emitNewState();
      }
    }, emailChanged: (e) {
      _state.email.value = e.value;
      if (_state.email.isError) {
        _state.email.errorMessage = '';
        _emitNewState();
      }
    }, firstNameChanged: (e) {
      _state.firstName.value = e.value;
      if (_state.firstName.isError) {
        _state.firstName.errorMessage = '';
        _emitNewState();
      }
    }, zipCodeChanged: (e) {
      _state.zipCode.value = e.value;
      if (_state.zipCode.isError) {
        _state.zipCode.errorMessage = '';
        _emitNewState();
      }
    }, insertsChanged: (e) {
      _state.inserts.value = e.value;
      if (_state.inserts.isError) {
        _state.inserts.errorMessage = '';
        _emitNewState();
      }
    }, phoneNumberChanged: (e) {
      _state.phoneNumber.value = e.value;
      if (_state.phoneNumber.isError) {
        _state.phoneNumber.errorMessage = '';
        _emitNewState();
      }
    }, streetChanged: (e) {
      _state.street.value = e.value;
      if (_state.street.isError) {
        _state.street.errorMessage = '';
        _emitNewState();
      }
    }, streetNumberChanged: (e) {
      _state.streetNumber.value = e.value;
      if (_state.streetNumber.isError) {
        _state.streetNumber.errorMessage = '';
        _emitNewState();
      }
    }, surnameChanged: (e) {
      _state.surname.value = e.value;
      if (_state.surname.isError) {
        _state.surname.errorMessage = '';
        _emitNewState();
      }
    }, validatePassword: (_) {
      _state.password.validateRules();
      _emitNewState();
    }, termsAndConditionsChanged: (e) {
      _state = _state.copyWith(isTermsAndConditionsAccepted: e.value);
      _emitNewState();
    }, close: (_) {
      Navigator.of(_context).pop();
    },);
  }

  Future<void> _getUserProfile() async {
    final response = await _repository.getUserProfile();

    if (response.error != null) {
      response.error.map(
        serverError: (e){
          _state = _state.copyWith(
            isSubmitting: false,
            isError: true,
            errorMessage: e.massage
          );
          _emitNewState();
        }, 
        noInternerError: (_){
          _state = _state.copyWith(
            isSubmitting: false,
            noInternetConnection: true
          );
          _emitNewState();
        }, 
        genericError: (_){
          _state = _state.copyWith(
            isSubmitting: false,
            isError: true,
            errorMessage: StringConstants.generalError
          );
          _emitNewState();
        },
        noOperationError: (_) {  }
      );
      return;
    }

    if (response.body != null) {
      _setStateFromUserRegisterPostBody(response.body);
      _state = _state.copyWith(
        isSubmitting: false
      );
      _emitNewState();
    }
  }

  Future<void> _autoPopulateStreetAndCity(AutoPopulateStreetAndCity e) async {
    print('_autoPopulateStreetAndCity');
    final isZipCodeValid = _state.zipCode.validateWithoutErrorMessage();
    final isStreetNumberValid =
        _state.streetNumber.validateWithoutErrorMessage();

    if (isZipCodeValid && isStreetNumberValid) {
      final _addressResponse = await _getAddressByZipCodeAndStreetNumber(
          AddresByZipCodeAndStreetNumberParams(
              zipCode: _state.zipCode.value,
              streetNumber: int.tryParse(_state.streetNumber.value)));

      if (_addressResponse.body != null) {
        _state.street.value = _addressResponse.body.street;
        if (_state.street.isError) {
          _state.street.errorMessage = '';
        }

        _state.city.value = _addressResponse.body.city;
        if (_state.city.isError) {
          _state.city.errorMessage = '';
        }

        final _netherlands = _state.country.options
            .firstWhere((e) => e.coutryNameLookup.en == 'Netherlands');
        if (_netherlands != null) {
          _state.country.value = _netherlands.coutryNameLookup.en;
          if (_state.country.isError) {
            _state.country.errorMessage = '';
          }
        }

        _emitNewState();
      }
    }
  }

  Future<void> _createOrUpdateAccount(CreateAcount e) async {
    if (!_validateForm(e)) {
      _emitNewState();
      return;
    }

    if (!_validatePasswords()) {
      _emitNewState();
      return;
    }

    if (!_state.isTermsAndConditionsAccepted) {
      CustomToastUtils.showCustomToast(
        context:_context, 
        message: StringConstants.acceptTermsAndConditionsError, 
        customToastType: CustomToastType.Alert
      );
      return;
    }

    _state = _state.copyWith(
      isSubmitting: true,
    );
    _emitNewState();

    if (isProfile) {
      await _updateAccount();
    } else {
      await _createAccount();
    }
  }

  Future<void> _updateAccount() async {
    final response = await _repository.updateProfile(
        userRegisterPostBody: _createRegistrationPostBody());

    if (response.error != null) {
      String errorMessage = '';

      response.error.map(
          serverError: (e) {
            errorMessage = e.massage;
          },
          noInternerError: (_) {
            errorMessage = StringConstants.noInternet;
          },
          genericError: (_) {
            errorMessage = StringConstants.generalError;
          },
          noOperationError: (_) {});

      _state = _state.copyWith(
        isSubmitting: false
      );
      _emitNewState();

      CustomToastUtils.showCustomToast(
        context:_context, 
        message: errorMessage, 
        customToastType: CustomToastType.Error
      );
      return;
    }

    if (response.body != null) {
      Navigator.of(_context).pop(true);
    }
  }

  Future<void> _createAccount() async {
    final response = await _userRegisterUsecase(UserRegistrationParams(
        userRegisterPostBody: _createRegistrationPostBody()));

    if (response.error != null) {
      String errorMessage = '';

      response.error.map(
          serverError: (e) {
            errorMessage = e.massage;
          },
          noInternerError: (_) {
            errorMessage = StringConstants.noInternet;
          },
          genericError: (_) {
            errorMessage = StringConstants.generalError;
          },
          noOperationError: (_) {});

      _state = _state.copyWith(
        isSubmitting: false
      );
      _emitNewState();

      CustomToastUtils.showCustomToast(
        context:_context, 
        message: errorMessage, 
        customToastType: CustomToastType.Error
      );
      return;
    }

    if (response.body != null && response.body) {
      Navigator.of(_context).pop(true);
    }
  }

  UserRegisterPostBody _createRegistrationPostBody() {
    UserRegisterPostBody _userRegisterPostBody = UserRegisterPostBody(
        accountType: _state.accountTypeRadioButton.value.toLowerCase(),
        sex: _state.mrOrMrsRadioButton.value == StringConstants.mr ? 'male' : 'female',
        firstName: _state.firstName.value,
        surname: _state.surname.value,
        streetNumber: int.parse(_state.streetNumber.value),
        street: _state.street.value,
        city: _state.city.value,
        country: _state.country.value,
        // language: _state.language.value,
        email: _state.email.value,
        password: _state.password.value,
        confirmPassword: _state.passwordConfirm.value);

    if (_state.accountTypeRadioButton.value.toLowerCase() == StringConstants.business.toLowerCase()) {
      _userRegisterPostBody = _userRegisterPostBody.copyWith(
          company: _state.company.value, cocNumber: _state.cocNumber.value);
    }

    if (_state.inserts.value.isNotEmpty) {
      _userRegisterPostBody =
          _userRegisterPostBody.copyWith(inserts: _state.inserts.value);
    }

    if (_state.zipCode.value.isNotEmpty) {
      _userRegisterPostBody =
          _userRegisterPostBody.copyWith(zipCode: _state.zipCode.value);
    }

    if (_state.addition.value.isNotEmpty) {
      _userRegisterPostBody =
          _userRegisterPostBody.copyWith(addition: _state.addition.value);
    }

    if (_state.phoneNumber.value.isNotEmpty) {
      _userRegisterPostBody =
          _userRegisterPostBody.copyWith(phoneNumber: _state.phoneNumber.value);
    }

    if (_state.alternativePhoneNumber.value.isNotEmpty) {
      _userRegisterPostBody = _userRegisterPostBody.copyWith(
          alternativePhoneNumber: _state.alternativePhoneNumber.value);
    }

    return _userRegisterPostBody;
  }

  void _setStateFromUserRegisterPostBody(UserRegisterPostBody body) {
    _state = _state.copyWith(isTermsAndConditionsAccepted: true);
    if (body.accountType != null) {
      _state.accountTypeRadioButton.value = body.accountType;
    }
    if (body.sex != null && body.sex.isNotEmpty) {
      _state.mrOrMrsRadioButton.value =
          body.sex == 'male' ? StringConstants.mr : StringConstants.mrs;
    }
    if (body.firstName != null) {
      _state.firstName.value = body.firstName;
    }
    if (body.surname != null) {
      _state.surname.value = body.surname;
    }
    if (body.streetNumber != null) {
      _state.streetNumber.value = body.streetNumber.toString();
    }
    if (body.street != null) {
      _state.street.value = body.street;
    }
    if (body.city != null) {
      _state.city.value = body.city;
    }
    if (body.country != null) {
      _state.country.value = body.country;
    }
    // if (body.language != null) {
    //   _state.language.value = body.language;
    // }
    if (body.email != null) {
      _state.email.value = body.email;
    }
    if (body.inserts != null) {
      _state.inserts.value = body.inserts;
    }
    if (body.company != null) {
      _state.company.value = body.company;
    }
    if (body.cocNumber != null) {
      _state.cocNumber.value = body.cocNumber;
    }
    if (body.zipCode != null) {
      _state.zipCode.value = body.zipCode;
    }
    if (body.addition != null) {
      _state.addition.value = body.addition;
    }
    if (body.phoneNumber != null) {
      _state.phoneNumber.value = body.phoneNumber;
    }
    if (body.alternativePhoneNumber != null) {
      _state.alternativePhoneNumber.value = body.alternativePhoneNumber;
    }
  }

  bool _validateForm(CreateAcount e) {
    bool isCompanyValid = true;
    bool isCocNumberValid = true;
    bool isPhoneNumberValid = true;
    bool isAlternativePhoneNumberValid = true;
    bool isInsertsValid = true;
    bool isAdditionValid = true;
    bool isZipCodeValid = true;
    if (_state.accountTypeRadioButton.value == StringConstants.business) {
      isCompanyValid = _state.company.validate();
      isCocNumberValid = _state.cocNumber.validate();
    }
    final isFirstNameValid = _state.firstName.validate();
    if(_state.inserts.value.isNotEmpty){
      isInsertsValid = _state.inserts.validate();
    }
    final isSurenameValid = _state.surname.validate();
    if(_state.zipCode.value.isNotEmpty){
      isZipCodeValid = _state.zipCode.validate();
    }
    final isStreetNumberValid = _state.streetNumber.validate();
    if(_state.addition.value.isNotEmpty){
      isAdditionValid = _state.addition.validate();
    }
    final isStreetValid = _state.street.validate();
    final isCityValid = _state.city.validate();
    final isCountryValid = _state.country.validate();
    if (_state.phoneNumber.value.isNotEmpty) {
      isPhoneNumberValid = _state.phoneNumber.validate();
    }
    if (_state.alternativePhoneNumber.value.isNotEmpty) {
      isAlternativePhoneNumberValid = _state.alternativePhoneNumber.validate();
    }
    // final isLanguageValid = _state.language.validate();
    final isEmailValid = _state.email.validate();
    final isPasswordValid = _validatePassword(); //_state.password.validate();
    final isPasswordConfirmValid =
        _validateConfirmPassword(); //_state.passwordConfirm.validate();

    return isCompanyValid &&
        isCocNumberValid &&
        isFirstNameValid &&
        isInsertsValid &&
        isSurenameValid &&
        isZipCodeValid &&
        isStreetNumberValid &&
        isAdditionValid &&
        isStreetValid &&
        isCityValid &&
        isCountryValid &&
        isPhoneNumberValid &&
        isAlternativePhoneNumberValid &&
        isEmailValid &&
        isPasswordValid &&
        isPasswordConfirmValid;
  }

  bool _validatePassword() {
    if (isProfile &&
        (_state.password.value == null || _state.password.value.isEmpty)) {
      return true;
    } else {
      return _state.password.validate();
    }
  }

  bool _validateConfirmPassword() {
    if (isProfile &&
        (_state.passwordConfirm.value == null ||
            _state.passwordConfirm.value.isEmpty)) {
      return true;
    } else {
      return _state.passwordConfirm.validate();
    }
  }

  bool _validatePasswords() {
    if (_state.password.value == _state.passwordConfirm.value) {
      return true;
    }

    _state.passwordConfirm.errorMessage = StringConstants.notEqualPasswordError;
    return false;
  }

  void _emitNewState() {
    _inRegisterFormStateController.add(_state);
  }

  void _resolveDependencies() {
    _getAddressByZipCodeAndStreetNumber =
        GetAddressByZipCodeAndStreetNumberUsecase(
            getIt.get<PostcodeNlRepository>());
    _repository = getIt.get<AuthenticationRepository>();
    _userRegisterUsecase = UserRegisterUsecase(_repository);
    _getCountryLookupsUsecase =
        GetCountryLookupsUsecase(getIt.get<DropdownDataRepository>());
  }

  void addEvent(UserRegisterEvent event) {
    _inUserRegisterBlocEventsControler.add(event);
  }

  void dispose() {
    _userRegisterBlocEventsController.close();
    _registerFormStateController.close();
  }
}
