import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_price/add_vehicle_price_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_price_types_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/add_vehicle_save_price_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_vehicle_id_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/price.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/price_type.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/app_navigation_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_stock_route_generator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/add_vehicle_what_hapens_after_save_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_price_event.dart';
part 'add_vehicle_price_state.dart';

part 'add_vehicle_price_bloc.freezed.dart';

class AddVehiclePriceBloc {
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;

  AddVehiclePriceState _state;

  GetPriceTypesUsecase _getPriceTypesUsecase;
  GetVehicleIdUsecase _getVehicleIdUsecase;
  AddVehicleSavePriceUsecase _addVehicleSavePriceUsecase;

  AddVehiclePriceBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  AddVehiclePriceState get priceFormInitialState => _state;

  var _eventsController = StreamController<AddVehiclePriceEvent>();
  StreamSink<AddVehiclePriceEvent> get _inEventsControler => _eventsController.sink;

  var _priceFormStateController = StreamController<AddVehiclePriceState>.broadcast();
  StreamSink<AddVehiclePriceState> get _inPriceFormStateController => _priceFormStateController.sink;
  Stream<AddVehiclePriceState> get outPriceFormStateController => _priceFormStateController.stream;

  void _initialise() async {
    _state = AddVehiclePriceState.initial();
    await _getDropdownData();
  }

  void _mapEventToState(AddVehiclePriceEvent event){
    event.map(
      close: (_) async {
        await close();
      }, 
      save: (_) async {
        await _save();
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
      onViewAdTapped: (_) async {
        final args = ViewAdRuteArgs(
          addVehicleResponse: _addVehicleResponse,
          priceType: _state.priceType.value,
          price: _state.price.value
        );
        await Navigator.of(_context).pushNamed('/add_vehicle/view_ad', arguments: args);
      },
      onWhatHappensAffterSaveTapped: (_) async {
        final args = InfoPopUpRouteArgs(content: AddVehicleWhatHappensAfterSaveWidget());
        await appBloc.pushRoute('/info_pop_up', arguments: args);
      },
      priceTypeChanged: (e) { 
        _state.priceType.value = e.value;
        if(_state.priceType.isError){
          _state.priceType.errorMessage = '';
        }

        if(e.value.name == 'Asking price'){
          _state = _state.copyWith(
            isPriceEnabled: true,
            isBpmEnabled: true,
            isVatEnabled: true,
            isTradingPriceEnabled: true,
            isExportPriceEnabled: true
          );
        } else {
          _state = _state.copyWith(
            isPriceEnabled: false,
            isBpmEnabled: false,
            isVatEnabled: false,
            isTradingPriceEnabled: false,
            isExportPriceEnabled: false
          );
          _state.price.value = '';
          _state.bpm.value = '';
          _state.vat.value = '';
          _state.tradingPrice.value = '';
          _state.exportPrice.value = '';
        } 

        _emitNewState();
      }, 
      priceChanged: (e){
        _state.price.value = e.value;
        if(_state.price.isError){
          _state.price.errorMessage = '';
          _emitNewState();
        }
      }, 
      bpmChanged: (e){
        _state.bpm.value = e.value;
        if(_state.bpm.isError){
          _state.bpm.errorMessage = '';
          _emitNewState();
        }
      }, 
      vatChanged: (e){
        _state.vat.value = e.value;
        if(_state.vat.isError){
          _state.vat.errorMessage = '';
          _emitNewState();
        }
      }, 
      traderPriceChanged: (e){
        _state.tradingPrice.value = e.value;
        if(_state.tradingPrice.isError){
          _state.tradingPrice.errorMessage = '';
          _emitNewState();
        }
      }, 
      exportPriceChanged: (e){
        _state.exportPrice.value = e.value;
        if(_state.exportPrice.isError){
          _state.exportPrice.errorMessage = '';
          _emitNewState();
        }
      }
    );
  }

  Future<void> _getDropdownData() async {
    final priceTypesResponse = await _getPriceTypesUsecase(NoParams());
    
    if(priceTypesResponse.error != null){
      priceTypesResponse.error.map(
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
        }, noOperationError: (_) {  }
      );

      return;
    }

    if(priceTypesResponse.body != null){
      _state.priceType.options = priceTypesResponse.body;
    }

    _populateData();

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _populateData(){
    _state.priceType.value = _addVehicleResponse.priceType;

    if(_addVehicleResponse.priceType != null && _addVehicleResponse.priceType.name != 'Asking price'){
      _state = _state.copyWith(
        isPriceEnabled: true,
        isBpmEnabled: true,
        isVatEnabled: true,
        isTradingPriceEnabled: true,
        isExportPriceEnabled: true
      );
    }

    if(_addVehicleResponse.price != null){
      _state.price.value = PriceUtils.formatPriceFromApi(_addVehicleResponse.price);
    }

    if(_addVehicleResponse.bpm != null){
      _state.bpm.value = PriceUtils.formatPriceFromApi(_addVehicleResponse.bpm);
    }

    if(_addVehicleResponse.vat != null){
      _state.vat.value = PriceUtils.formatPriceFromApi(_addVehicleResponse.vat);
    }

    if(_addVehicleResponse.tradePrice != null){
      _state.tradingPrice.value = PriceUtils.formatPriceFromApi(_addVehicleResponse.tradePrice);
    }

    if(_addVehicleResponse.exportPrice != null){
      _state.exportPrice.value = PriceUtils.formatPriceFromApi(_addVehicleResponse.exportPrice);
    }
  }

  Future<void> close() async {
    if(_checkIsDataChanged()){
      final userResponse = await DataChangedPopUpUtil.showDataChangedPopUp(_context);
      switch(userResponse){
        case DataChangedPopupResponse.SaveAndClose:
          _save();
          break;
        case DataChangedPopupResponse.Close:
          _popAndReturnState(null);
          break;
        default:
          break;
      }
    } else {
      _popAndReturnState(null);
    }
  }

  bool _checkIsDataChanged(){
    bool isPriceTypeChanged = false;
    bool isPriceChanged = false;
    bool isBpmChanged = false;
    bool isVatChanged = false;
    bool isTradePriceChanged = false;
    bool isExportPriceChanged = false;

    isPriceTypeChanged = _addVehicleResponse.priceType != _state.priceType.value;

    if(_addVehicleResponse.price != null){
      isPriceChanged = PriceUtils.getPriceFromFormatedPrice(_addVehicleResponse.price) != PriceUtils.getPriceFromFormatedPrice(_state.price.value);
    } else {
      if(_state.price.value != ''){
        isPriceChanged = true;
      }
    }

    if(_addVehicleResponse.bpm != null){
      isBpmChanged = PriceUtils.getPriceFromFormatedPrice(_addVehicleResponse.bpm) != PriceUtils.getPriceFromFormatedPrice(_state.bpm.value);
    } else {
      if(_state.bpm.value != ''){
        isBpmChanged = true;
      }
    }

    if(_addVehicleResponse.vat != null){
      isVatChanged = PriceUtils.getPriceFromFormatedPrice(_addVehicleResponse.vat) != PriceUtils.getPriceFromFormatedPrice(_state.vat.value);
    } else {
      if(_state.vat.value != ''){
        isVatChanged = true;
      }
    }

    if(_addVehicleResponse.tradePrice != null){
      isTradePriceChanged = PriceUtils.getPriceFromFormatedPrice(_addVehicleResponse.tradePrice) != PriceUtils.getPriceFromFormatedPrice(_state.tradingPrice.value);
    } else {
      if(_state.tradingPrice.value != ''){
        isTradePriceChanged = true;
      }
    }

    if(_addVehicleResponse.exportPrice != null){
      isExportPriceChanged = PriceUtils.getPriceFromFormatedPrice(_addVehicleResponse.exportPrice) != PriceUtils.getPriceFromFormatedPrice(_state.exportPrice.value);
    } else {
      if(_state.exportPrice.value != ''){
        isExportPriceChanged = true;
      }
    }

    return isPriceTypeChanged || isPriceChanged || isBpmChanged || isVatChanged || isTradePriceChanged || isExportPriceChanged;
  }

  Future<void> _save() async {
    if(!_validateForm()){
      _emitNewState();
      return;
    }

    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();

    if(_addVehicleResponse.id == null){
      final response = await _getVehicleIdUsecase(GetVehicleIdParams(addVehicleInitialPostBody: AddVehicleInitialPostBody(isMobile: true)));
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

      if(response.body != null){
        _addVehicleResponse = _addVehicleResponse.copyWith(
          id: response.body.id
        );
      }
    }

    final response = await _addVehicleSavePriceUsecase(AddVehicleSavePriceParams(addVehiclePricePostBody: _createSaveRequest()));

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

    if(response.body != null){
      _state = _state.copyWith(
        isSubmitting: false
      );
      _popAndReturnState(response.body);
    }
  }

  AddVehiclePricePostBody _createSaveRequest(){
    AddVehiclePricePostBody postBody = AddVehiclePricePostBody(
      id: _addVehicleResponse.id,
      priceTypeId : _state.priceType.value.id
    );

    if(_state.price.value.isNotEmpty){
      postBody = postBody.copyWith(
        price : PriceUtils.getPriceFromFormatedPrice(_state.price.value)
      );
    }

    if(_state.bpm.value.isNotEmpty){
      postBody = postBody.copyWith(
        bpm : PriceUtils.getPriceFromFormatedPrice(_state.bpm.value)
      );
    }

    if(_state.vat.value.isNotEmpty){
      postBody = postBody.copyWith(
        vat : PriceUtils.getPriceFromFormatedPrice(_state.vat.value)
      );
    }

    if(_state.tradingPrice.value.isNotEmpty){
      postBody = postBody.copyWith(
        tradingPrice : PriceUtils.getPriceFromFormatedPrice(_state.tradingPrice.value)
      );
    }

    if(_state.exportPrice.value.isNotEmpty){
      postBody = postBody.copyWith(
        exportPrice : PriceUtils.getPriceFromFormatedPrice(_state.exportPrice.value)
      );
    }

    return postBody;
  }

  void _popAndReturnState(AddVehicleResponse response){
    Navigator.of(_context).pop(response);
  }

  bool _validateForm(){
    final isPriceTypeValid = _state.priceType.validate();
    if(!isPriceTypeValid){
      return false;
    }

    bool isPriceValid = true;
    bool isBpmValid = true;
    bool isVatValid = true;
    bool isTradePrice = true;
    bool isExportPrice = true;

    if(_state.priceType.value.name == 'Asking price'){
      isPriceValid = _state.price.validate(isRequired: true);
    } else {
      if(_state.price.value.isNotEmpty){
        isPriceValid = _state.price.validate();
      }
    }

    if(_state.bpm.value.isNotEmpty){
      isBpmValid = _state.bpm.validate();
    }

    if(_state.vat.value.isNotEmpty){
      isVatValid = _state.vat.validate();
    }

    if(_state.tradingPrice.value.isNotEmpty){
      isTradePrice = _state.tradingPrice.validate();
    }

    if(_state.exportPrice.value.isNotEmpty){
      isExportPrice = _state.exportPrice.validate();
    }

    return isPriceTypeValid && isPriceValid && isBpmValid && isVatValid
      && isTradePrice && isExportPrice;
  }

  void _emitNewState(){
    _inPriceFormStateController.add(_state);
  }

  void _resolveDependencies(){
    _getPriceTypesUsecase = GetPriceTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleIdUsecase = GetVehicleIdUsecase(getIt.get<AddVehicleRepository>());
    _addVehicleSavePriceUsecase = AddVehicleSavePriceUsecase(getIt.get<AddVehicleRepository>());
  }

  void addEvent(AddVehiclePriceEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _priceFormStateController.close();
  }
}