import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:auto_db/domain/repositories/public_user_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_body_work_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_brands_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_fuel_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_models_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_transmission_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_types_usecase.dart';
import 'package:auto_db/domain/usecases/public_user/public_user_search_vehicles_usecase.dart';
import 'package:auto_db/domain/usecases/trader/stock/get_ads_useacse.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/add_vehicle_year.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_body_work.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_transmission_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/mileage_dropdown.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/price_dropdown.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/public_user/public_user_search_route_generator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'vehicle_search_event.dart';
part 'vehicle_search_state.dart';

part 'vehicle_search_bloc.freezed.dart';

class VehicleSearchBloc {
  BuildContext context;
  AddVehicleLookup _intitalVehicleType;
  bool isPublicUser;

  VehicleSearchState _state;

  GetAdsUsecase _getAdsUsecase;
  PublicUserSearchVehiclesUsecase _publicUserSearchVehiclesUsecase;
  GetVehicleTypesUsecase _getVehicleTypesUsecase;
  GetVehicleBrandsUseacse _getVehicleBrandsUseacse;
  GetVehicleModelsUseacse _getVehicleModelsUseacse;
  GetVehicleTransmissionTypesUseacse _getVehicleTransmissionTypesUseacse;
  GetVehicleBodyWorkTypesUsecase _getVehicleBodyWorkTypesUsecase;
  GetVehicleFuelTypesUsecase _getVehicleFuelTypesUsecase;

  VehicleSearchBloc({
    @required BuildContext context,
    @required AddVehicleLookup intitalVehicleType,
    bool isPublicUser = false
  }){
    this.context = context;
    this._intitalVehicleType = intitalVehicleType;
    this.isPublicUser = isPublicUser;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  VehicleSearchState get searchInitialState => _state;

  var _eventsController = StreamController<VehicleSearchEvent>();
  StreamSink<VehicleSearchEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<VehicleSearchState>.broadcast();
  StreamSink<VehicleSearchState> get _inStateController => _stateController.sink;
  Stream<VehicleSearchState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = VehicleSearchState.initial();
    await _getDropdownData();
  }

  void _mapEventToState(VehicleSearchEvent event){
    event.map(
      onCloseTapped: (_){
        Navigator.of(context).pop();
      }, 
      onRetryTapped: (_) async {
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _getDropdownData();
      }, 
      onSearchTapped: (_){
        _onSearchTapped();
      }, 
      onClearTapped: (_) async {
        _clearForm();
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      vehicleTypeChanged: (e) async {
        if(e.value.name == StringConstants.clearSelection){
          _state.vehicleType.value = null;
          _emitNewState();
          _state.vehicleType.options.remove(e.value);
        } else {
          _state.vehicleType.value = e.value;
          if(_state.vehicleType.options[0].name != StringConstants.clearSelection){
            _state.vehicleType.options.insert(0, AddVehicleLookup(
              id: 0,
              name: StringConstants.clearSelection
            ));
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      vehicleBrandChanged: (e) async {
        if(e.value.name == StringConstants.clearSelection){
          _state.vehicleBrand.value = null;
          _emitNewState();
          _state.vehicleBrand.options.remove(e.value);
          _state.vehicleModel.value = null;
          _state.vehicleModel.options = null;
          _emitNewState();
        } else {
          _state.vehicleBrand.value = e.value;
          if(_state.vehicleBrand.options[0].name != StringConstants.clearSelection){
            _state.vehicleBrand.options.insert(0, AddVehicleLookup(
              id: 0,
              name: StringConstants.clearSelection
            ));
          }
          await _getModelsForBrand(e.value);
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      vehicleModelChanged: (e) async {
         if(e.value.name == StringConstants.clearSelection){
          _state.vehicleModel.value = null;
          _emitNewState();
          _state.vehicleModel.options.remove(e.value);
        } else {
          _state.vehicleModel.value = e.value;
          if(_state.vehicleModel.options[0].name != StringConstants.clearSelection){
            _state.vehicleModel.options.insert(0, AddVehicleLookup(
              id: 0,
              name: StringConstants.clearSelection
            ));
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      vehicleTransmissionChanged: (e) async {
        if(e.value.name == StringConstants.clearSelection){
          _state.vehicleTransmissionType.value = null;
          _emitNewState();
          _state.vehicleTransmissionType.options.remove(e.value);
        } else {
          _state.vehicleTransmissionType.value = e.value;
          if(_state.vehicleTransmissionType.options[0].name != StringConstants.clearSelection){
            _state.vehicleTransmissionType.options.insert(0, AddVehicleLookup(
              id: 0,
              name: StringConstants.clearSelection
            ));
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      vehicleBodyWorkChanged: (e) async {
        if(e.value.name == StringConstants.clearSelection){
          _state.vehicleBodyWork.value = null;
          _emitNewState();
          _state.vehicleBodyWork.options.remove(e.value);
        } else {
          _state.vehicleBodyWork.value = e.value;
          if(_state.vehicleBodyWork.options[0].name != StringConstants.clearSelection){
            _state.vehicleBodyWork.options.insert(0, AddVehicleLookup(
              id: 0,
              name: StringConstants.clearSelection
            ));
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      vehicleFuelTypeChanged: (e) async {
        if(e.value.name == StringConstants.clearSelection){
          _state.vehicleFuelType.value = null;
          _emitNewState();
          _state.vehicleFuelType.options.remove(e.value);
        } else {
          _state.vehicleFuelType.value = e.value;
          if(_state.vehicleFuelType.options[0].name != StringConstants.clearSelection){
            _state.vehicleFuelType.options.insert(0, AddVehicleLookup(
              id: 0,
              name: StringConstants.clearSelection
            ));
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      yearFromChanged: (e) async {
        if(e.value == StringConstants.clearSelection){
          _state.yearFrom.value = null;
          _emitNewState();
          _state.yearFrom.options.remove(e.value);
          _state.yearTo.options = AddVehicleYear.generateYearsList();
          if(_state.yearTo.value != null){
            _state.yearTo.options.insert(0, StringConstants.clearSelection);
          }
        } else {
          _state.yearFrom.value = e.value;
          if(_state.yearFrom.options[0] != StringConstants.clearSelection){
            _state.yearFrom.options.insert(0, StringConstants.clearSelection);
          }
          _state.yearTo.options = AddVehicleYear.generateYearsWithEarliest(_state.yearFrom.value);
          if(_state.yearTo.value != null){
            _state.yearTo.options.insert(0, StringConstants.clearSelection);
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      yearToChanged: (e) async {
        if(e.value == StringConstants.clearSelection){
          _state.yearTo.value = null;
          _emitNewState();
          _state.yearTo.options.remove(e.value);
          _state.yearFrom.options = AddVehicleYear.generateYearsList();
          if(_state.yearFrom.value != null){
            _state.yearFrom.options.insert(0, StringConstants.clearSelection);
          }
        } else {
          _state.yearTo.value = e.value;
          if(_state.yearTo.options[0] != StringConstants.clearSelection){
            _state.yearTo.options.insert(0, StringConstants.clearSelection);
          }
          _state.yearFrom.options = AddVehicleYear.generateYearsWithCurent(_state.yearTo.value);
          if(_state.yearFrom.value != null){
            _state.yearFrom.options.insert(0, StringConstants.clearSelection);
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      mileageFromChanged: (e) async { 
        if(e.value == StringConstants.clearSelection){
          _state.mileageFrom.value = null;
          _emitNewState();
          _state.mileageFrom.options.remove(e.value);
          _state.mileageTo.options = MileageDropdown.generateMileageList();
          if(_state.mileageTo.value != null){
            _state.mileageTo.options.insert(0, StringConstants.clearSelection);
          }
        } else {
          _state.mileageFrom.value = e.value;
          if(_state.mileageFrom.options[0] != StringConstants.clearSelection){
            _state.mileageFrom.options.insert(0, StringConstants.clearSelection);
          }
          _state.mileageTo.options = MileageDropdown.generateMileageWithCurrentMileage(_state.mileageFrom.value);
          if(_state.mileageTo.value != null){
            _state.mileageTo.options.insert(0, StringConstants.clearSelection);
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      mileageToChanged: (e) async { 
        if(e.value == StringConstants.clearSelection){
          _state.mileageTo.value = null;
          _emitNewState();
          _state.mileageTo.options.remove(e.value);
          _state.mileageFrom.options = MileageDropdown.generateMileageList();
          if(_state.mileageFrom.value != null){
            _state.mileageFrom.options.insert(0, StringConstants.clearSelection);
          }
        } else {
          _state.mileageTo.value = e.value;
          if(_state.mileageTo.options[0] != StringConstants.clearSelection){
            _state.mileageTo.options.insert(0, StringConstants.clearSelection);
          }
          _state.mileageFrom.options = MileageDropdown.generateMileageWithEarliestMileage(_state.mileageTo.value);
          if(_state.mileageFrom.value != null){
            _state.mileageFrom.options.insert(0, StringConstants.clearSelection);
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      priceFromChanged: (e) async { 
        if(e.value == StringConstants.clearSelection){
          _state.priceFrom.value = null;
          _emitNewState();
          _state.priceFrom.options.remove(e.value);
          _state.priceTo.options = PriceDropdown.generatePriceList();
          if(_state.priceTo.value != null){
            _state.priceTo.options.insert(0, StringConstants.clearSelection);
          }
        } else {
          _state.priceFrom.value = e.value;
          if(_state.priceFrom.options[0] != StringConstants.clearSelection){
            _state.priceFrom.options.insert(0, StringConstants.clearSelection);
          }
          _state.priceTo.options = PriceDropdown.generatePriceListWithCurentPrice(_state.priceFrom.value);
          if(_state.priceTo.value != null){
            _state.priceTo.options.insert(0, StringConstants.clearSelection);
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }, 
      priceToChanged: (e) async { 
        if(e.value == StringConstants.clearSelection){
          _state.priceTo.value = null;
          _emitNewState();
          _state.priceTo.options.remove(e.value);
          _state.priceFrom.options = PriceDropdown.generatePriceList();
          if(_state.priceFrom.value != null){
            _state.priceFrom.options.insert(0, StringConstants.clearSelection);
          }
        } else {
          _state.priceTo.value = e.value;
          if(_state.priceTo.options[0] != StringConstants.clearSelection){
            _state.priceTo.options.insert(0, StringConstants.clearSelection);
          }
          _state.priceFrom.options = PriceDropdown.generatePriceListWithEarliestPrice(_state.priceTo.value);
          if(_state.priceFrom.value != null){
            _state.priceFrom.options.insert(0, StringConstants.clearSelection);
          }
        }
        await _getNumberOfResoults();
        _emitNewState();
      }
    );
  }

  void _onSearchTapped() async {
    if(isPublicUser){
      final _args = PublicUserVehicleListingRuteArgs(title: _getTitle(), vehicleSearchModel: _createVehicleSearchModel());
      await Navigator.of(context).pushNamed('/vehicles_listing', arguments: _args);
    } else {
      Navigator.of(context).pop(_createVehicleSearchModel());
    }
  }

  String _getTitle(){
    String _title = '';

    if(_state.vehicleBrand.value != null){
      _title += _state.vehicleBrand.value.name;
    }

    if(_state.vehicleModel.value != null){
      _title += ' ' + _state.vehicleModel.value.name;
    }

    final _numOfAds = '(' + _state.numberOfAds.toString() + ' ' + StringConstants.results.toLowerCase() + ')';
    _title += _title.isNotEmpty ? '\n' + _numOfAds : _numOfAds;

    return _title;
  }

  Future<void> _getDropdownData() async {
    final vehicleTypesResponse = await _getVehicleTypesUsecase(NoParams());
    final vehicleBrandsResponse = await _getVehicleBrandsUseacse(NoParams());
    final vehicleTransmissionTypesResponse = await _getVehicleTransmissionTypesUseacse(NoParams());
    final vehicleBodyWorkTypesResponse = await _getVehicleBodyWorkTypesUsecase(NoParams());
    final vehicleFuelTypesResponse = await _getVehicleFuelTypesUsecase(NoParams());

    if(vehicleTypesResponse.error != null || vehicleBrandsResponse.error != null ||  vehicleTransmissionTypesResponse.error != null || 
      vehicleBodyWorkTypesResponse.error != null || vehicleFuelTypesResponse.error != null){
      Failure error;

      if(error == null && vehicleTypesResponse.error != null){
        error = vehicleTypesResponse.error;
      }

      if(error == null && vehicleBrandsResponse.error != null){
        error = vehicleBrandsResponse.error;
      }

      if(error == null && vehicleTransmissionTypesResponse.error != null){
        error = vehicleTransmissionTypesResponse.error;
      }

      if(error == null && vehicleBodyWorkTypesResponse.error != null){
        error = vehicleBodyWorkTypesResponse.error;
      }

      if(error == null && vehicleFuelTypesResponse.error != null){
        error = vehicleFuelTypesResponse.error;
      }
      
      error.map(
        serverError: (e){
          _state = _state.copyWith(
            isSubmitting: false,
            isError: true,
            errorMessage: e.massage
          );
          _emitNewState();
        }, 
        noInternerError: (_){
          _state = _state.copyWith(
            isSubmitting: false,
            noInternetConnection: true
          );
          _emitNewState();
        }, 
        genericError: (_){
          _state = _state.copyWith(
            isSubmitting: false,
            isError: true,
            errorMessage: StringConstants.generalError
          );
          _emitNewState();
        },
        noOperationError: (_) {  }
      );

      return;

    } else {
      _state.vehicleType.options = vehicleTypesResponse.body;
      if(_intitalVehicleType != null){
        final indx = _state.vehicleType.options.indexWhere((e) => e.id == _intitalVehicleType.id && e.name == _intitalVehicleType.name);
        if(indx > -1){
          _state.vehicleType.value = _state.vehicleType.options[indx];
          _state.vehicleType.options.insert(0, AddVehicleLookup(
            id: 0,
            name: StringConstants.clearSelection
          ));
        }
      }

      if(isPublicUser){
        final indx = _state.vehicleType.options.indexWhere((e) => e.name.toLowerCase() == 'passenger car');
        if(indx > -1){
          _state.vehicleType.value = _state.vehicleType.options[indx];
          _state.vehicleType.options.insert(0, AddVehicleLookup(
            id: 0,
            name: StringConstants.clearSelection
          ));
        }
      }
      _state.vehicleBrand.options = vehicleBrandsResponse.body;
      _state.vehicleTransmissionType.options = vehicleTransmissionTypesResponse.body;
      _state.vehicleBodyWork.options = vehicleBodyWorkTypesResponse.body;
      _state.vehicleFuelType.options = vehicleFuelTypesResponse.body;
    }

    await _getNumberOfResoults(handleError: false);

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  Future<void> _getModelsForBrand(AddVehicleLookup brand) async {
    _state.vehicleModel.options = null;
    _state.vehicleModel.value = null;
    final _modelsResponse = await _getVehicleModelsUseacse(GetVehicleModelsParams(brandId: brand.id));
    if(_modelsResponse.body != null){
      _state.vehicleModel.options = _modelsResponse.body;
    } else{
      CustomToastUtils.showCustomToast(
        context:context, 
        message: StringConstants.getModelsError,
        customToastType: CustomToastType.Error
      );
    }
  }

  Future<void> _getNumberOfResoults({bool handleError = true}) async {
    if(isPublicUser){
      final response = await _publicUserSearchVehiclesUsecase(PublicUserSearchVehiclesParams(getAdsPostBody: _createRequest()));
      if(response.body != null){
        _state = _state.copyWith(
          numberOfAds: response.body.count
        );
      } else {
        if(handleError){
          CustomToastUtils.showCustomToast(
            context:context, 
            message: StringConstants.getNumberOfAdsError,
            customToastType: CustomToastType.Error
          );
        }
      }
    } else {
      final response = await _getAdsUsecase(GetAdsParams(getAdsPostBody: _createRequest()));
      if(response.body != null){
        _state = _state.copyWith(
          numberOfAds: response.body.count
        );
      } else {
        if(handleError){
          CustomToastUtils.showCustomToast(
            context:context, 
            message: StringConstants.getNumberOfAdsError,
            customToastType: CustomToastType.Error
          );
        }
      }
    }
  }

  GetAdsPostBody _createRequest(){
    GetAdsPostBody postBody = GetAdsPostBody(
      getCarData: false
    );

    if(_state.vehicleType.value != null){
      postBody = postBody.copyWith(
        vehicleTypeId: _state.vehicleType.value.id
      );
    }

    if(_state.vehicleBrand.value != null){
      postBody = postBody.copyWith(
        vehicleBrandId: _state.vehicleBrand.value.id
      );
    }

    if(_state.vehicleModel.value != null){
      postBody = postBody.copyWith(
        vehicleModelId: _state.vehicleModel.value.id
      );
    }

    if(_state.vehicleTransmissionType.value != null){
      postBody = postBody.copyWith(
        vehicleTransmissionTypeId: _state.vehicleTransmissionType.value.id
      );
    }

    if(_state.vehicleBodyWork.value != null){
      postBody = postBody.copyWith(
        vehcileBodyWorkTypeId: _state.vehicleBodyWork.value.id
      );
    }

    if(_state.vehicleFuelType.value != null){
      postBody = postBody.copyWith(
        fuelTypeId: _state.vehicleFuelType.value.id
      );
    }

    if(_state.yearFrom.value != null){
      postBody = postBody.copyWith(
        yearFrom: int.parse(_state.yearFrom.value)
      );
    }

    if(_state.yearTo.value != null){
      postBody = postBody.copyWith(
        yeraTo: int.parse(_state.yearTo.value)
      );
    }

    if(_state.priceFrom.value != null){
      postBody = postBody.copyWith(
        priceFrom: PriceUtils.getPriceFromFormatedPrice(_state.priceFrom.value)
      );
    }

    if(_state.priceTo.value != null){
      postBody = postBody.copyWith(
        priceTo: PriceUtils.getPriceFromFormatedPrice(_state.priceTo.value)
      );
    }

    final f = NumberFormat("#,###");

    if(_state.mileageFrom.value != null){
      postBody = postBody.copyWith(
        mileageFrom: int.parse(_state.mileageFrom.value.replaceAll(f.symbols.GROUP_SEP, ''))
      );
    }

    if(_state.mileageTo.value != null){
      postBody = postBody.copyWith(
        mileageTo: int.parse(_state.mileageTo.value.replaceAll(f.symbols.GROUP_SEP, ''))
      );
    }

    return postBody;
  }

  void _clearForm() {
    _state.vehicleType.value = null;
    _emitNewState();
    _state.vehicleType.options.removeWhere((element) => element.name == StringConstants.clearSelection);
    _state.vehicleBrand.value = null;
    _emitNewState();
    _state.vehicleBrand.options.removeWhere((element) => element.name == StringConstants.clearSelection);
    _state.vehicleModel.value = null;
    _state.vehicleModel.options = null;
    _state.vehicleTransmissionType.value = null;
    _emitNewState();
    _state.vehicleTransmissionType.options.removeWhere((element) => element.name == StringConstants.clearSelection);
    _state.vehicleBodyWork.value = null;
    _emitNewState();
    _state.vehicleBodyWork.options.removeWhere((element) => element.name == StringConstants.clearSelection);
    _state.vehicleFuelType.value = null;
    _emitNewState();
    _state.vehicleFuelType.options.removeWhere((element) => element.name == StringConstants.clearSelection);
    _state.yearFrom.value = null;
    _emitNewState();
    _state.yearFrom.options = AddVehicleYear.generateYearsList();
    _state.yearTo.value = null;
    _emitNewState();
    _state.yearTo.options = AddVehicleYear.generateYearsList();
    _state.priceFrom.value = null;
    _emitNewState();
    _state.priceFrom.options = PriceDropdown.generatePriceList();
    _state.priceTo.value = null;
    _emitNewState();
    _state.priceTo.options = PriceDropdown.generatePriceList();
    _state.mileageFrom.value = null;
    _emitNewState();
    _state.mileageFrom.options = MileageDropdown.generateMileageList();
    _state.mileageTo.value = null;
    _emitNewState();
    _state.mileageTo.options = MileageDropdown.generateMileageList();
    _emitNewState();
  }

  VehicleSearchModel _createVehicleSearchModel(){
    return VehicleSearchModel(
      vehicleType: _state.vehicleType.value,
      vehicleBrand: _state.vehicleBrand.value,
      vehicleModel: _state.vehicleModel.value,
      vehicleTransmissionType: _state.vehicleTransmissionType.value,
      vehicleBodyWorkType: _state.vehicleBodyWork.value,
      vehicleFuelType: _state.vehicleFuelType.value,
      yearFrom: _state.yearFrom.value,
      yearTo: _state.yearTo.value,
      priceFrom: _state.priceFrom.value,
      priceTo: _state.priceTo.value,
      mileageFrom: _state.mileageFrom.value,
      mileageTo: _state.mileageTo.value
    );
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getAdsUsecase = GetAdsUsecase(getIt.get<InventoryRepository>());
    _getVehicleTypesUsecase = GetVehicleTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleBrandsUseacse = GetVehicleBrandsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleModelsUseacse = GetVehicleModelsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleTransmissionTypesUseacse = GetVehicleTransmissionTypesUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleBodyWorkTypesUsecase = GetVehicleBodyWorkTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleFuelTypesUsecase = GetVehicleFuelTypesUsecase(getIt.get<DropdownDataRepository>());
    _publicUserSearchVehiclesUsecase = PublicUserSearchVehiclesUsecase(getIt.get<PublicUserRepository>());
  }

  void addEvent(VehicleSearchEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}

class VehicleSearchModel {
  final AddVehicleLookup vehicleType;
  final AddVehicleLookup vehicleBrand;
  final AddVehicleLookup vehicleModel;
  final AddVehicleLookup vehicleTransmissionType;
  final AddVehicleLookup vehicleBodyWorkType;
  final AddVehicleLookup vehicleFuelType;
  final String yearFrom;
  final String yearTo;
  final String priceFrom;
  final String priceTo;
  final String mileageFrom;
  final String mileageTo;

  VehicleSearchModel({
    this.vehicleType, 
    this.vehicleBrand, 
    this.vehicleModel, 
    this.vehicleTransmissionType, 
    this.vehicleBodyWorkType, 
    this.vehicleFuelType, 
    this.yearFrom, 
    this.yearTo, 
    this.priceFrom, 
    this.priceTo, 
    this.mileageFrom, 
    this.mileageTo
  });
}