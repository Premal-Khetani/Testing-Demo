import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
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
import 'package:auto_db/presentation/blocs/user_register/user_register_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/my_dropdown_widget.dart';
import 'package:auto_db/presentation/widgets/radio_button_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/email_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/password_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/text_input_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/to_upercase_input_formater.dart';
import 'package:flutter/material.dart';

class UserRegisterForm extends StatefulWidget {
  final UserRegisterBloc userRegisterBloc;
  final RadioButton accountTypeRadioButton;
  final Company company;
  final CoCNumber cocNumber;
  final RadioButton mrOrMrsRadioButton;
  final FirstName firstName;
  final Inserts inserts;
  final Surname surname;
  final ZipCode zipCode;
  final StreetNumber streetNumber;
  final Addition addition;
  final Street street;
  final City city;
  final Country country;
  final PhoneNumber phoneNumber;
  final PhoneNumber alternativePhoneNumber;
  // final Language language;
  final Email email;
  final PasswordWithValidationsRules password;
  final Password passwordConfirm;
  final bool isTermsAndConditionsAccepted;

  const UserRegisterForm(
      {Key key,
      @required this.userRegisterBloc,
      @required this.accountTypeRadioButton,
      @required this.company,
      @required this.cocNumber,
      @required this.mrOrMrsRadioButton,
      @required this.firstName,
      @required this.inserts,
      @required this.surname,
      @required this.zipCode,
      @required this.streetNumber,
      @required this.addition,
      @required this.street,
      @required this.city,
      @required this.country,
      @required this.phoneNumber,
      @required this.alternativePhoneNumber,
      // @required this.language,
      @required this.email,
      @required this.password,
      @required this.passwordConfirm,
      @required this.isTermsAndConditionsAccepted})
      : super(key: key);

  @override
  _UserRegisterFormState createState() => _UserRegisterFormState();
}

class _UserRegisterFormState extends State<UserRegisterForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _companyFocusNode = FocusNode();
  FocusNode _cocNumberFocusNode = FocusNode();
  FocusNode _firstNameFocusNode = FocusNode();
  FocusNode _insertsFocusNode = FocusNode();
  FocusNode _surnameFocusNode = FocusNode();
  FocusNode _zipCodeFocusNode = FocusNode();
  FocusNode _streetNumberFocusNode = FocusNode();
  FocusNode _additionsFocusNode = FocusNode();
  FocusNode _streetFocusNode = FocusNode();
  FocusNode _cityFocusNode = FocusNode();
  FocusNode _countryFocusNode = FocusNode();
  FocusNode _phoneNumberFocusNode = FocusNode();
  FocusNode _alternativePhoneNumberFocusNode = FocusNode();
  FocusNode _languageFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _passwordConfirmFocusNoode = FocusNode();
  FocusNode _termsAndConditionsFocusNode = FocusNode();

  MyTextEditingController _comapnyTextEditingController =
      MyTextEditingController();
  MyTextEditingController _cocNumberTextEditingController =
      MyTextEditingController();
  MyTextEditingController _firstNameTextEditingController =
      MyTextEditingController();
  MyTextEditingController _insertsTextEditingController =
      MyTextEditingController();
  MyTextEditingController _surnameTextEditingController =
      MyTextEditingController();
  MyTextEditingController _zipCodeTextEditingController =
      MyTextEditingController();
  MyTextEditingController _streetNumberTextEditingController =
      MyTextEditingController();
  MyTextEditingController _aditionsTextEditingController =
      MyTextEditingController();
  MyTextEditingController _streetTextEditingController =
      MyTextEditingController();
  MyTextEditingController _cityTextEditingController =
      MyTextEditingController();
  MyTextEditingController _phoneNumberTextEditingController =
      MyTextEditingController();
  MyTextEditingController _alternativePhoneNumberTextEditingController =
      MyTextEditingController();
  MyTextEditingController _emailTextEditingController =
      MyTextEditingController();
  MyTextEditingController _passwordTextEditingController =
      MyTextEditingController();
  MyTextEditingController _passwordConfirmTextEditingController =
      MyTextEditingController();

  @override
  void initState() {
    super.initState();
    _zipCodeFocusNode.addListener(zipCodeFocusListener);
    _streetNumberFocusNode.addListener(streetNumberFocusListener);
  }

  @override
  void dispose() {
    _zipCodeFocusNode.removeListener(zipCodeFocusListener);
    _streetNumberFocusNode.removeListener(streetNumberFocusListener);
    super.dispose();
  }

  void zipCodeFocusListener(){
    if(!_zipCodeFocusNode.hasFocus){
      widget.userRegisterBloc.addEvent(UserRegisterEvent.autoPopulateStreetAndCity());
    }
  }

  void streetNumberFocusListener(){
    if(!_streetNumberFocusNode.hasFocus){
      widget.userRegisterBloc.addEvent(UserRegisterEvent.autoPopulateStreetAndCity());
    }
  }

  @override
  Widget build(BuildContext context) {
    _comapnyTextEditingController.setTextAndPosition(widget.company.value);
    _cocNumberTextEditingController.setTextAndPosition(widget.cocNumber.value);
    _firstNameTextEditingController.setTextAndPosition(widget.firstName.value);
    _insertsTextEditingController.setTextAndPosition(widget.inserts.value);
    _surnameTextEditingController.setTextAndPosition(widget.surname.value);
    _zipCodeTextEditingController.setTextAndPosition(widget.zipCode.value);
    _streetNumberTextEditingController
        .setTextAndPosition(widget.streetNumber.value);
    _aditionsTextEditingController.setTextAndPosition(widget.addition.value);
    _streetTextEditingController.setTextAndPosition(widget.street.value);
    _cityTextEditingController.setTextAndPosition(widget.city.value);
    _phoneNumberTextEditingController
        .setTextAndPosition(widget.phoneNumber.value);
    _alternativePhoneNumberTextEditingController
        .setTextAndPosition(widget.alternativePhoneNumber.value);
    _emailTextEditingController.setTextAndPosition(widget.email.value);
    _passwordTextEditingController.setTextAndPosition(widget.password.value);
    _passwordConfirmTextEditingController
        .setTextAndPosition(widget.passwordConfirm.value);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      child: LayoutBuilder(
        builder: (buildContext, constraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              padding: EdgeInsets.only(
                  left: 2.2 * SizeConfig.heightMultiplier,
                  top: 1.2 * SizeConfig.heightMultiplier,
                  right: 2.2 * SizeConfig.heightMultiplier,
                  bottom: 2.2 * SizeConfig.heightMultiplier),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: _getFormChildrens(context),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _getFormChildrens(BuildContext buildContext) {
    List<Widget> _childrens = List<Widget>();

    _childrens.add(_getAccountTypeRadioButton(buildContext));
    if (widget.accountTypeRadioButton.value.toLowerCase() ==
        StringConstants.business.toLowerCase()) {
      _childrens.add(_getCompanyTextField(buildContext));
      _childrens.add(_getSeparator(buildContext));
      _childrens.add(_getCoCNumberTextField(buildContext));
    }
    _childrens.add(_getMrOrMrsRadioButton(buildContext));
    _childrens.add(_getFirstNameTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getInsertsTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getSurnameTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getZipCodeTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getStreetNumberAndAditionTextFields(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getStreetTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getCityTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getCountryChooserDropDown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getPhoneNumerTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getAlternativePhoneNumberTextField(buildContext));
    // _childrens.add(_getSeparator(buildContext));
    // _childrens.add(_getLanguageChooserDropDown(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getEmailTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getPasswordTextField(buildContext));
    _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getPasswordConfirmTextField(buildContext));
    if (SizeConfig.isTablet) _childrens.add(_getSeparator(buildContext));
    if (!widget.userRegisterBloc.isProfile) {
      _childrens.add(_getTermsAndConditionsWidget(buildContext));
    }else{
      _childrens.add(_getSeparator(buildContext));
    }
    // if (widget.showErrorMessages) {
    //   _childrens.add(_getSeparator(buildContext));
    //   _childrens.add(_getErrorMessageWidget(buildContext));
    // }
    if (SizeConfig.isTablet) _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getCreateAccountButton(buildContext));
    if (SizeConfig.isTablet) _childrens.add(_getSeparator(buildContext));
    _childrens.add(_getCancelButton(buildContext));

    return _childrens;
  }

  Widget _getSeparator(BuildContext buildContext) {
    return SizedBox(height: SizeConfig.separatorSize);
  }

  Widget _getAccountTypeRadioButton(BuildContext buildContext) {
    return RadioButtonWidget(
        options: widget.accountTypeRadioButton.options,
        value: widget.accountTypeRadioButton.value,
        numberOfButtonsInRow: 3,
        onSelected: (value) {
          widget.userRegisterBloc.addEvent(
              UserRegisterEvent.accountTypeRadioButtonChanged(value: value));
        });
  }

  Widget _getCompanyTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _companyFocusNode,
      textEditingController: _comapnyTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_cocNumberFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.companyChanged(value: value));
      },
      isError: widget.company.isError,
      errorMessage: widget.company.errorMessage,
      hintText: StringConstants.company,
    );
  }

  Widget _getCoCNumberTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _cocNumberFocusNode,
      textEditingController: _cocNumberTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_firstNameFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.cocNumberChanged(value: value));
      },
      isError: widget.cocNumber.isError,
      errorMessage: widget.cocNumber.errorMessage,
      hintText: StringConstants.cocNumber,
    );
  }

  Widget _getMrOrMrsRadioButton(BuildContext buildContext) {
    return RadioButtonWidget(
        options: widget.mrOrMrsRadioButton.options,
        value: widget.mrOrMrsRadioButton.value,
        numberOfButtonsInRow: 3,
        onSelected: (value) {
          widget.userRegisterBloc.addEvent(
              UserRegisterEvent.mrOrMrsRadioButtonChanged(value: value));
        });
  }

  Widget _getFirstNameTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _firstNameFocusNode,
      textEditingController: _firstNameTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_insertsFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.firstNameChanged(value: value));
      },
      isError: widget.firstName.isError,
      errorMessage: widget.firstName.errorMessage,
      hintText: StringConstants.firstName,
      textCapitalization: TextCapitalization.sentences,
    );
  }

  Widget _getInsertsTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _insertsFocusNode,
      textEditingController: _insertsTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_surnameFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.insertsChanged(value: value));
      },
      isError: widget.inserts.isError,
      errorMessage: widget.inserts.errorMessage,
      hintText: StringConstants.inserts,
    );
  }

  Widget _getSurnameTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _surnameFocusNode,
      textEditingController: _surnameTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_zipCodeFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.surnameChanged(value: value));
      },
      isError: widget.surname.isError,
      errorMessage: widget.surname.errorMessage,
      hintText: StringConstants.surname,
      textCapitalization: TextCapitalization.sentences,
    );
  }

  Widget _getZipCodeTextField(BuildContext buildContext) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: TextInputWidget(
              focusNode: _zipCodeFocusNode,
              textEditingController: _zipCodeTextEditingController,
              onEditingComplete: () {
                FocusScope.of(buildContext)
                    .requestFocus(_streetNumberFocusNode);
              },
              onChanged: (value) {
                widget.userRegisterBloc
                    .addEvent(UserRegisterEvent.zipCodeChanged(value: value));
              },
              isError: widget.zipCode.isError,
              errorMessage: widget.zipCode.errorMessage,
              hintText: StringConstants.zipCode,
              inputFormatters: [
                ToUpercaseInputFormater()
              ],
            )),
        SizedBox(width: SizeConfig.separatorSize),
        Expanded(flex: 1, child: Container())
      ],
    );
  }

  Widget _getStreetNumberAndAditionTextFields(BuildContext buildContext) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: TextInputWidget(
              focusNode: _streetNumberFocusNode,
              textEditingController: _streetNumberTextEditingController,
              keyboardType: TextInputType.number,
              onEditingComplete: () {
                FocusScope.of(buildContext).requestFocus(_additionsFocusNode);
                // widget.userRegisterBloc
                //     .addEvent(UserRegisterEvent.autoPopulateStreetAndCity());
              },
              onChanged: (value) {
                widget.userRegisterBloc.addEvent(
                    UserRegisterEvent.streetNumberChanged(value: value));
              },
              isError: widget.streetNumber.isError,
              errorMessage: widget.streetNumber.errorMessage,
              hintText: StringConstants.streetNumber,
            )),
        SizedBox(width: SizeConfig.separatorSize),
        Expanded(
            flex: 1,
            child: TextInputWidget(
              focusNode: _additionsFocusNode,
              textEditingController: _aditionsTextEditingController,
              onEditingComplete: () {
                FocusScope.of(buildContext).requestFocus(_streetFocusNode);
              },
              onChanged: (value) {
                widget.userRegisterBloc
                    .addEvent(UserRegisterEvent.additionChanged(value: value));
              },
              isError: widget.addition.isError,
              errorMessage: widget.addition.errorMessage,
              hintText: StringConstants.addition,
            ))
      ],
    );
  }

  Widget _getStreetTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _streetFocusNode,
      textEditingController: _streetTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_cityFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.streetChanged(value: value));
      },
      isError: widget.street.isError,
      errorMessage: widget.street.errorMessage,
      hintText: StringConstants.street,
    );
  }

  Widget _getCityTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _cityFocusNode,
      textEditingController: _cityTextEditingController,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_countryFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.cityChanged(value: value));
      },
      isError: widget.city.isError,
      errorMessage: widget.city.errorMessage,
      hintText: StringConstants.city,
    );
  }

  Widget _getCountryChooserDropDown(BuildContext buildContext) {
    return MyDropdownWidget<String>(
      hint: StringConstants.country,
      value: widget.country.value,
      focusNode: _countryFocusNode,
      isError: widget.country.isError,
      errorMessage: widget.country.errorMessage,
      items: widget.country.options.map((e) {
        return DropdownMenuItem<String>(
            value: e.coutryNameLookup.en,
            child: Text(
              e.coutryNameLookup.en,
              style: StyleConstants.inputTextStyle,
            ));
      }).toList(),
      onChanged: (value) {
        FocusScope.of(buildContext).requestFocus(_phoneNumberFocusNode);
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.countryChanged(value: value));
      },
    );
  }

  Widget _getPhoneNumerTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _phoneNumberFocusNode,
      textEditingController: _phoneNumberTextEditingController,
      keyboardType: TextInputType.phone,
      onEditingComplete: () {
        FocusScope.of(buildContext)
            .requestFocus(_alternativePhoneNumberFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.phoneNumberChanged(value: value));
      },
      isError: widget.phoneNumber.isError,
      errorMessage: widget.phoneNumber.errorMessage,
      hintText: StringConstants.phoneNumber,
    );
  }

  Widget _getAlternativePhoneNumberTextField(BuildContext buildContext) {
    return TextInputWidget(
      focusNode: _alternativePhoneNumberFocusNode,
      textEditingController: _alternativePhoneNumberTextEditingController,
      keyboardType: TextInputType.phone,
      onEditingComplete: () {
        FocusScope.of(buildContext).requestFocus(_languageFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc.addEvent(
            UserRegisterEvent.alternativePhoneNumberChanged(value: value));
      },
      isError: widget.alternativePhoneNumber.isError,
      errorMessage: widget.alternativePhoneNumber.errorMessage,
      hintText: StringConstants.alternativePhoneNumber,
    );
  }

  // Widget _getLanguageChooserDropDown(BuildContext buildContext) {
  //   return MyDropdownWidget<String>(
  //     hint: StringConstants.language,
  //     value: widget.language.value,
  //     focusNode: _languageFocusNode,
  //     isError: widget.language.isError,
  //     errorMessage: widget.language.errorMessage,
  //     items: widget.language.options.map((e) {
  //       return DropdownMenuItem<String>(
  //           value: e,
  //           child: Text(
  //             e,
  //             style: StyleConstants.inputTextStyle,
  //           ));
  //     }).toList(),
  //     onChanged: (value) {
  //       FocusScope.of(buildContext).requestFocus(_emailFocusNode);
  //       widget.userRegisterBloc
  //           .addEvent(UserRegisterEvent.languageChanged(value: value));
  //     },
  //   );
  // }

  Widget _getEmailTextField(BuildContext buildContext) {
    return EmailWidget(
      focusNode: _emailFocusNode,
      textEditingController: _emailTextEditingController,
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.emailChanged(value: value));
      },
      isError: widget.email.isError,
      errorMessage: widget.email.errorMessage,
      hintText: StringConstants.emailAddress,
    );
  }

  Widget _getPasswordTextField(BuildContext buildContext) {
    return PasswordWidget(
      focusNode: _passwordFocusNode,
      textEditingController: _passwordTextEditingController,
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_passwordConfirmFocusNoode);
        // widget.userRegisterBloc.addEvent(UserRegisterEvent.validatePassword());
      },
      onChanged: (value) {
        widget.userRegisterBloc.addEvent(UserRegisterEvent.passwordChanged(
            value: _passwordTextEditingController.text));
      },
      isError: widget.password.isError,
      errorMessage: widget.password.errorMessage,
      hintText: StringConstants.password,
      shouldHaveRulesWidget: true,
      haveUpperChar: widget.password.haveUpperChar,
      haveLowerChar: widget.password.haveLowerChar,
      haveNumber: widget.password.haveNumber,
      haveSpecialChar: widget.password.haveSpecialChar,
      validLenght: widget.password.validLenght,
    );
  }

  Widget _getPasswordConfirmTextField(BuildContext buildContext) {
    return PasswordWidget(
      focusNode: _passwordConfirmFocusNoode,
      textEditingController: _passwordConfirmTextEditingController,
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_termsAndConditionsFocusNode);
      },
      onChanged: (value) {
        widget.userRegisterBloc
            .addEvent(UserRegisterEvent.confirmPasswordChanged(value: value));
      },
      isError: widget.passwordConfirm.isError,
      errorMessage: widget.passwordConfirm.errorMessage,
      hintText: StringConstants.confirmPassword,
    );
  }

  Widget _getTermsAndConditionsWidget(BuildContext buildContext) {
    return Row(
      children: [
        Checkbox(
            value: widget.isTermsAndConditionsAccepted,
            focusNode: _termsAndConditionsFocusNode,
            activeColor: ColorConstants.greenColor,
            onChanged: (value) {
              widget.userRegisterBloc.addEvent(
                  UserRegisterEvent.termsAndConditionsChanged(value: value));
            }),
        Text(
          StringConstants.acceptTermsAndConditions,
          style: StyleConstants.detailsLabelTextStyle,
        )
      ],
    );
  }

  // Widget _getErrorMessageWidget(BuildContext buildContext) {
  //   return Text(
  //     widget.errorMessage,
  //     style: StyleConstants.errorMessageTextStyle,
  //     textAlign: TextAlign.start,
  //   );
  // }

  Widget _getCreateAccountButton(BuildContext buildContext) {
    return ButtonWidget(
        text: widget.userRegisterBloc.isProfile
            ? StringConstants.save
            : StringConstants.createAccount,
        onPress: () {
          FocusScope.of(context).requestFocus(_backgroundFocusNode);
          widget.userRegisterBloc.addEvent(UserRegisterEvent.createAccount());
        });
  }

  Widget _getCancelButton(BuildContext buildContext) {
    return ButtonWidget(
        text: widget.userRegisterBloc.isProfile
            ? StringConstants.goBack
            : StringConstants.cancel,
        color: ColorConstants.blackColor,
        onPress: () {
          FocusScope.of(context).requestFocus(_backgroundFocusNode);
          widget.userRegisterBloc
              .addEvent(UserRegisterEvent.cancelCreatingAccount());
        });
  }
}
