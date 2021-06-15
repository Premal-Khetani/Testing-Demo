part of 'searches_bloc.dart';

@freezed
abstract class SearchesState with _$SearchesState {
  const factory SearchesState({
    @required List<SearchListingModel> searches,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _SearchesState;

  factory SearchesState.initial() => SearchesState(
    searches: List<SearchListingModel>(),
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}