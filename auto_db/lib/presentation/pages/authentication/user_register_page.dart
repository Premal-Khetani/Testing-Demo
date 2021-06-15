import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/user_register/user_register_bloc.dart';
import 'package:auto_db/presentation/widgets/error_widgets/my_error_widget.dart';
import 'package:auto_db/presentation/widgets/error_widgets/no_internet_widget.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/user_register/user_register_form.dart';
import 'package:flutter/material.dart';

class UserRegisterPage extends StatefulWidget {
  final bool isProfile;
  const UserRegisterPage({Key key, this.isProfile = false}) : super(key: key);
  @override
  _UserRegisterPageState createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage>
    with WillPopRouteObserver {
  UserRegisterBloc _userRegisterBloc;

  @override
  void dispose() {
    _userRegisterBloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_userRegisterBloc == null) {
      _userRegisterBloc =
          UserRegisterBloc(context: context, isProfile: widget.isProfile);
    }
    super.didChangeDependencies();
  }

  @override
  willPopRoute() async {
    _userRegisterBloc.addEvent(UserRegisterEvent.close());
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: _drawBody(context),
    );
  }

  Widget _drawBody(BuildContext buildContext) {
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: widget.isProfile,
          haveHelpButton: widget.isProfile,
        ),
        NavigationWidget(
          title: widget.isProfile
              ? StringConstants.profile.toUpperCase()
              : StringConstants.registerTitle,
          textAlign: TextAlign.start,
          style: StyleConstants.bigPageTitleTextStyle,
          haveBackButton: true,
          onTrailerTapped: () {
            _userRegisterBloc.addEvent(UserRegisterEvent.close());
          },
        ),
        Expanded(flex: 1, child: _getRegistrationStateListener(buildContext))
      ],
    );
  }

  Widget _getRegistrationStateListener(BuildContext buildContext) {
    return StreamBuilder(
        initialData: _userRegisterBloc.registerFormInitialState,
        stream: _userRegisterBloc.outRegisterFormStateController,
        builder:
            (BuildContext contx, AsyncSnapshot<UserRegisterState> snapshot) {
          final state = snapshot.data;

          if (state.isSubmitting) {
            return LoaderWidget();
          }

          if(state.noInternetConnection){
            return NoInternetWidget(
              onRetryPressed: (){
                _userRegisterBloc.addEvent(UserRegisterEvent.onRetryTapped());
              }
            );
          }

        if(state.isError){
          return MyErrorWidget(
            massasge: state.errorMessage, 
            onRetryPressed: (){
              _userRegisterBloc.addEvent(UserRegisterEvent.onRetryTapped());
            }
          );
        }

          return UserRegisterForm(
            userRegisterBloc: _userRegisterBloc,
            accountTypeRadioButton: state.accountTypeRadioButton,
            company: state.company,
            cocNumber: state.cocNumber,
            mrOrMrsRadioButton: state.mrOrMrsRadioButton,
            firstName: state.firstName,
            inserts: state.inserts,
            surname: state.surname,
            zipCode: state.zipCode,
            streetNumber: state.streetNumber,
            addition: state.addition,
            street: state.street,
            city: state.city,
            country: state.country,
            phoneNumber: state.phoneNumber,
            alternativePhoneNumber: state.alternativePhoneNumber,
            // language: state.language,
            email: state.email,
            password: state.password,
            passwordConfirm: state.passwordConfirm,
            isTermsAndConditionsAccepted: state.isTermsAndConditionsAccepted
          );
        });
  }
}
