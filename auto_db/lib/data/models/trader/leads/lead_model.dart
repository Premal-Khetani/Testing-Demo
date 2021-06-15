import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_model.freezed.dart';
part 'lead_model.g.dart';

@freezed
abstract class LeadModel with _$LeadModel {
  const LeadModel._();

  const factory LeadModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'vehicle_types') @required AddVehicleLookupModel vehicleType,
    @JsonKey(name: 'search_from') @required String dateFrom,
    @JsonKey(name: 'search_to') @required String dateTo,
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
    @JsonKey(name: 'leads_contacts') List<LeadContactModel> leadContacts,
  }) = _LeadModel;

  Lead toDomain(){
    return Lead(
      id: id,
      vehicleType: vehicleType == null ? null : vehicleType.toDomain(),
      dateFrom: dateFrom,
      dateTo: dateTo,
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
      mileageTo: mileageTo,
      leadContacts: leadContacts == null ? null : leadContacts.map((e) => e.toDomain()).toList() 
    );
  }

  factory LeadModel.fromJson(Map<String, dynamic> json) =>_$LeadModelFromJson(json);
}

@freezed
abstract class LeadContactModel with _$LeadContactModel {
  const LeadContactModel._();

  const factory LeadContactModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'subject') String subject,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'trader_search_id') int traderSearchId,
    @JsonKey(name: 'created_at') String createdAt
  }) = _LeadContactModel;

  LeadContact toDomain(){
    return LeadContact(
      id: id,
      subject: subject,
      message: message,
      userId: userId,
      traderSearchId: traderSearchId,
      createdAt: createdAt
    );
  }

  factory LeadContactModel.fromJson(Map<String, dynamic> json) =>_$LeadContactModelFromJson(json);
}

