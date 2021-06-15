import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

part 'add_vehicle_response_model.freezed.dart';
part 'add_vehicle_response_model.g.dart';

@freezed
abstract class AddVehicleResponseModel with _$AddVehicleResponseModel {
  const AddVehicleResponseModel._();

  const factory AddVehicleResponseModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'step_11') @required bool isLicensePlateSaved,
    @JsonKey(name: 'step_12') @required bool isSpecificationsSaved,
    @JsonKey(name: 'step_13') @required bool isDescriptionSaved,
    @JsonKey(name: 'step_2') @required bool isPhotosSaved,
    @JsonKey(name: 'step_3') @required bool isAccessoriesSaved,
    @JsonKey(name: 'step_4') @required bool isPriceSaved,
    @JsonKey(name: 'licence_plate') String licensePlate,
    @JsonKey(name: 'name') String stockNumber,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'vehicle_types') AddVehicleLookupModel vehicleType,
    @JsonKey(name: 'brands') AddVehicleLookupModel vehicleBrend,
    @JsonKey(name: 'car_models') AddVehicleLookupModel vehicleModel,
    @JsonKey(name: 'transmission_type') AddVehicleLookupModel vehicleTransmissionType,
    @JsonKey(name: 'body_work_type') AddVehicleLookupModel vehicleBodyWork,
    @JsonKey(name: 'year') int year,
    @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType,
    @JsonKey(name: 'mileage') int mileage,
    @JsonKey(name: 'mileage_options') String mileageUnit,
    @JsonKey(name: 'colors') AddVehicleLookupModel color,
    @JsonKey(name: 'interior') String interior,
    @JsonKey(name: 'engine_size') int engineSize,
    @JsonKey(name: 'accesories') List<AccessoryResponseModel> accessories,
    @JsonKey(name: 'custom_accesories') List<CustomAccessoryResponseModel> customAccessories,
    @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
    @JsonKey(name: 'price') String price,
    @JsonKey(name: 'bpm') String bpm,
    @JsonKey(name: 'vat') String vat,
    @JsonKey(name: 'trading_price') String tradePrice,
    @JsonKey(name: 'export_price') String exportPrice,
    @JsonKey(name: 'photos') String photo,
    @JsonKey(name: 'allImages') List<String> allImages,
    @JsonKey(name: 'reserved') int reserved
  }) = _AddVehicleResponseModel;

  AddVehicleResponse toDomain(){
    return AddVehicleResponse(
      id: id,
      isLicensePlateSaved: isLicensePlateSaved,
      isSpecificationsSaved: isSpecificationsSaved,
      isDescriptionSaved: isDescriptionSaved,
      isPhotosSaved: isPhotosSaved,
      isAccessoriesSaved: isAccessoriesSaved,
      isPriceSaved: isPriceSaved,
      licensePlate: licensePlate,
      stockNumber: stockNumber,
      title: title,
      description: description,
      vehicleType: vehicleType == null ? null : vehicleType.toDomain(),
      vehicleBrend: vehicleBrend == null ? null : vehicleBrend.toDomain(),
      vehicleModel: vehicleModel == null ? null : vehicleModel.toDomain(),
      vehicleTransmissionType: vehicleTransmissionType == null ? null : vehicleTransmissionType.toDomain(),
      vehicleBodyWork: vehicleBodyWork == null ? null : vehicleBodyWork.toDomain(),
      year: year,
      fuelType: fuelType == null ? null : fuelType.toDomain(),
      mileage: mileage,
      mileageUnit: mileageUnit,
      color: color == null ? null : color.toDomain(),
      interior: interior,
      engineSize: engineSize,
      accessories: accessories == null ? null : accessories.map((e) => e.toDomain()).toList(),
      customAccesories: customAccessories == null ? null : customAccessories.map((e) => e.toDomain()).toList(),
      priceType: priceType == null ? null : priceType.toDomain(),
      price: price,
      bpm: bpm,
      vat: vat,
      tradePrice: tradePrice,
      exportPrice: exportPrice,
      photo: photo,
      allImages: allImages,
      reserved: reserved == null ? null : _intToBool(reserved)
    );
  }

  bool _intToBool(int i){
    return i == 1;
  }

  factory AddVehicleResponseModel.fromJson(Map<String, dynamic> json) =>_$AddVehicleResponseModelFromJson(json);
}

@freezed
abstract class AccessoryResponseModel with _$AccessoryResponseModel {
  const AccessoryResponseModel._();

  const factory AccessoryResponseModel({
    @JsonKey(name: 'option_id') @required int accessoryId
  }) = _AccessoryResponseModel;

  AccessoryResponse toDomain(){
    return AccessoryResponse(
      accessoryId: accessoryId
    );
  }

  factory AccessoryResponseModel.fromJson(Map<String, dynamic> json) =>_$AccessoryResponseModelFromJson(json);
}

@freezed
abstract class CustomAccessoryResponseModel with _$CustomAccessoryResponseModel {
  const CustomAccessoryResponseModel._();

  const factory CustomAccessoryResponseModel({
    @JsonKey(name: 'accessory') @required String name
  }) = _CustomAccessoryResponseModel;

  CustomAccessoryResponse toDomain(){
    return CustomAccessoryResponse(
      name: name
    );
  }

  factory CustomAccessoryResponseModel.fromJson(Map<String, dynamic> json) =>_$CustomAccessoryResponseModelFromJson(json);
}