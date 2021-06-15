import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ads_post_body_model.freezed.dart';
part 'get_ads_post_body_model.g.dart';

@freezed
abstract class GetAdsPostBodyModel with _$GetAdsPostBodyModel {
  const GetAdsPostBodyModel._();

  const factory GetAdsPostBodyModel({
    @JsonKey(name: 'offset') int offset,
    @JsonKey(name: 'getCarData') @required bool getCarData,
    @JsonKey(name: 'incompleate') bool incompleateData,
    @JsonKey(name: 'sort') AddVehicleLookupModel sort,
    @JsonKey(name: 'vehicle_type') int vehicleTypeId,
    @JsonKey(name: 'brand') int vehicleBrandId,
    @JsonKey(name: 'model') int vehicleModelId,
    @JsonKey(name: 'transmission_type') int vehicleTransmissionTypeId,
    @JsonKey(name: 'bodywork_type') int vehcileBodyWorkTypeId,
    @JsonKey(name: 'fuel_type') int fuelTypeId,
    @JsonKey(name: 'year_from') int yearFrom,
    @JsonKey(name: 'year_to') int yeraTo,
    @JsonKey(name: 'price_from') int priceFrom,
    @JsonKey(name: 'price_to') int priceTo,
    @JsonKey(name: 'mileage_from') int mileageFrom,
    @JsonKey(name: 'mileage_to') int mileageTo,
    @JsonKey(name: 'mobile') bool isMobile
  }) = _GetAdsPostBodyModel;

  factory GetAdsPostBodyModel.fromDomain(GetAdsPostBody postBody){
    return GetAdsPostBodyModel(
      offset : postBody.offset,
      getCarData: postBody.getCarData,
      incompleateData: postBody.incompleateData,
      sort: postBody.sort != null ? AddVehicleLookupModel.fromDomain(postBody.sort) : null,
      vehicleTypeId: postBody.vehicleTypeId,
      vehicleBrandId: postBody.vehicleBrandId,
      vehicleModelId: postBody.vehicleModelId,
      vehicleTransmissionTypeId: postBody.vehicleTransmissionTypeId,
      vehcileBodyWorkTypeId: postBody.vehcileBodyWorkTypeId,
      fuelTypeId: postBody.fuelTypeId,
      yearFrom: postBody.yearFrom,
      yeraTo: postBody.yeraTo,
      priceFrom: postBody.priceFrom,
      priceTo: postBody.priceTo,
      mileageFrom: postBody.mileageFrom,
      mileageTo: postBody.mileageTo,
      isMobile: postBody.isMobile
    );
  }

  factory GetAdsPostBodyModel.fromJson(Map<String, dynamic> json) =>_$GetAdsPostBodyModelFromJson(json);
}