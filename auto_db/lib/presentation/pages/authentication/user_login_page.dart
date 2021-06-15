import 'dart:io';

import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/presentation/blocs/user_login/user_login_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/user_login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UserLoginPage extends StatefulWidget {
  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  UserLoginBloc _userLoginBloc;

  @override
  void dispose() {
    _userLoginBloc?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if(_userLoginBloc == null){
      _userLoginBloc = UserLoginBloc(context: context);
    }
    super.didChangeDependencies();
  }
  
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid){
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: _drawBody(context),
    );
  }

  Widget _drawBody(BuildContext buildContext){
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: false,
          haveHelpButton: false,
        ),
        NavigationWidget(
          title: StringConstants.loginTitle, 
          textAlign: TextAlign.center,
          style: StyleConstants.pageTitleTextStyle, 
          haveBackButton: false,
        ),
        Expanded(
          flex: 1,
          child: _getLoginStateListener(buildContext) 
        )
      ],
    );
  }

  Widget _getLoginStateListener(BuildContext buildContext){
    return StreamBuilder(
      initialData: _userLoginBloc.loginFormInitialState,
      stream: _userLoginBloc.outLoginFormStateController,
      builder: (BuildContext context, AsyncSnapshot<UserLoginState> snapshot){
        final state = snapshot.data;

        if(state.isSubmitting){
          return LoaderWidget();
        }

        return LoginForm(
          userLoginBloc: _userLoginBloc,
          email: state.email,
          password: state.password, 
          stayLoggedIn: state.stayLoggedIn,
          cmsContentHeight: state.cmsContentHeight
        );
      }
    );
  }

}