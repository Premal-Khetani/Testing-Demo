// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeadModel _$_$_LeadModelFromJson(Map<String, dynamic> json) {
  return _$_LeadModel(
    id: json['id'] as int,
    vehicleType: json['vehicle_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['vehicle_types'] as Map<String, dynamic>),
    dateFrom: json['search_from'] as String,
    dateTo: json['search_to'] as String,
    vehicleBrand: json['brands'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['brands'] as Map<String, dynamic>),
    vehicleModel: json['car_models'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['car_models'] as Map<String, dynamic>),
    vehicleTransmissionType: json['transmission_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['transmission_types'] as Map<String, dynamic>),
    vehcileBodyWorkType: json['bodywork_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['bodywork_types'] as Map<String, dynamic>),
    fuelType: json['fuel_types'] == null
        ? null
        : AddVehicleLookupModel.fromJson(
            json['fuel_types'] as Map<String, dynamic>),
    yearFrom: json['year_from'] as String,
    yeraTo: json['year_to'] as String,
    priceFrom: json['price_from'] as String,
    priceTo: json['price_to'] as String,
    mileageFrom: json['mileage_from'] as String,
    mileageTo: json['mileage_to'] as String,
    leadContacts: (json['leads_contacts'] as List)
        ?.map((e) => e == null
            ? null
            : LeadContactModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LeadModelToJson(_$_LeadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_types': instance.vehicleType,
      'search_from': instance.dateFrom,
      'search_to': instance.dateTo,
      'brands': instance.vehicleBrand,
      'car_models': instance.vehicleModel,
      'transmission_types': instance.vehicleTransmissionType,
      'bodywork_types': instance.vehcileBodyWorkType,
      'fuel_types': instance.fuelType,
      'year_from': instance.yearFrom,
      'year_to': instance.yeraTo,
      'price_from': instance.priceFrom,
      'price_to': instance.priceTo,
      'mileage_from': instance.mileageFrom,
      'mileage_to': instance.mileageTo,
      'leads_contacts': instance.leadContacts,
    };

_$_LeadContactModel _$_$_LeadContactModelFromJson(Map<String, dynamic> json) {
  return _$_LeadContactModel(
    id: json['id'] as int,
    subject: json['subject'] as String,
    message: json['message'] as String,
    userId: json['user_id'] as int,
    traderSearchId: json['trader_search_id'] as int,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_LeadContactModelToJson(
        _$_LeadContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'message': instance.message,
      'user_id': instance.userId,
      'trader_search_id': instance.traderSearchId,
      'created_at': instance.createdAt,
    };
