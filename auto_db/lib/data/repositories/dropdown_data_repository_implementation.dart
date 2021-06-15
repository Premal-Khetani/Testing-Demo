import 'dart:convert';

import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/dropdowns/accessory_lookup_model.dart';
import 'package:auto_db/data/models/dropdowns/add_vehicle_lookup_model.dart';
import 'package:auto_db/data/models/dropdowns/country_lookup_model.dart';
import 'package:auto_db/data/models/dropdowns/string_lookup_model.dart';
import 'package:auto_db/domain/entities/dropdowns/accessory_lookup.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/dropdowns/country_lookup.dart';
import 'package:auto_db/domain/entities/dropdowns/string_lookup.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

const String _getVehicleColorsPath = '/passport/colors';
const String _getVehicleBodyWorksPath = '/passport/bodywork-types';
const String _getVehicleBrandsPath = '/passport/brands';
const String _getVehicleFuelTypesPath = '/passport/fuel-types';
const String _getVehicleModelsPath = '/passport/car-models';
const String _getVehicleTransmissionTypesPath = '/passport/transmission-types';
const String _getVehicleTypesPath = '/passport/vehicle-types';
const String _getPriceTypesPath = '/passport/price-types';
const String _getAccessoriesPath = '/passport/options-accessories';

class DropdownDataRepositoryImplementation implements DropdownDataRepository {
  MainDioClient dioClient;

  DropdownDataRepositoryImplementation(){
    _resolveDependencies();
  }

  void _resolveDependencies(){
    dioClient =  getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<List<CountryLookup>>> getCountrysLookups() async {
    ResponseWrapper<List<CountryLookup>> _responseWrapper = ResponseWrapper<List<CountryLookup>>();
    
    final _jsonString = await rootBundle.loadString('files/json/countries.json');
    Iterable i = jsonDecode(_jsonString);
    _responseWrapper.body = i.map((country) => CountryLookupModel.fromJson(country).toDomain()).toList();

    return _responseWrapper; 
  }


  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleColors() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleColorsPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle colors'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle colors response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle colors error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<StringLookup>>> getVehicleInteriors() async {
    ResponseWrapper<List<StringLookup>> _responseWrapper = ResponseWrapper<List<StringLookup>>();
    
    final _jsonString = await rootBundle.loadString('files/json/vehicle_interiors.json');
    Iterable i = jsonDecode(_jsonString);
    _responseWrapper.body = i.map((interior) => StringLookupModel.fromJson(interior).toDomain()).toList();

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleBodyWorkTypes() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleBodyWorksPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle body work types'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle body work types response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle body work types error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleBrans() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleBrandsPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle brands'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle brands response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle brands error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleFuelTypes() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleFuelTypesPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle fuel types'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle fuel types response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle fuel types error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleModels({int brandId}) async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleModelsPath + '/$brandId',
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle models'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle models response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle models error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleTransmissionTypes() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleTransmissionTypesPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle transmission types'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle transmission types response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle transmission types error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getVehicleTypes() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getVehicleTypesPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get vehicle types'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get vehicle types response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get vehicle types error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getPriceTypes() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();

    try{
      final _response = await dioClient.get(
        _getPriceTypesPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get price type'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get price type response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((lookup) => AddVehicleLookupModel.fromJson(lookup).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get price type error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }


  Future<ResponseWrapper<List<AccessoryLookup>>> getAccessories() async {
    ResponseWrapper<List<AccessoryLookup>> _responseWrapper = ResponseWrapper<List<AccessoryLookup>>();

    try{
      final _response = await dioClient.get(
        _getAccessoriesPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get accessories'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get accessories response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
        _responseWrapper.body = i.map((accessory) => AccessoryLookupModel.fromJson(accessory).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get accessories error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> getAdSearchFilterOptions() async {
    ResponseWrapper<List<AddVehicleLookup>> _responseWrapper = ResponseWrapper<List<AddVehicleLookup>>();
    
    final _jsonString = await rootBundle.loadString('files/json/ad_search_filter_options.json');
    Iterable i = jsonDecode(_jsonString);
    _responseWrapper.body = i.map((filter) => AddVehicleLookupModel.fromJson(filter).toDomain()).toList();

    return _responseWrapper;
  }
}