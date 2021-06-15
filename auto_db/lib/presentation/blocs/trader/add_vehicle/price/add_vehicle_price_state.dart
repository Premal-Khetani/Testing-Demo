part of 'add_vehicle_price_bloc.dart';

@freezed
abstract class AddVehiclePriceState with _$AddVehiclePriceState {
  const factory AddVehiclePriceState({
    @required PriceType priceType,
    @required Price price,
    @required bool isPriceEnabled,
    @required Price bpm,
    @required bool isBpmEnabled,
    @required Price vat,
    @required bool isVatEnabled,
    @required Price tradingPrice,
    @required bool isTradingPriceEnabled,
    @required Price exportPrice,
    @required bool isExportPriceEnabled,
    @required bool isSubmitting,
    @required bool isError,
    @required String errorMessage,
    @required bool noInternetConnection
  }) = _AddVehiclePriceState;

  factory AddVehiclePriceState.initial() => AddVehiclePriceState(
    priceType: PriceType.initial(),
    price: Price.initial(),
    isPriceEnabled: true,
    bpm: Price.initial(),
    isBpmEnabled: true,
    vat: Price.initial(),
    isVatEnabled: true,
    tradingPrice: Price.initial(),
    isTradingPriceEnabled: true,
    exportPrice: Price.initial(),
    isExportPriceEnabled: true,
    isSubmitting: true,
    isError: false,
    errorMessage: '',
    noInternetConnection: false
  );
}