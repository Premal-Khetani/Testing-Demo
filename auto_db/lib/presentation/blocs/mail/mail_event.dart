part of 'mail_bloc.dart';

@freezed
abstract class MailEvent with _$MailEvent {
  const factory MailEvent.onSend() = OnSend;
  const factory MailEvent.onBack() = OnBack;
  const factory MailEvent.onSubjectChange({@required String value}) = OnSubjectChange;
  const factory MailEvent.onQuestionChange({@required String value}) = OnQuestionChange;
  const factory MailEvent.onEmailChange({@required String value}) = OnEmailChange;
  const factory MailEvent.onFullNameChange({@required String value}) = OnFullNameChange;
  const factory MailEvent.onHelpButtonTapped() = OnHelpButtonTapped;
}