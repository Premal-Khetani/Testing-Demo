part of 'mail_bloc.dart';

@freezed
abstract class MailState with _$MailState{
  const factory MailState({
    @required NotEmptyString subject,
    @required NotEmptyString question,
    @required NotEmptyString fullName,
    @required Email email,
    @required bool isSubmitting
  }) = _MailState;

  factory MailState.initial() => MailState(
    subject: NotEmptyString.initialWithErrorMessage(StringConstants.emptyInputError),
    question: NotEmptyString.initialWithErrorMessage(StringConstants.emptyInputError),
    fullName: NotEmptyString.initialWithErrorMessage(StringConstants.emptyInputError),
    email: Email.initial(),
    isSubmitting: false,
  );
}