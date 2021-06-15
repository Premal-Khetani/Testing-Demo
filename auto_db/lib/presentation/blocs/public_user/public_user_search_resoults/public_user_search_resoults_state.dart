part of 'public_user_search_resoults_bloc.dart';

@freezed
abstract class PublicUserSearchResoultsState with _$PublicUserSearchResoultsState {
  const factory PublicUserSearchResoultsState({
    @required InventoryFilter inventoryFilter,
    @required List<PublicSearchListingModel> ads,
    @required int offset,
    @required bool isRichedTheEnd,
    @required bool isPaginationError,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _PublicUserSearchResoultsState;

  factory PublicUserSearchResoultsState.initial() => PublicUserSearchResoultsState(
    inventoryFilter: InventoryFilter.initial(),
    ads: List<PublicSearchListingModel>(),
    offset: 0,
    isPaginationError: false,
    isRichedTheEnd: false,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}