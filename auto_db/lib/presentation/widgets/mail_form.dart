import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/value_objects/email.dart';
import 'package:auto_db/domain/value_objects/not_empty_string.dart';
import 'package:auto_db/presentation/widgets/text_fields/email_widget.dart';
import 'package:auto_db/presentation/widgets/text_fields/multiline_text_field.dart';
import 'package:auto_db/presentation/widgets/text_fields/my_text_editing_controller.dart';
import 'package:auto_db/presentation/widgets/text_fields/text_input_widget.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';

class MailForm extends StatefulWidget {
  final NotEmptyString subject;
  final NotEmptyString question;
  final NotEmptyString fullName;
  final Email email;
  final Function(String value) onSubjectChanged;
  final Function(String value) onQuestionChanged;
  final Function(String value) onNameChanged;
  final Function(String value) onEmailChanged;
  final VoidCallback onSend;
  final VoidCallback onBack;

  const MailForm({
    Key key,
    this.subject,
    this.question,
    this.fullName,
    this.email,
    this.onSubjectChanged,
    this.onQuestionChanged,
    this.onNameChanged,
    this.onEmailChanged,
    this.onSend,
    this.onBack,
  }) : super(key: key);

  @override
  _MailFormState createState() {
    return _MailFormState();
  }
}

class _MailFormState extends State<MailForm> {
  FocusNode _backgroundFocusNode = FocusNode();
  FocusNode _subjectFocusNode = FocusNode();
  FocusNode _questionFocusNode = FocusNode();
  FocusNode _nameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();

  MyTextEditingController _subjectTextEditingController =
      MyTextEditingController();
  MyTextEditingController _questionTextEditingController =
      MyTextEditingController();
  MyTextEditingController _nameTextEditingController =
      MyTextEditingController();
  MyTextEditingController _emailTextEditingController =
      MyTextEditingController();

  @override
  Widget build(BuildContext context) {
    _subjectTextEditingController.setTextAndPosition(widget.subject.value);
    _questionTextEditingController.setTextAndPosition(widget.question.value);
    _nameTextEditingController.setTextAndPosition(widget.fullName.value);
    _emailTextEditingController.setTextAndPosition(widget.email.value);
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
                children: [
                  TextInputWidget(
                    focusNode: _subjectFocusNode,
                    textEditingController: _subjectTextEditingController,
                    onEditingComplete: () {
                      FocusScope.of(buildContext)
                          .requestFocus(_questionFocusNode);
                    },
                    onChanged: (value) {
                      widget.onSubjectChanged?.call(value);
                    },
                    isError: widget.subject.isError,
                    errorMessage: widget.subject.errorMessage,
                    hintText: StringConstants.subject,
                  ),
                  SizedBox(height: SizeConfig.separatorSize),
                  MultilineTextField(
                    height: 30 * SizeConfig.heightMultiplier,
                    focusNode: _questionFocusNode,
                    textEditingController: _questionTextEditingController,
                    onEditingComplete: () {
                      FocusScope.of(buildContext).requestFocus(_nameFocusNode);
                    },
                    onChanged: (value) {
                      widget.onQuestionChanged?.call(value);
                    },
                    isError: widget.question.isError,
                    errorMessage: widget.question.errorMessage, //
                    hintText: StringConstants.questionComment,
                    haveLenghtValidator: false,
                  ),
                  SizedBox(height: SizeConfig.separatorSize),
                  TextInputWidget(
                    focusNode: _nameFocusNode,
                    textEditingController: _nameTextEditingController,
                    onEditingComplete: () {
                      FocusScope.of(buildContext).requestFocus(_emailFocusNode);
                    },
                    onChanged: (value) {
                      widget.onNameChanged?.call(value);
                    },
                    isError: widget.fullName.isError,
                    errorMessage: widget.fullName.errorMessage,
                    hintText: StringConstants.fullName,
                  ),
                  SizedBox(height: SizeConfig.separatorSize),
                  EmailWidget(
                    focusNode: _emailFocusNode,
                    textEditingController: _emailTextEditingController,
                    onEditingComplete: () {
                      FocusScope.of(buildContext)
                          .requestFocus(_backgroundFocusNode);
                    },
                    onChanged: (value) {
                      widget.onEmailChanged?.call(value);
                    },
                    isError: widget.email.isError,
                    errorMessage: widget.email.errorMessage,
                    hintText: StringConstants.email,
                  ),
                  SizedBox(height: SizeConfig.separatorSize),
                  ButtonWidget(
                      text: StringConstants.send,
                      onPress: () {
                        widget.onSend?.call();
                      }),
                  //SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                  if(widget.onBack != null)
                    ButtonWidget(
                        text: StringConstants.goBack,
                        color: ColorConstants.blackColor,
                        onPress: () {
                          widget.onBack.call();
                        }),  
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
