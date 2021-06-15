import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_price_post_body.freezed.dart';

@freezed
abstract class AddVehiclePricePostBody with _$AddVehiclePricePostBody {
  const factory AddVehiclePricePostBody({
    @required int id, 
    @required int priceTypeId,
    int price,
    int bpm,
    int vat,
    int tradingPrice,
    int exportPrice
  }) = _AddVehiclePricePostBody;
}