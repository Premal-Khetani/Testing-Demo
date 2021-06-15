part of 'lead_filters_bloc.dart';

@freezed
abstract class LeadFilterEvent with _$LeadFilterEvent{
  const factory LeadFilterEvent.close() = Close;
  const factory LeadFilterEvent.add() = Add;
  const factory LeadFilterEvent.update(LeadFilter filter) = Update;
  const factory LeadFilterEvent.delete(LeadFilter filter) = Delete;
  const factory LeadFilterEvent.onRetryTapped() = OnRetryTapped;
}