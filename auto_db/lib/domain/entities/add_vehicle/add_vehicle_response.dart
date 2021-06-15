import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_response.freezed.dart';

@freezed
abstract class AddVehicleResponse with _$AddVehicleResponse {
  const factory AddVehicleResponse({
    int id,
    @required bool isLicensePlateSaved,
    @required bool isSpecificationsSaved,
    @required bool isDescriptionSaved,
    @required bool isPhotosSaved,
    @required bool isAccessoriesSaved,
    @required bool isPriceSaved,
    String licensePlate,
    String stockNumber,
    String title,
    String description,
    AddVehicleLookup vehicleType,
    AddVehicleLookup vehicleBrend,
    AddVehicleLookup vehicleModel,
    AddVehicleLookup vehicleTransmissionType,
    AddVehicleLookup vehicleBodyWork,
    int year,
    AddVehicleLookup fuelType,
    int mileage,
    String mileageUnit,
    AddVehicleLookup color,
    String interior,
    int engineSize,
    List<AccessoryResponse> accessories,
    List<CustomAccessoryResponse> customAccesories,
    AddVehicleLookup priceType,
    String price,
    String bpm,
    String vat,
    String tradePrice,
    String exportPrice,
    String photo,
    List<String> allImages,
    bool reserved
  }) = _AddVehicleResponse;
}

@freezed
abstract class AccessoryResponse with _$AccessoryResponse {
  const factory AccessoryResponse({
    @required int accessoryId
  }) = _AAccessoryResponse;
}

@freezed
abstract class CustomAccessoryResponse with _$CustomAccessoryResponse {
  const factory CustomAccessoryResponse({
    @required String name
  }) = _CustomAccessoryResponse;
}