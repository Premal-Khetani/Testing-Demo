part of 'add_vehicle_accessories_bloc.dart';

@freezed
abstract class AddVehicleAccessoriesEvent with _$AddVehicleAccessoriesEvent {
  const factory AddVehicleAccessoriesEvent.closeTapped() = CloseTapped;
  const factory AddVehicleAccessoriesEvent.saveTapped() = SaveTapped;
  const factory AddVehicleAccessoriesEvent.onRetryTapped() = OnRetryTapped;
  const factory AddVehicleAccessoriesEvent.addTapped() = AddTapped;
  const factory AddVehicleAccessoriesEvent.accessoryValueChanged({@required AccessoryLookup accessory, @required bool value}) = AccessoryValueChanged;
  const factory AddVehicleAccessoriesEvent.accessoryInputChanged({@required String value}) = AccessoryInputChanged;
  const factory AddVehicleAccessoriesEvent.deleteCustomAccessory({@required CustomAccessory customAccessory}) = DeleteCustomAccessory;
  const factory AddVehicleAccessoriesEvent.goToTopTapped({@required ScrollController scrollController}) = GoToTopTapped;
}