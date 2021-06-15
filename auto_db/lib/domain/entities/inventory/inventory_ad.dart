import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_ad.freezed.dart';

@freezed
abstract class InventoryAd with _$InventoryAd {
  const factory InventoryAd({
    @required int id,
    String licensePlate,
    String stockNumber,
    String price,
    String photo,
    AddVehicleLookup priceType,
    bool reserved
  }) = _InventoryAd;
}