part of 'leads_bloc.dart';

@freezed
abstract class LeadsEvent with _$LeadsEvent {
  const factory LeadsEvent.onRetryTapped() = OnRetryTapped;
  const factory LeadsEvent.toLeadFiltersTapped() = ToLeadFiltersTapped;
  const factory LeadsEvent.onSendAnEmailTapped(int leadId) = OnSendAnEmailTapped;
  const factory LeadsEvent.onViewLeadContact(LeadContact leadContact) = OnViewLeadContact;
}