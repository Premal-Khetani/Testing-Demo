part of 'inventory_bloc.dart';

@freezed
abstract class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.onAddVehicleTapped() = OnAddVehicleTapped;
  const factory InventoryEvent.onRetryTapped() = OnRetryTapped;
  const factory InventoryEvent.onSearchTapped() = OnSearchTapped;
  const factory InventoryEvent.onFilterValueChanged({@required AddVehicleLookup value}) = OnFilterValueChanged;
  const factory InventoryEvent.onAdTapped({@required int vehicleId}) = OnAdTapped;
  const factory InventoryEvent.getPageData() = GetPageData;
}