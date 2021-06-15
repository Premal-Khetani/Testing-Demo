import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/domain/entities/inventory/inventory_ad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_ad_model.freezed.dart';
part 'inventory_ad_model.g.dart';

@freezed
abstract class InventoryAdModel with _$InventoryAdModel {
  const InventoryAdModel._();

  const factory InventoryAdModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'licence_plate') String licensePlate,
    @JsonKey(name: 'name') String stockNumber,
    @JsonKey(name: 'price') String price,
    @JsonKey(name: 'photos') String photo,
    @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
    @JsonKey(name: 'reserved') int reserved
  }) = _InventoryAdModel;

  InventoryAd toDomain(){
    return InventoryAd(
      id: id,
      licensePlate: licensePlate,
      stockNumber: stockNumber,
      price: price,
      photo: photo,
      priceType: priceType == null ? null : priceType.toDomain(),
      reserved: reserved == null ? null : _intToBool(reserved)
    );
  }

  bool _intToBool(int i){
    return i == 1;
  }

  factory InventoryAdModel.fromJson(Map<String, dynamic> json) =>_$InventoryAdModelFromJson(json);
}