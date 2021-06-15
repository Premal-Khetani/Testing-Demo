part of 'add_vehicle_price_bloc.dart';

@freezed
abstract class AddVehiclePriceEvent with _$AddVehiclePriceEvent {
  const factory AddVehiclePriceEvent.close() = Close; 
  const factory AddVehiclePriceEvent.save() = Save;
  const factory AddVehiclePriceEvent.onRetryTapped() = OnRetryTapped;
  const factory AddVehiclePriceEvent.onViewAdTapped() = OnViewAdTapped;
  const factory AddVehiclePriceEvent.onWhatHappensAffterSaveTapped() = OnWhatHappensAffterSaveTapped;
  const factory AddVehiclePriceEvent.priceTypeChanged({@required AddVehicleLookup value}) = PriceTypeChanged;
  const factory AddVehiclePriceEvent.priceChanged({@required String value}) = PriceChanged;
  const factory AddVehiclePriceEvent.bpmChanged({@required String value}) = BpmChanged;
  const factory AddVehiclePriceEvent.vatChanged({@required String value}) = VatChanged;
  const factory AddVehiclePriceEvent.traderPriceChanged({@required String value}) = TraderPriceChanged;
  const factory AddVehiclePriceEvent.exportPriceChanged({@required String value}) = ExportPriceChanged;
}