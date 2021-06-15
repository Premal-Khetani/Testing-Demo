part of 'lead_filters_bloc.dart';

@freezed
abstract class LeadFiltersState with _$LeadFiltersState{
  const factory LeadFiltersState({
    @required List<LeadFilter> filters,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _LeadFiltersState;

  factory LeadFiltersState.initial() => LeadFiltersState(
    filters: [],
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}