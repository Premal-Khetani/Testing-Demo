import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/dropdowns/accessory_lookup.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/dropdowns/country_lookup.dart';
import 'package:auto_db/domain/entities/dropdowns/string_lookup.dart';
import 'package:flutter/foundation.dart';

abstract class DropdownDataRepository{
  Future<ResponseWrapper<List<CountryLookup>>> getCountrysLookups();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleTypes();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleBrans();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleModels({@required int brandId});
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleTransmissionTypes();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleBodyWorkTypes();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleFuelTypes();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleColors();
  Future<ResponseWrapper<List<StringLookup>>> getVehicleInteriors();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getPriceTypes();
  Future<ResponseWrapper<List<AccessoryLookup>>> getAccessories();
  Future<ResponseWrapper<List<AddVehicleLookup>>> getAdSearchFilterOptions();
}