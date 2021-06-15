part of 'inventory_bloc.dart';

@freezed
abstract class InventoryState with _$InventoryState {
  const factory InventoryState({
    @required bool haveCarsInInventory,
    @required bool isCheckedForNumberOfVehiclesInInventory,
    @required InventoryFilter inventoryFilter,
    @required String vehicleBrand,
    @required List<InventoryAd> ads,
    @required int numberOfVehicles,
    @required int offset,
    @required bool isRichedTheEnd,
    @required bool isPaginationError,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _InventoryState;

  factory InventoryState.initial() => InventoryState(
    haveCarsInInventory: false,
    isCheckedForNumberOfVehiclesInInventory: false,
    inventoryFilter: InventoryFilter.initial(),
    vehicleBrand: '',
    ads: List<InventoryAd>(),
    numberOfVehicles: 0,
    offset: 0,
    isPaginationError: false,
    isRichedTheEnd: false,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}