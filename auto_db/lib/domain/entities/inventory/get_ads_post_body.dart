import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ads_post_body.freezed.dart';

@freezed
abstract class GetAdsPostBody with _$GetAdsPostBody {
  const factory GetAdsPostBody({
    int offset,
    @required bool getCarData,
    bool incompleateData,
    AddVehicleLookup sort,
    int vehicleTypeId,
    int vehicleBrandId,
    int vehicleModelId,
    int vehicleTransmissionTypeId,
    int vehcileBodyWorkTypeId,
    int fuelTypeId,
    int yearFrom,
    int yeraTo,
    int priceFrom,
    int priceTo,
    int mileageFrom,
    int mileageTo,
    bool isMobile,
  }) = _GetAdsPostBody;
}