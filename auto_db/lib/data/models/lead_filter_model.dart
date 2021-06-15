
import 'package:auto_db/domain/lead_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dropdowns/add_vehicle_lookup_model.dart';

part 'lead_filter_model.freezed.dart';
part 'lead_filter_model.g.dart';

@freezed
abstract class LeadFilterModel with _$LeadFilterModel {
  const LeadFilterModel._();

  const factory LeadFilterModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'vehicle_types') AddVehicleLookupModel vehicleType,
    @JsonKey(name: 'brands') AddVehicleLookupModel brand,
    @JsonKey(name: 'car_models') AddVehicleLookupModel carModel,
    @JsonKey(name: 'fuel_type') AddVehicleLookupModel fuelType,
  }) = _LeadFilterModel;


  factory LeadFilterModel.fromJson(Map<String, dynamic> json) =>_$LeadFilterModelFromJson(json);

  LeadFilter toDomain(){
    return LeadFilter(
      id: id,
      vehicleType: vehicleType?.toDomain(),
      brand: brand?.toDomain(),
      carModel: carModel?.toDomain(),
      fuelType: fuelType?.toDomain()
    );
  }
}