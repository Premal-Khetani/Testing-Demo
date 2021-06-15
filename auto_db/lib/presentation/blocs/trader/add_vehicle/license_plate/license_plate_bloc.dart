import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_license_plate/add_vehicle_license_plate_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_post_request.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/add_vehicle_save_license_plate_useacse.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_rdw_informations_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_vehicle_id_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/license_plate.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/name_or_stock_number.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_plate_event.dart';
part 'license_plate_state.dart';

part 'license_plate_bloc.freezed.dart';

class LicensePlateBloc {
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;

  LicensePlateState _state;

  AddVehicleSaveLicensePlateUsecase _addVehicleSaveLicensePlateUsecase;
  GetVehicleIdUsecase _getVehicleIdUsecase;
  GetRDWInformationUsecase _getRDWInformationUsecase;

  LicensePlateBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }){
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  LicensePlateState get licensePlateFormInitialState => _state;

  var _eventsController = StreamController<LicensePlateEvent>();
  StreamSink<LicensePlateEvent> get _inEventsControler => _eventsController.sink;

  var _licensePlateFormStateController = StreamController<LicensePlateState>.broadcast();
  StreamSink<LicensePlateState> get _inLicensePlateFormStateController => _licensePlateFormStateController.sink;
  Stream<LicensePlateState> get outLicensePlateStateController => _licensePlateFormStateController.stream;

  void _initialise(){
    _state = LicensePlateState.initial();

    if(_addVehicleResponse.licensePlate != null){
      _state.licensePlate.value = _addVehicleResponse.licensePlate;
    }

    if(_addVehicleResponse.stockNumber != null){
      _state.nameOrStockNumber.value = _addVehicleResponse.stockNumber;
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(LicensePlateEvent event){
    event.map(
      onUseLicensePlateTapped: (_) async {
        await _useLicensePlateTapped();
      }, 
      onSaveTapped: (_) async {
        await _saveAndClose();
      }, 
      licensePlateChanged: (e) {
        _state.licensePlate.value = e.value;
        if(_state.licensePlate.isError){
          _state.licensePlate.errorMessage = '';
          _emitNewState();
        }
      }, 
      nameOrStockNumberChanged: (e) {
        _state.nameOrStockNumber.value = e.value;
        if(_state.nameOrStockNumber.isError){
          _state.nameOrStockNumber.errorMessage = '';
          _emitNewState();
        }
      }, 
      close: (_) async { 
        await close();
      }
    );
  }

  Future<void> _useLicensePlateTapped() async {
    if(!_isLicensePlateValid()){
      _emitNewState();
      return;
    }

    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();

    final response = await _getRDWInformationUsecase(
      GetRDWInformationsParams(rdwPostRequest: RDWPostRequest(licensePlate: _state.licensePlate.value))
    );

    if(response.error != null){
      _handleApiError(response.error);
      return;
    }

    if(response.body != null){
      if(response.body.licensePlate != null){
        _state.licensePlate.value = response.body.licensePlate;
      }
      final addVehicleResponse = await _save();
      if(addVehicleResponse != null){
        _popAndReturnState(
          LicensePlateReturnValue(
            addVehicleResponse : addVehicleResponse,
            isRDW: true,
            rdwResponse: response.body
          )
        );
      }
    }
  }

  bool _isLicensePlateValid(){
    return _state.licensePlate.validateRDW();
  }

  Future<void> close() async {
    print('close');
    if(_checkIsDataChanged()){
      final userResponse = await DataChangedPopUpUtil.showDataChangedPopUp(_context);
      switch(userResponse){
        case DataChangedPopupResponse.SaveAndClose:
          _saveAndClose();
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
    bool isLPChanged = false;
    bool isStockNumberChanged = false;

    if(_addVehicleResponse.licensePlate != null){
      isLPChanged = _addVehicleResponse.licensePlate != _state.licensePlate.value;
    } else {
      if(_state.licensePlate.value != ''){
        isLPChanged = true;
      }
    }

    if(_addVehicleResponse.stockNumber != null){
      isStockNumberChanged = _addVehicleResponse.stockNumber != _state.nameOrStockNumber.value;
    } else {
      if(_state.nameOrStockNumber.value != ''){
        isStockNumberChanged = true;
      }
    }

    return isLPChanged || isStockNumberChanged;
  }

  Future<void> _saveAndClose() async {
    final addVehicleResponse = await _save();
    if(addVehicleResponse != null){
      _state = _state.copyWith(
        isSubmitting: false
      );
      _popAndReturnState(LicensePlateReturnValue(addVehicleResponse : addVehicleResponse));
    }
  }

  Future<AddVehicleResponse> _save() async {
    if(!_validateForm()){
      _emitNewState();
      return null;
    }

    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();

    if(_addVehicleResponse.id == null){
      final response = await _getVehicleIdUsecase(GetVehicleIdParams(addVehicleInitialPostBody: AddVehicleInitialPostBody(isMobile: true)));
      if(response.error != null){
        _handleApiError(response.error);
        return null;
      }

      if(response.body != null){
        _addVehicleResponse = _addVehicleResponse.copyWith(
          id: response.body.id
        );
      }
    }

    AddVehicleResponse addVehicleResponse;

    final response = await _addVehicleSaveLicensePlateUsecase(AddVehicleSaveLicensePlateParams(addVehicleLicensePlatePostBody: _createSaveRequest()));

    if(response.error != null){
      _handleApiError(response.error);
      return null;
    }

    if(response.body != null){
      addVehicleResponse = response.body;
    }

    return addVehicleResponse;
  }

  void _handleApiError(Failure error){
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
      isSubmitting: false
    );
    _emitNewState();

    CustomToastUtils.showCustomToast(
      context:_context, 
      message: errorMessage, 
      customToastType: CustomToastType.Error
    );
  }

  AddVehicleLicensePlatePostBody _createSaveRequest(){
    AddVehicleLicensePlatePostBody postBody = AddVehicleLicensePlatePostBody(
      id : _addVehicleResponse.id
    );

    if(_state.licensePlate.value.isNotEmpty){
      postBody = postBody.copyWith(
        licensePlate : _state.licensePlate.value
      );
    }

    if(_state.nameOrStockNumber.value.isNotEmpty){
      postBody = postBody.copyWith(
        nameOrStockNumber : _state.nameOrStockNumber.value
      );
    }

    return postBody;
  }

  void _popAndReturnState(LicensePlateReturnValue value){
    Navigator.of(_context).pop(value);
  }

  bool _validateForm(){
    if(_state.licensePlate.value.isEmpty && _state.nameOrStockNumber.value.isEmpty){
      CustomToastUtils.showCustomToast(
        context:_context, 
        message: StringConstants.emptyLicensePlateFormErrorMessage,
        customToastType: CustomToastType.Error
      );
      return false;
    }

    final isLicensePlateValid = _state.licensePlate.validate();
    final isNameOrStockNumberValid = _state.nameOrStockNumber.validate();

    return isLicensePlateValid && isNameOrStockNumberValid;
  }

  void _emitNewState(){
    _inLicensePlateFormStateController.add(_state);
  }

  void _resolveDependencies(){
    _addVehicleSaveLicensePlateUsecase = AddVehicleSaveLicensePlateUsecase(getIt.get<AddVehicleRepository>());
    _getVehicleIdUsecase = GetVehicleIdUsecase(getIt.get<AddVehicleRepository>());
    _getRDWInformationUsecase = GetRDWInformationUsecase(getIt.get<AddVehicleRepository>());
  }

  void addEvent(LicensePlateEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _licensePlateFormStateController.close();
  }
}

class LicensePlateReturnValue{
  final AddVehicleResponse addVehicleResponse;
  final bool isRDW;
  final RDWResponse rdwResponse;

  LicensePlateReturnValue({
    @required this.addVehicleResponse,
    this.isRDW = false,
    this.rdwResponse
  });
}