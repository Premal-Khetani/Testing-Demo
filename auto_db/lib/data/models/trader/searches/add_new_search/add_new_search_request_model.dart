import 'package:auto_db/domain/entities/searches/add_new_search/add_new_search_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_search_request_model.freezed.dart';
part 'add_new_search_request_model.g.dart';

@freezed
abstract class AddNewSearchRequestModel with _$AddNewSearchRequestModel {
  const AddNewSearchRequestModel._();

  const factory AddNewSearchRequestModel({
    @JsonKey(name: 'search_id') int id,
    @JsonKey(name: 'vehicle') @required int vehicleTypeId,
    @JsonKey(name: 'search_from') @required String dateFrom,
    @JsonKey(name: 'search_to') @required String dateTo,
    @JsonKey(name: 'search_name') @required String searchName,
    @JsonKey(name: 'brand') int vehicleBrandId,
    @JsonKey(name: 'model') int vehicleModelId,
    @JsonKey(name: 'transmission_type') @required int vehicleTransmissionTypeId,
    @JsonKey(name: 'bodywork_type') @required int vehcileBodyWorkTypeId,
    @JsonKey(name: 'fuel_type') @required int fuelTypeId,
    @JsonKey(name: 'year_from') int yearFrom,
    @JsonKey(name: 'year_to') int yeraTo,
    @JsonKey(name: 'price_from') @required int priceFrom,
    @JsonKey(name: 'price_to') @required int priceTo,
    @JsonKey(name: 'mileage_from') int mileageFrom,
    @JsonKey(name: 'mileage_to') int mileageTo,
  }) = _AddNewSearchRequestModel;

  factory AddNewSearchRequestModel.fromDomain(AddNewSearchRequest postBody){
    return AddNewSearchRequestModel(
      id: postBody.id,
      vehicleTypeId: postBody.vehicleTypeId,
      dateFrom: postBody.dateFrom,
      dateTo: postBody.dateTo,
      searchName: postBody.searchName,
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
    );
  }

  factory AddNewSearchRequestModel.fromJson(Map<String, dynamic> json) =>_$AddNewSearchRequestModelFromJson(json);
}