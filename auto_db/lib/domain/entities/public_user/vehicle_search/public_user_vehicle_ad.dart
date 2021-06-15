import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_vehicle_ad.freezed.dart';

@freezed
abstract class PublicUserVehicleAd with _$PublicUserVehicleAd {
  const factory PublicUserVehicleAd({
    @required int id,
    String title,
    String price,
    String photo,
    AddVehicleLookup priceType,
    int year,
    int mileage,
    String mileageUnit,
    AddVehicleLookup fuelType,
    int engineSize,
    AddVehicleLookup vehicleTransmissionType,
    String kw,
    String hp,
    String traderLogo,
    UserInfo user
  }) = _PublicUserVehicleAd;
}
@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    int id,
    String accountType
  }) = _UserInfo;
}