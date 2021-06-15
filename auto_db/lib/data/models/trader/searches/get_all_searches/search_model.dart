import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
abstract class SearchModel with _$SearchModel {
  const SearchModel._();

  const factory SearchModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'vehicle_types') @required AddVehicleLookupModel vehicleType,
    @JsonKey(name: 'search_from') @required String dateFrom,
    @JsonKey(name: 'search_to') @required String dateTo,
    @JsonKey(name: 'search_name') @required String searchName,
    @JsonKey(name: 'brands') AddVehicleLookupModel vehicleBrand,
    @JsonKey(name: 'car_models') AddVehicleLookupModel vehicleModel,
    @JsonKey(name: 'transmission_types') @required AddVehicleLookupModel vehicleTransmissionType,
    @JsonKey(name: 'bodywork_types') @required AddVehicleLookupModel vehcileBodyWorkType,
    @JsonKey(name: 'fuel_types') @required AddVehicleLookupModel fuelType,
    @JsonKey(name: 'year_from') String yearFrom,
    @JsonKey(name: 'year_to') String yeraTo,
    @JsonKey(name: 'price_from') @required String priceFrom,
    @JsonKey(name: 'price_to') @required String priceTo,
    @JsonKey(name: 'mileage_from') String mileageFrom,
    @JsonKey(name: 'mileage_to') String mileageTo,
  }) = _SearchModel;

  Search toDomain(){
    return Search(
      id: id,
      vehicleType: vehicleType == null ? null : vehicleType.toDomain(),
      dateFrom: dateFrom,
      dateTo: dateTo,
      searchName: searchName,
      vehicleBrand: vehicleBrand == null ? null : vehicleBrand.toDomain(),
      vehicleModel: vehicleModel == null ? null : vehicleModel.toDomain(),
      vehicleTransmissionType: vehicleTransmissionType == null ? null : vehicleTransmissionType.toDomain(),
      vehcileBodyWorkType: vehcileBodyWorkType == null ? null : vehcileBodyWorkType.toDomain(),
      fuelType: fuelType == null ? null : fuelType.toDomain(),
      yearFrom: yearFrom,
      yeraTo: yeraTo,
      priceFrom: priceFrom,
      priceTo: priceTo,
      mileageFrom: mileageFrom,
      mileageTo: mileageTo
    );
  }

  factory SearchModel.fromJson(Map<String, dynamic> json) =>_$SearchModelFromJson(json);
}