import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/value_objects/email.dart';
import 'package:auto_db/domain/value_objects/password.dart';
import 'package:auto_db/presentation/blocs/user_login/user_login_bloc.dart';
import 'package:auto_db/presentation/widgets/button_widget.dart';
import 'package:auto_db/presentation/widgets/clickable_label.dart';
import 'package:auto_db/presentation/widgets/switch_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/email_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/password_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginForm extends StatefulWidget {
  final UserLoginBloc userLoginBloc;
  final Email email;
  final Password password;
  final bool stayLoggedIn;
  final double cmsContentHeight;

  const LoginForm({
    Key key, 
    @required this.userLoginBloc, 
    @required this.email, 
    @required this.password,
    @required this.stayLoggedIn,
    @required this.cmsContentHeight
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();

  MyTextEditingController _emailTextEditingController = MyTextEditingController();
  MyTextEditingController _passwordTextEditingController = MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _emailTextEditingController.setTextAndPosition(widget.email.value);
    _passwordTextEditingController.setTextAndPosition(widget.password.value);

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(_backgroundFocusNode);
      },
      child: LayoutBuilder(
        builder: (buildContext, constraints){
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight
              ),
              padding: EdgeInsets.all(2.2 * SizeConfig.heightMultiplier),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    StringConstants.login,
                    style: StyleConstants.loginLabelTextStyle,
                  ),
                  SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        StringConstants.notYetRegistered + ' ',
                        style: StyleConstants.detailsLabelTextStyle,
                      ),
                      Image.asset(
                        'images/auto_db_logo.png',
                        height: 1.9 * SizeConfig.imageSizeMultiplier,
                      ),
                      Text(
                        '?',
                        style: StyleConstants.detailsLabelTextStyle,
                      ),
                    ],
                  ),
                  ClickableLabel(
                    text: StringConstants.createNewAccount, 
                    onClicked: (){
                      widget.userLoginBloc.addEvent(UserLoginEvent.onRegisterTapped());
                    }
                  ),
                  SizedBox(height: 2.2 * SizeConfig.heightMultiplier),
                  EmailWidget(
                    focusNode: _emailFocusNode, 
                    textEditingController: _emailTextEditingController,
                    onChanged: (value){
                      widget.userLoginBloc.addEvent(UserLoginEvent.emailChanged(value: value));
                    },  
                    onEditingComplete: (){
                      FocusScope.of(context).requestFocus(_passwordFocusNode);
                    },
                    isError: widget.email.isError,
                    errorMessage: widget.email.errorMessage,
                    hintText: StringConstants.email,
                  ),
                  SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  PasswordWidget(
                    focusNode: _passwordFocusNode, 
                    textEditingController: _passwordTextEditingController,
                    onChanged: (value){
                      widget.userLoginBloc.addEvent(UserLoginEvent.passwordChanged(value: value));
                    },  
                    onEditingComplete: (){
                      FocusScope.of(context).requestFocus(_backgroundFocusNode);
                      widget.userLoginBloc.addEvent(UserLoginEvent.login());
                    }, 
                    isError: widget.password.isError,
                    errorMessage: widget.password.errorMessage,
                    hintText: StringConstants.password,
                  ),
                  SizedBox(height: 0.75 * SizeConfig.heightMultiplier),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SwitchWidget(
                        value: widget.stayLoggedIn, 
                        onChanged: (value){
                          widget.userLoginBloc.addEvent(UserLoginEvent.stayLoggedInChanged(value: value));
                        }
                      ),
                      SizedBox(width: 1.5 * SizeConfig.widthMultiplier),
                      Expanded(
                        flex: 1,
                        child: Text(
                          StringConstants.stayLoggedIn,
                          style: StyleConstants.detailsLabelTextStyle,
                          textAlign: TextAlign.start,
                        )
                      )
                    ],
                  ),
                  SizedBox(height: 0.75 * SizeConfig.heightMultiplier),
                  ButtonWidget(
                    text: StringConstants.login,
                    onPress: (){
                      widget.userLoginBloc.addEvent(UserLoginEvent.login());
                    },
                  ),
                  SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  ClickableLabel(
                    text: StringConstants.passwordForgotten,
                    onClicked: (){
                      widget.userLoginBloc.addEvent(UserLoginEvent.onForgotPasswordTapped());
                    },
                  ),
                  SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  Container(
                    height : widget.cmsContentHeight,
                    child: WebView(
                      onWebViewCreated: (_controller) {
                        widget.userLoginBloc.addEvent(UserLoginEvent.cmsContentWebViewCreated(webViewController: _controller));
                      },
                      onPageFinished: (_) {
                        widget.userLoginBloc.addEvent(UserLoginEvent.cmsContentPageFinishedLoading());
                      },
                      onWebResourceError: (error){
                        print('Web view error: ' + error.toString());
                      },
                      javascriptMode: JavascriptMode.unrestricted,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}