import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
abstract class Search with _$Search{
  const factory Search({
    @required int id,
    @required AddVehicleLookup vehicleType,
    @required String dateFrom,
    @required String dateTo,
    @required String searchName,
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
  }) = _Search;
}