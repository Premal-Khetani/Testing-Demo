import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_ad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_vehicle_ad_model.freezed.dart';
part 'public_user_vehicle_ad_model.g.dart';

@freezed
abstract class PublicUserVehicleAdModel with _$PublicUserVehicleAdModel {
  const PublicUserVehicleAdModel._();

  const factory PublicUserVehicleAdModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'price') String price,
    @JsonKey(name: 'photos') String photo,
    @JsonKey(name: 'price_type') AddVehicleLookupModel priceType,
    @JsonKey(name: 'year') int year,
    @JsonKey(name: 'mileage') int mileage,
    @JsonKey(name: 'mileage_options') String mileageUnit,
    @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType,
    @JsonKey(name: 'engine_size') int engineSize,
    @JsonKey(name: 'transmission_type') AddVehicleLookupModel vehicleTransmissionType,
    @JsonKey(name: 'engine_power_kw') String kw,
    @JsonKey(name: 'engine_power_hp') String hp,
    @JsonKey(name: 'traderLogo') String traderLogo,
    @JsonKey(name: 'users') UserInfoModel user
  }) = _PublicUserVehicleAdModel;

  PublicUserVehicleAd toDomain(){
    return PublicUserVehicleAd(
      id: id,
      title: title,
      price: price,
      photo: photo,
      priceType: priceType == null ? null : priceType.toDomain(),
      year: year,
      mileage: mileage,
      mileageUnit: mileageUnit,
      fuelType: fuelType == null ? null : fuelType.toDomain(),
      engineSize: engineSize,
      vehicleTransmissionType: vehicleTransmissionType == null ? null : vehicleTransmissionType.toDomain(),
      kw: kw,
      hp: hp,
      traderLogo: traderLogo,
      user: user == null ? null : user.toDomain()
    );
  }

  factory PublicUserVehicleAdModel.fromJson(Map<String, dynamic> json) =>_$PublicUserVehicleAdModelFromJson(json);
}

@freezed
abstract class UserInfoModel with _$UserInfoModel {
  const UserInfoModel._();

  const factory UserInfoModel({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'account_type') String accountType
  }) = _UserInfoModel;

  UserInfo toDomain(){
    return UserInfo(
      id: id,
      accountType: accountType
    );
  }

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>_$UserInfoModelFromJson(json);
}