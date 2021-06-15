part of 'leads_bloc.dart';

@freezed
abstract class LeadsState with _$LeadsState {
  const factory LeadsState({
    @required List<LeadListingModel> leads,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _LeadsState;

  factory LeadsState.initial() => LeadsState(
    leads: List<LeadListingModel>(),
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}