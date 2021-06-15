import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_price/add_vehicle_price_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_price_post_body_model.freezed.dart';
part 'add_vehicle_price_post_body_model.g.dart';

@freezed
abstract class AddVehiclePricePostBodyModel with _$AddVehiclePricePostBodyModel {
  const AddVehiclePricePostBodyModel._();

  const factory AddVehiclePricePostBodyModel({
    @JsonKey(name: 'id') @required int id, 
    @JsonKey(name: 'price_type_id') @required int priceTypeId,
    @JsonKey(name: 'price') int price,
    @JsonKey(name: 'bpm') int bpm,
    @JsonKey(name: 'vat') int vat,
    @JsonKey(name: 'trading_price') int tradingPrice,
    @JsonKey(name: 'export_price') int exportPrice
  }) = _AddVehiclePricePostBodyModel;

  factory AddVehiclePricePostBodyModel.fromDomain(AddVehiclePricePostBody postBody){
    return AddVehiclePricePostBodyModel(
      id: postBody.id,
      priceTypeId: postBody.priceTypeId,
      price: postBody.price,
      bpm: postBody.bpm,
      vat: postBody.vat,
      tradingPrice: postBody.tradingPrice,
      exportPrice: postBody.exportPrice
    );
  }

  factory AddVehiclePricePostBodyModel.fromJson(Map<String, dynamic> json) =>_$AddVehiclePricePostBodyModelFromJson(json);
}