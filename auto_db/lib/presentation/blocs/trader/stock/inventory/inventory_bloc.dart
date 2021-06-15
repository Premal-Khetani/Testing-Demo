import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/entities/inventory/inventory_ad.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_ad_search_filter_options_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_types_usecase.dart';
import 'package:auto_db/domain/usecases/trader/stock/get_ads_useacse.dart';
import 'package:auto_db/domain/value_objects/inventory_filter.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/trader/trader_stock_route_generator.dart';
import 'package:auto_db/presentation/blocs/trader/stock/inventory/vehicle_details/vehicle_details_bloc.dart';
import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';

part 'inventory_bloc.freezed.dart';

class InventoryBloc{
  BuildContext _context;

  InventoryState _state;
  VehicleSearchBloc _vehicleSearchBloc;
  VehicleSearchModel _vehicleSearchModel;

  GetAdsUsecase _getAdsUsecase;
  GetAdSearchFilterOptionsUsecase _getAdSearchFilterOptionsUsecase;
  GetVehicleTypesUsecase _getVehicleTypesUsecase;

  int _paginationData = 10;

  InventoryBloc({
    @required BuildContext context
  }){
    this._context = context;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  InventoryState get inventoryInitialState => _state;

  var _eventsController = StreamController<InventoryEvent>();
  StreamSink<InventoryEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<InventoryState>();
  StreamSink<InventoryState> get _inStateController => _stateController.sink;
  Stream<InventoryState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = InventoryState.initial();
    await _getFilterOptions();
    // await _getVehicleTypeDropdown();
    // await _search();
    await _searchWithCheckInventory();
  }

  void _mapEventToState(InventoryEvent event){
    event.map(
      onAddVehicleTapped: (_) async {
        await Navigator.of(_context).pushNamed('/add_vehicle');
        _state = _state.copyWith(
          offset : 0,
          isRichedTheEnd: false,
          isPaginationError: false,
          ads: List<InventoryAd>(),
          isCheckedForNumberOfVehiclesInInventory: false,
          isSubmitting: true
        );
        await _searchWithCheckInventory();
      }, 
      onRetryTapped: (_) async { 
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _searchWithCheckInventory();
      }, 
      onSearchTapped: (_) async { 
        if(_vehicleSearchBloc == null){
          AddVehicleLookup vehicleType;
          if(_vehicleSearchModel != null){
            vehicleType = _vehicleSearchModel.vehicleType;
          }
          _vehicleSearchBloc = VehicleSearchBloc(context: _context, intitalVehicleType: vehicleType);
        }
        final args = VehicleSearchRuteArgs(vehicleSearchBloc: _vehicleSearchBloc);
        final response = await Navigator.of(_context).pushNamed('/vehicle_search', arguments: args);
        if(response != null){
          _vehicleSearchModel = response;
          _state = _state.copyWith(
            vehicleBrand: _vehicleSearchModel.vehicleBrand != null ? _vehicleSearchModel.vehicleBrand.name : '',
            offset : 0,
            isRichedTheEnd: false,
            isPaginationError: false,
            ads: List<InventoryAd>()
          );
          await _search();
        }
      },
      onFilterValueChanged: (e) async {  
        _state.inventoryFilter.value = e.value;
        _state = _state.copyWith(
          offset : 0,
          isRichedTheEnd: false,
          isPaginationError: false,
          ads: List<InventoryAd>()
        );
        await _search();
      }, 
      onAdTapped: (e) async { 
        final args = VehicleDetailsRuteArgs(vehicleId: e.vehicleId);
        final response = await Navigator.of(_context).pushNamed('/vehicle_details', arguments: args);
        if(response != null){
          VehicleDetailsReturnValue returnValue = response;
          
          if(returnValue.isDeleted){
            CustomToastUtils.showCustomToast(
              context: _context, 
              message: StringConstants.removeVehicleSuccess, 
              customToastType: CustomToastType.Sucessfull
            );

            _state = _state.copyWith(
              offset : 0,
              isRichedTheEnd: false,
              ads: List<InventoryAd>()
            );
            await _search(); 
          }

          if(returnValue.isChanged){
             _state = _state.copyWith(
              offset : 0,
              isRichedTheEnd: false,
              ads: List<InventoryAd>()
            );
            await _search(); 
          }
        }
      }, 
      getPageData: (_) {
        if(!_state.isRichedTheEnd){
          _state = _state.copyWith(
            offset: _state.offset + _paginationData
          );
          _search(isGetPageData: true);
        }
      }
    );
  }

  Future<void> _searchWithCheckInventory() async {
    if(!_state.isCheckedForNumberOfVehiclesInInventory){
      final adsResponse = await _getAdsUsecase(GetAdsParams(getAdsPostBody: _createGetAdsRequest(isFirstCheck: true)));

      if(adsResponse.error != null){
        _handleErrorSearch(adsResponse.error);
        return;
      }

      if(adsResponse.body != null){
        _state = _state.copyWith(
          isCheckedForNumberOfVehiclesInInventory : true,
          haveCarsInInventory: adsResponse.body.count > 0
        );

        if(_vehicleSearchModel == null){
          await _getVehicleTypeDropdown();
        }

      } else {
        _handleErrorSearch(Failure.genericError());
        return;
      }
    }

    if(_state.isCheckedForNumberOfVehiclesInInventory && _state.haveCarsInInventory){
      await _search();
    } else {
      _state = _state.copyWith(
        isSubmitting: false
      );
      _emitNewState();
    }
  }

  Future<void> _getFilterOptions() async {
    final filterOptionsResponse = await _getAdSearchFilterOptionsUsecase(NoParams());
    if(filterOptionsResponse.body != null){
      _state.inventoryFilter.options = filterOptionsResponse.body;
      if(_state.inventoryFilter.options.length > 0){
        _state.inventoryFilter.value = filterOptionsResponse.body[0];
      }
    }
  }

  Future<void> _getVehicleTypeDropdown() async {
    final vehicleTypeData = await _getVehicleTypesUsecase(NoParams());
    if(vehicleTypeData.body != null){
      final indx = vehicleTypeData.body.indexWhere((e) => e.name == 'Passenger car');
      if(indx > -1){
        _vehicleSearchModel = VehicleSearchModel(
          vehicleType: vehicleTypeData.body[indx]
        );
      }
    }
  }

  Future<void> _search({bool isGetPageData = false}) async {
    if(!isGetPageData){
      _state = _state.copyWith(
        isSubmitting: true
      );
      _emitNewState();
    }
        
    final adsResponse = await _getAdsUsecase(GetAdsParams(getAdsPostBody: _createGetAdsRequest()));

    if(adsResponse.error != null){
      if(isGetPageData){
        _handleErrorPagnation(adsResponse.error);
      } else {
        _handleErrorSearch(adsResponse.error);
      }
      return;
    }

    if(adsResponse.body != null && adsResponse.body.data != null){
      // if(!_state.haveCarsInInventory){
      //   _state = _state.copyWith(
      //     haveCarsInInventory: adsResponse.body.data.length > 0
      //   );
      // }

      final isRichTheEnd =_state.ads.length + adsResponse.body.data.length == adsResponse.body.count;

      _state = _state.copyWith(
        isRichedTheEnd: isRichTheEnd,
        numberOfVehicles : adsResponse.body.count,
        isPaginationError: false
      );
      _emitNewState();
      _state.ads.addAll(adsResponse.body.data);
    } else {
      final error = Failure.genericError();
      if(isGetPageData){
        _handleErrorPagnation(error);
      } else {
        _handleErrorSearch(error);
      }
      return;
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _handleErrorSearch(Failure error){
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
  }

  void _handleErrorPagnation(Failure error){
    String errorMessage = '';

    error.map(
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
      isPaginationError: true,
      offset: _state.offset - _paginationData
    );
    _emitNewState();

    CustomToastUtils.showCustomToast(
      context:_context, 
      message: errorMessage, 
      customToastType: CustomToastType.Error
    );
  }

  GetAdsPostBody _createGetAdsRequest({bool isFirstCheck = false}){
    if(isFirstCheck){
      return GetAdsPostBody(
        getCarData: false
      );
    }

    GetAdsPostBody postBody = GetAdsPostBody(
      offset: _state.offset,
      getCarData: true,
      incompleateData: false,
      isMobile: true
    );

    if(_state.inventoryFilter.value != null){
      if(_state.inventoryFilter.value.id == 9){
        postBody = postBody.copyWith(
          incompleateData: true
        );
      } else {
        postBody = postBody.copyWith(
          sort: _state.inventoryFilter.value
        );
      }
    }

    if(_vehicleSearchModel != null){
      if(_vehicleSearchModel.vehicleType != null){
        postBody = postBody.copyWith(
          vehicleTypeId: _vehicleSearchModel.vehicleType.id
        );
      }

      if(_vehicleSearchModel.vehicleBrand != null){
        postBody = postBody.copyWith(
          vehicleBrandId: _vehicleSearchModel.vehicleBrand.id
        );
      }

      if(_vehicleSearchModel.vehicleModel != null){
        postBody = postBody.copyWith(
          vehicleModelId: _vehicleSearchModel.vehicleModel.id
        );
      }

      if(_vehicleSearchModel.vehicleTransmissionType != null){
        postBody = postBody.copyWith(
          vehicleTransmissionTypeId: _vehicleSearchModel.vehicleTransmissionType.id
        );
      }

      if(_vehicleSearchModel.vehicleBodyWorkType!= null){
        postBody = postBody.copyWith(
          vehcileBodyWorkTypeId: _vehicleSearchModel.vehicleBodyWorkType.id
        );
      }

      if(_vehicleSearchModel.vehicleFuelType != null){
        postBody = postBody.copyWith(
          fuelTypeId: _vehicleSearchModel.vehicleFuelType.id
        );
      }

      if(_vehicleSearchModel.yearFrom != null){
        postBody = postBody.copyWith(
          yearFrom: int.parse(_vehicleSearchModel.yearFrom)
        );
      }

      if(_vehicleSearchModel.yearTo != null){
        postBody = postBody.copyWith(
          yeraTo: int.parse(_vehicleSearchModel.yearTo)
        );
      }

      if(_vehicleSearchModel.priceFrom != null){
        postBody = postBody.copyWith(
          priceFrom: PriceUtils.getPriceFromFormatedPrice(_vehicleSearchModel.priceFrom)
        );
      }

      if(_vehicleSearchModel.priceTo != null){
        postBody = postBody.copyWith(
          priceTo: PriceUtils.getPriceFromFormatedPrice(_vehicleSearchModel.priceTo)
        );
      }

      final f = NumberFormat("#,###");

      if(_vehicleSearchModel.mileageFrom != null){
        postBody = postBody.copyWith(
          mileageFrom: int.parse(_vehicleSearchModel.mileageFrom.replaceAll(f.symbols.GROUP_SEP, ''))
        );
      }

      if(_vehicleSearchModel.mileageTo != null){
        postBody = postBody.copyWith(
          mileageTo: int.parse(_vehicleSearchModel.mileageTo.replaceAll(f.symbols.GROUP_SEP, ''))
        );
      }
    }

    return postBody;
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getAdsUsecase = GetAdsUsecase(getIt.get<InventoryRepository>());
    _getAdSearchFilterOptionsUsecase = GetAdSearchFilterOptionsUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleTypesUsecase = GetVehicleTypesUsecase(getIt.get<DropdownDataRepository>());
  }

  void addEvent(InventoryEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _vehicleSearchBloc.dispose();
    _eventsController.close();
    _stateController.close();
  }
}