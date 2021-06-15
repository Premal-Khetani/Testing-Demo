import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_description/add_vehicle_description_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/add_vehicle_save_description_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_vehicle_id_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/description.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/description_title.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'add_vehicle_description_event.dart';
part 'add_vehicle_description_state.dart';

part 'add_vehicle_description_bloc.freezed.dart';

class AddVehicleDescriptionBloc {
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;

  AddVehicleDescriptionState _state;

  AddVehicleSaveDescriptionUsecase _addVehicleSaveDescriptionUsecase;
  GetVehicleIdUsecase _getVehicleIdUsecase;

  AddVehicleDescriptionBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  AddVehicleDescriptionState get descriptionFormInitialState => _state;

  var _eventsController = StreamController<AddVehicleDescriptionEvent>();
  StreamSink<AddVehicleDescriptionEvent> get _inEventsControler => _eventsController.sink;

  var _descriptionFormStateController = StreamController<AddVehicleDescriptionState>.broadcast();
  StreamSink<AddVehicleDescriptionState> get _inDescriptionFormStateController => _descriptionFormStateController.sink;
  Stream<AddVehicleDescriptionState> get outDescriptionFormStateController => _descriptionFormStateController.stream;

  void _initialise(){
    _state = AddVehicleDescriptionState.initial();
    
    if(_addVehicleResponse.title != null){
      _state.descriptionTitle.value = _addVehicleResponse.title;
    }

    if(_addVehicleResponse.description != null){
      _state.description.value = _addVehicleResponse.description;
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(AddVehicleDescriptionEvent event){
    event.map(
      titleChanged: (e) { 
        _state.descriptionTitle.value = e.value;
        if(_state.descriptionTitle.isError){
          _state.descriptionTitle.errorMessage = '';
        }
        _emitNewState();
      }, 
      descriptionChanged: (e) { 
        _state.description.value = e.value;
        if(_state.description.isError){
          _state.description.errorMessage = '';
          _emitNewState();
        }
      },
      save: (_) async { 
        await _save();
      }, 
      close: (_) async { 
        await close();
      }
    );
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
    bool isTitleChanged = false;
    bool isDescriptionChanged = false;

    if(_addVehicleResponse.title != null){
      isTitleChanged = _addVehicleResponse.title != _state.descriptionTitle.value;
    } else {
      if(_state.descriptionTitle.value != ''){
        isTitleChanged = true;
      }
    }
    
    if(_addVehicleResponse.description != null){
      isDescriptionChanged = _addVehicleResponse.description != _state.description.value;
    } else {
      if(_state.description.value != ''){
        isDescriptionChanged = true;
      }
    }

    return isTitleChanged || isDescriptionChanged;
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

    final response = await _addVehicleSaveDescriptionUsecase(AddVehicleSaveDescriptionParams(addVehicleDescriptionPostBody: _createSaveRequest()));

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
        noOperationError: (_){}
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

  AddVehicleDescriptionPostBody _createSaveRequest(){
    return AddVehicleDescriptionPostBody(
      id: _addVehicleResponse.id,
      title : _state.descriptionTitle.value,
      description: _state.description.value
    );
  }

  void _popAndReturnState(AddVehicleResponse response){
    Navigator.of(_context).pop(response);
  }

  bool _validateForm(){
    final isTitleValid = _state.descriptionTitle.validate();
    final isDescriptionValid = _state.description.validate();

    return isTitleValid && isDescriptionValid;
  }

  void _emitNewState(){
    _inDescriptionFormStateController.add(_state);
  }

  void _resolveDependencies(){
    _addVehicleSaveDescriptionUsecase = AddVehicleSaveDescriptionUsecase(getIt.get<AddVehicleRepository>());
    _getVehicleIdUsecase = GetVehicleIdUsecase(getIt.get<AddVehicleRepository>());
  }

  void addEvent(AddVehicleDescriptionEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _descriptionFormStateController.close();
  }
}