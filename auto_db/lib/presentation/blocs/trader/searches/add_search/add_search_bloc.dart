import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/searches/add_new_search/add_new_search_request.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_body_work_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_brands_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_fuel_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_models_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_transmission_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_types_usecase.dart';
import 'package:auto_db/domain/usecases/trader/searches/add_search_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/add_vehicle_year.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_body_work.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_transmission_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/domain/value_objects/searches/date_value_object.dart';
import 'package:auto_db/domain/value_objects/searches/search_name.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/mileage_dropdown.dart';
import 'package:auto_db/domain/value_objects/vehicle_search/price_dropdown.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'add_search_event.dart';
part 'add_search_state.dart';

part 'add_search_bloc.freezed.dart';

class AddSearchBloc {
  BuildContext _context;
  Search _search;

  AddSearchState _state;
  
  GetVehicleTypesUsecase _getVehicleTypesUsecase;
  GetVehicleBrandsUseacse _getVehicleBrandsUseacse;
  GetVehicleModelsUseacse _getVehicleModelsUseacse;
  GetVehicleTransmissionTypesUseacse _getVehicleTransmissionTypesUseacse;
  GetVehicleBodyWorkTypesUsecase _getVehicleBodyWorkTypesUsecase;
  GetVehicleFuelTypesUsecase _getVehicleFuelTypesUsecase;
  AddSearchUsecase _addSearchUsecase;

  AddSearchBloc({
    @required BuildContext context,
    @required Search search
  }){
    this._context = context;
    this._search = search;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  AddSearchState get addSearchInitialState => _state;

  var _eventsController = StreamController<AddSearchEvent>();
  StreamSink<AddSearchEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<AddSearchState>.broadcast();
  StreamSink<AddSearchState> get _inStateController => _stateController.sink;
  Stream<AddSearchState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = AddSearchState.initial();
    await _getDropdownData();
  }

  void _mapEventToState(AddSearchEvent event){
    event.map(
      closeTapped: (_){
        Navigator.of(_context).pop();
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
      onPostSearchTapped: (_) async {
        await _postSearch();
      }, 
      onClearTapped: (_){
        _clearForm();
      }, 
      vehicleTypeChanged: (e){
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

        if(_state.vehicleType.isError){
          _state.vehicleType.errorMessage = '';
        }
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

        if(_state.vehicleBrand.isError){
          _state.vehicleBrand.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleModelChanged: (e){
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

        if(_state.vehicleModel.isError){
          _state.vehicleModel.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleTransmissionChanged: (e){
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

        if(_state.vehicleTransmissionType.isError){
          _state.vehicleTransmissionType.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleBodyWorkChanged: (e){
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

        if(_state.vehicleBodyWork.isError){
          _state.vehicleBodyWork.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleFuelTypeChanged: (e){
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

        if(_state.vehicleFuelType.isError){
          _state.vehicleFuelType.errorMessage = '';
        }
        _emitNewState();
      }, 
      yearFromChanged: (e){
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

        if(_state.yearFrom.isError){
          _state.yearFrom.errorMessage = '';
        }
        _emitNewState();
      }, 
      yearToChanged: (e){
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

        if(_state.yearTo.isError){
          _state.yearTo.errorMessage = '';
        }
        _emitNewState();
      }, 
      priceFromChanged: (e){
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

        if(_state.priceFrom.isError){
          _state.priceFrom.errorMessage = '';
        }
        _emitNewState();
      }, 
      priceToChanged: (e){
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
        
        if(_state.priceTo.isError){
          _state.priceTo.errorMessage = '';
        }
        _emitNewState();
      }, 
      mileageFromChanged: (e){
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

        if(_state.mileageFrom.isError){
          _state.mileageFrom.errorMessage = '';
        }
        _emitNewState();
      }, 
      mileageToChanged: (e){
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
        
        if(_state.mileageTo.isError){
          _state.mileageTo.errorMessage = '';
        }
        _emitNewState();
      }, 
      searchNameChanged: (e) {  
        _state.searchName.value = e.value;
        if(_state.searchName.isError){
          _state.searchName.errorMessage = '';
          _emitNewState();
        }
      }, 
      dateFromChanged: (e) { 
        _state.dateFrom.value = e.value;
        if(_state.dateFrom.isError){
          _state.dateFrom.errorMessage = '';
        }
        _emitNewState();
      }, 
      dateToChanged: (e) { 
        _state.dateTo.value = e.value;
        if(_state.dateTo.isError){
          _state.dateTo.errorMessage = '';
        }
        _emitNewState();
      }
    );
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
      _state.vehicleBrand.options = vehicleBrandsResponse.body;
      _state.vehicleTransmissionType.options = vehicleTransmissionTypesResponse.body;
      _state.vehicleBodyWork.options = vehicleBodyWorkTypesResponse.body;
      _state.vehicleFuelType.options = vehicleFuelTypesResponse.body;
    }

    //if _search != null edit search
    if(_search != null){
      _state = _state.copyWith(
        isEdit: true
      );
      await _populateData();
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  Future<void> _populateData() async {
    _state.vehicleType.value = _search.vehicleType;
    if(_state.vehicleType.value != null){
      _state.vehicleType.options.insert(0, AddVehicleLookup(
        id: 0,
        name: StringConstants.clearSelection
      ));
    }

    DateFormat format = new DateFormat("dd MMMM yyyy");
    if(_search.dateFrom != null){
      _state.dateFrom.value = format.parse(_search.dateFrom);
    }

    if(_search.dateTo != null){
      _state.dateTo.value = format.parse(_search.dateTo);
    }

    if(_search.searchName != null){
      _state.searchName.value = _search.searchName;
    }

    _state.vehicleBrand.value = _search.vehicleBrand;
    if(_search.vehicleBrand != null){
      _state.vehicleBrand.options.insert(0, AddVehicleLookup(
        id: 0,
        name: StringConstants.clearSelection
      ));
      await _getModelsForBrand(_search.vehicleBrand);
    }
    _state.vehicleModel.value = _search.vehicleModel;
    if(_state.vehicleModel.value != null){
      _state.vehicleModel.options.insert(0, AddVehicleLookup(
        id: 0,
        name: StringConstants.clearSelection
      ));
    }
    _state.vehicleTransmissionType.value = _search.vehicleTransmissionType;
    if(_state.vehicleTransmissionType.value != null){
      _state.vehicleTransmissionType.options.insert(0, AddVehicleLookup(
        id: 0,
        name: StringConstants.clearSelection
      ));
    }
    _state.vehicleBodyWork.value = _search.vehcileBodyWorkType;
    if(_state.vehicleBodyWork.value != null){
      _state.vehicleBodyWork.options.insert(0, AddVehicleLookup(
        id: 0,
        name: StringConstants.clearSelection
      ));
    }
    _state.vehicleFuelType.value = _search.fuelType;
    if(_state.vehicleFuelType.value != null){
      _state.vehicleFuelType.options.insert(0, AddVehicleLookup(
        id: 0,
        name: StringConstants.clearSelection
      ));
    }

    if(_search.yearFrom != null){
      _state.yearFrom.value = _search.yearFrom;
      _state.yearFrom.options.insert(0, StringConstants.clearSelection);
      _state.yearTo.options = AddVehicleYear.generateYearsWithEarliest(_state.yearFrom.value);
      if(_state.yearTo.value != null){
        _state.yearTo.options.insert(0, StringConstants.clearSelection);
      }
    }

    if(_search.yeraTo != null){
      _state.yearTo.value = _search.yeraTo;
      _state.yearTo.options.insert(0, StringConstants.clearSelection);
      _state.yearFrom.options = AddVehicleYear.generateYearsWithCurent(_state.yearTo.value);
      if(_state.yearFrom.value != null){
        _state.yearFrom.options.insert(0, StringConstants.clearSelection);
      }
    }

    if(_search.priceFrom != null){
      _state.priceFrom.value = StringConstants.euroSign + PriceUtils.formatInt(int.parse(_search.priceFrom));
      _state.priceFrom.options.insert(0, StringConstants.clearSelection);
      _state.priceTo.options = PriceDropdown.generatePriceListWithCurentPrice(_state.priceFrom.value);
      if(_state.priceTo.value != null){
        _state.priceTo.options.insert(0, StringConstants.clearSelection);
      }
    }

    if(_search.priceTo != null){
      _state.priceTo.value = StringConstants.euroSign + PriceUtils.formatInt(int.parse(_search.priceTo));
      _state.priceTo.options.insert(0, StringConstants.clearSelection);
      _state.priceFrom.options = PriceDropdown.generatePriceListWithEarliestPrice(_state.priceTo.value);
      if(_state.priceFrom.value != null){
        _state.priceFrom.options.insert(0, StringConstants.clearSelection);
      }
    }
    
    if(_search.mileageFrom != null ){
      _state.mileageFrom.value = PriceUtils.formatInt(int.parse(_search.mileageFrom));
      _state.mileageFrom.options.insert(0, StringConstants.clearSelection);
      _state.mileageTo.options = MileageDropdown.generateMileageWithCurrentMileage(_state.mileageFrom.value);
      if(_state.mileageTo.value != null){
        _state.mileageTo.options.insert(0, StringConstants.clearSelection);
      }
    }

    if(_search.mileageTo != null ){
      _state.mileageTo.value = PriceUtils.formatInt(int.parse(_search.mileageTo));
      _state.mileageTo.options.insert(0, StringConstants.clearSelection);
      _state.mileageFrom.options = MileageDropdown.generateMileageWithEarliestMileage(_state.mileageTo.value);
      if(_state.mileageFrom.value != null){
        _state.mileageFrom.options.insert(0, StringConstants.clearSelection);
      }
    }
  }

  Future<void> _getModelsForBrand(AddVehicleLookup brand) async {
    _state.vehicleModel.options = null;
    _state.vehicleModel.value = null;
    final _modelsResponse = await _getVehicleModelsUseacse(GetVehicleModelsParams(brandId: brand.id));
    if(_modelsResponse.body != null){
      _state.vehicleModel.options = _modelsResponse.body;
    } else{
      CustomToastUtils.showCustomToast(
        context:_context, 
        message: StringConstants.getModelsError,
        customToastType: CustomToastType.Error
      );
    }
  }

  Future<void> _postSearch() async {
    if(!_validateForm()){
      _emitNewState();
      return;
    }

    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();

    final response = await _addSearchUsecase(AddSearchParams(addNewSearchRequest: _createRequest()));

    if(response.error != null){
      String errorMessage = '';

      response.error.map(
        serverError: (e){
          errorMessage = e.massage;
        }, 
        noInternerError: (_){
          errorMessage = StringConstants.noInternet;
        }, 
        genericError: (_){
          errorMessage = StringConstants.generalError;
        },
        noOperationError: (_) {  }
      );

      _state = _state.copyWith(
        isSubmitting: false
      );
      _emitNewState();

      CustomToastUtils.showCustomToast(
        context:_context, 
        message: errorMessage, 
        customToastType: CustomToastType.Error
      );
      return;
    }

    if(response.body != null && response.body){
      _state = _state.copyWith(
        isSubmitting: false
      );
      Navigator.of(_context).pop(true);
    }
  }

  AddNewSearchRequest _createRequest(){
    AddNewSearchRequest postBody = AddNewSearchRequest(
      vehicleTypeId: _state.vehicleType.value.id,
      dateFrom: _state.dateFrom.value.toString(),
      dateTo: _state.dateTo.value.toString(),
      searchName: _state.searchName.value,
      vehicleTransmissionTypeId: _state.vehicleTransmissionType.value.id,
      vehcileBodyWorkTypeId: _state.vehicleBodyWork.value.id,
      fuelTypeId: _state.vehicleFuelType.value.id,
      priceFrom: PriceUtils.getPriceFromFormatedPrice(_state.priceFrom.value),
      priceTo: PriceUtils.getPriceFromFormatedPrice(_state.priceTo.value)
    );

    if(_search != null){
      postBody = postBody.copyWith(
        id : _search.id
      );
    }

    if(_state.vehicleBrand.value != null){
      postBody = postBody.copyWith(
        vehicleBrandId : _state.vehicleBrand.value.id
      );
    }

    if(_state.vehicleModel.value != null){
      postBody = postBody.copyWith(
        vehicleModelId : _state.vehicleModel.value.id
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

  bool _validateForm(){
    final isVehicleTypeValid = _state.vehicleType.validate();
    final isDateFromValid = _state.dateFrom.validate();
    final isDateToValid = _state.dateTo.validate();
    final isSearchNameValid = _state.searchName.validate();
    final isTransmissionValid = _state.vehicleTransmissionType.validate();
    final isBodyWorkValid = _state.vehicleBodyWork.validate();
    final isPriceFromValid = _state.priceFrom.validate();
    final isPriceToValid = _state.priceTo.validate();
    final isFuelValid = _state.vehicleFuelType.validate();

    return isVehicleTypeValid && isDateFromValid && isDateToValid && isSearchNameValid && isTransmissionValid &&
           isBodyWorkValid && isPriceFromValid && isPriceToValid && isFuelValid;
  }

  void _clearForm(){
    _state.vehicleType.value = null;
    _emitNewState();
    _state.vehicleType.options.removeWhere((element) => element.name == StringConstants.clearSelection);
    _state.dateFrom.value = null;
    _state.dateTo.value = null;
    _state.searchName.value = '';
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

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getVehicleTypesUsecase = GetVehicleTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleBrandsUseacse = GetVehicleBrandsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleModelsUseacse = GetVehicleModelsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleTransmissionTypesUseacse = GetVehicleTransmissionTypesUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleBodyWorkTypesUsecase = GetVehicleBodyWorkTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleFuelTypesUsecase = GetVehicleFuelTypesUsecase(getIt.get<DropdownDataRepository>());
    _addSearchUsecase = AddSearchUsecase(getIt.get<SearchesRepository>());
  }

  void addEvent(AddSearchEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}