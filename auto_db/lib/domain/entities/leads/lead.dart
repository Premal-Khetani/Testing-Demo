import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead.freezed.dart';

@freezed
abstract class Lead with _$Lead{
  const factory Lead({
    @required int id,
    @required AddVehicleLookup vehicleType,
    @required String dateFrom,
    @required String dateTo,
    AddVehicleLookup vehicleBrand,
    AddVehicleLookup vehicleModel,
    @required AddVehicleLookup vehicleTransmissionType,
    @required AddVehicleLookup vehcileBodyWorkType,
    @required AddVehicleLookup fuelType,
    String yearFrom,
    String yeraTo,
    @required String priceFrom,
    @required String priceTo,
    String mileageFrom,
    String mileageTo,
    List<LeadContact> leadContacts
  }) = _Lead;
}

@freezed
abstract class LeadContact with _$LeadContact{
  const factory LeadContact({
    @required int id,
    String subject,
    String message,
    int userId,
    int traderSearchId,
    String createdAt
  }) = _LeadContact;
}