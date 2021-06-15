import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_specifications/add_vehicle_specifications_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_body_work_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_brands_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_colors_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_fuel_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_interiors_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_models_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_transmission_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_types_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/add_vehicle_save_specifications_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_vehicle_id_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/add_vehicle_year.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/engine_size.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/mileage.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/mileage_measurment_unit.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_body_work.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_color.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_interior.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_transmission_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_specifications_event.dart';
part 'add_vehicle_specifications_state.dart';

part 'add_vehicle_specifications_bloc.freezed.dart';

class AddVehicleSpecificationsBloc{
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;
  RDWResponse _rdw;

  AddVehicleSpecificationsState _state;

  GetVehicleTypesUsecase _getVehicleTypesUsecase;
  GetVehicleBrandsUseacse _getVehicleBrandsUseacse;
  GetVehicleModelsUseacse _getVehicleModelsUseacse;
  GetVehicleTransmissionTypesUseacse _getVehicleTransmissionTypesUseacse;
  GetVehicleBodyWorkTypesUsecase _getVehicleBodyWorkTypesUsecase;
  GetVehicleFuelTypesUsecase _getVehicleFuelTypesUsecase;
  GetVehicleColorsUsecase _getVehicleColorsUsecase;
  GetVehicleInterirorsUsecase _getVehicleInterirorsUsecase;
  AddVehicleSaveSpecificationsUsecase _addVehicleSaveSpecificationsUsecase;
  GetVehicleIdUsecase _getVehicleIdUsecase;

  AddVehicleSpecificationsBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse,
    @required RDWResponse rdw
  }){
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    _rdw = rdw;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  AddVehicleSpecificationsState get specificationsFormInitialState => _state;

  var _eventsController = StreamController<AddVehicleSpecificationsEvent>();
  StreamSink<AddVehicleSpecificationsEvent> get _inEventsControler => _eventsController.sink;

  var _specificationsFormStateController = StreamController<AddVehicleSpecificationsState>.broadcast();
  StreamSink<AddVehicleSpecificationsState> get _inSpecificationsFormStateController => _specificationsFormStateController.sink;
  Stream<AddVehicleSpecificationsState> get outSpecificationsFormStateController => _specificationsFormStateController.stream;

  void _initialise() async {
    _state = AddVehicleSpecificationsState.initial();
    await _getDropdownData();
  }

  void _mapEventToState(AddVehicleSpecificationsEvent event){
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
      egnineSizeChanged: (e) { 
        _state.engineSize.value = e.value;
        _state.engineSize.validateWhenTyping();
        _emitNewState();
      }, 
      mileageChanged: (e) { 
        _state.mileage.value = e.value;
        _state.mileage.validateWhenTyping();
        _emitNewState();
      }, 
      mileageMeasurmentUnitChanged: (e) { 
        _state.mileageMeasurmentUnit.value = e.value;
        if(_state.mileageMeasurmentUnit.isError){
          _state.mileageMeasurmentUnit.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleBodyWorkChanged: (e) { 
        _state.vehicleBodyWork.value = e.value;
        if(_state.vehicleBodyWork.isError){
          _state.vehicleBodyWork.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleBrandChanged: (e) async { 
        _state.vehicleBrand.value = e.value;
        if(_state.vehicleBrand.isError){
          _state.vehicleBrand.errorMessage = '';
        }
        await _getModelsForBrand(e.value);
        _emitNewState();
      }, 
      vehicleFuelTypeChanged: (e) { 
        _state.vehicleFuelType.value = e.value;
        if(_state.vehicleFuelType.isError){
          _state.vehicleFuelType.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleModelChanged: (e) { 
        _state.vehicleModel.value = e.value;
        if(_state.vehicleModel.isError){
          _state.vehicleModel.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleTransmissionChanged: (e) { 
        _state.vehicleTransmissionType.value = e.value;
        if(_state.vehicleTransmissionType.isError){
          _state.vehicleTransmissionType.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleTypeChanged: (e) { 
        _state.vehicleType.value = e.value;
        if(_state.vehicleType.isError){
          _state.vehicleType.errorMessage = '';
        }
        _emitNewState();
      }, 
      yearChanged: (e) { 
        _state.year.value = e.value;
        if(_state.year.isError){
          _state.year.errorMessage = '';
        }
        _emitNewState();
      }, 
      colorChaneged: (e) { 
        _state.color.value = e.value;
        if(_state.color.isError){
          _state.color.errorMessage = '';
        }
        _emitNewState();
      }, 
      vehicleInteriorChanged: (e) { 
        _state.vehicleInterior.value = e.value;
        if(_state.vehicleInterior.isError){
          _state.vehicleInterior.errorMessage = '';
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
    final vehicleColorsResponse = await _getVehicleColorsUsecase(NoParams());
    final vehicleInteriorsResponse = await _getVehicleInterirorsUsecase(NoParams());

    if(vehicleTypesResponse.error != null || vehicleBrandsResponse.error != null ||  vehicleTransmissionTypesResponse.error != null || 
      vehicleBodyWorkTypesResponse.error != null || vehicleFuelTypesResponse.error != null || vehicleColorsResponse.error != null || vehicleInteriorsResponse.error != null){
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

      if(error == null && vehicleColorsResponse.error != null){
        error = vehicleColorsResponse.error;
      }

      if(error == null && vehicleInteriorsResponse.error != null){
        error = vehicleInteriorsResponse.error;
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
      _state.color.options = vehicleColorsResponse.body;
      _state.vehicleInterior.options = vehicleInteriorsResponse.body;
    }

    await _populateData();

    if(_rdw != null){
      await _populateDataRDW(); 
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  Future<void> _populateData() async {
    _state.vehicleType.value = _addVehicleResponse.vehicleType;
    _state.vehicleBrand.value = _addVehicleResponse.vehicleBrend;
    if(_addVehicleResponse.vehicleBrend != null){
      await _getModelsForBrand(_addVehicleResponse.vehicleBrend);
    }
    _state.vehicleModel.value = _addVehicleResponse.vehicleModel;
    _state.vehicleTransmissionType.value = _addVehicleResponse.vehicleTransmissionType;
    _state.vehicleBodyWork.value = _addVehicleResponse.vehicleBodyWork;
    _state.vehicleFuelType.value = _addVehicleResponse.fuelType;
    
    if(_addVehicleResponse.year != null){
      _state.year.value = _addVehicleResponse.year.toString();
    }

    if(_addVehicleResponse.mileage != null){
      _state.mileage.value = _addVehicleResponse.mileage.toString();
    }

    if(_addVehicleResponse.mileageUnit != null){
      final indx = _state.mileageMeasurmentUnit.options.indexWhere((e) => e == _addVehicleResponse.mileageUnit);
      if(indx > -1){
         _state.mileageMeasurmentUnit.value = _state.mileageMeasurmentUnit.options[indx];
      }
    }

    _state.color.value = _addVehicleResponse.color;
    _state.vehicleInterior.value = _addVehicleResponse.interior;

    if(_addVehicleResponse.engineSize != null){
      _state.engineSize.value = _addVehicleResponse.engineSize.toString();
    }
  }

  Future<void> _populateDataRDW() async {
    if(_rdw.vehicleTypeId != null){
      final indx = _state.vehicleType.options.indexWhere((element) => element.id == _rdw.vehicleTypeId);
      if(indx > -1){
        _state.vehicleType.value = _state.vehicleType.options[indx];
        // _state.vehicleType.isDisabled = true;
      }
    } else {
      _state.vehicleType.value = null;
    }

    if(_rdw.brandId != null){
      final indx = _state.vehicleBrand.options.indexWhere((element) => element.id == _rdw.brandId);
      if(indx > -1){
        _state.vehicleBrand.value = _state.vehicleBrand.options[indx];
        // _state.vehicleBrand.isDisabled = true;
        _state.vehicleModel.value = null;
        _state.vehicleModel.options = null;
        await _getModelsForBrand(_state.vehicleBrand.options[indx]);
        if(_rdw.modelId != null){
          final _indx = _state.vehicleModel.options.indexWhere((element) => element.id == _rdw.modelId);
          if(_indx > -1){
            _state.vehicleModel.value = _state.vehicleModel.options[_indx];
            // _state.vehicleModel.isDisabled = true;
          }
        }
      }
    } else {
      _state.vehicleBrand.value = null;
      _state.vehicleModel.value = null;
      _state.vehicleModel.options = null;
    }

    if(_rdw.transmissionTypeId != null){
      final indx = _state.vehicleTransmissionType.options.indexWhere((element) => element.id == _rdw.transmissionTypeId);
      if(indx > -1){
        _state.vehicleTransmissionType.value = _state.vehicleTransmissionType.options[indx];
        // _state.vehicleTransmissionType.isDisabled = true;
      }
    } else {
      _state.vehicleTransmissionType.value = null;
    }

    if(_rdw.bodyworkTypeId != null){
      final indx = _state.vehicleBodyWork.options.indexWhere((element) => element.id == _rdw.bodyworkTypeId);
      if(indx > -1){
        _state.vehicleBodyWork.value = _state.vehicleBodyWork.options[indx];
        // _state.vehicleBodyWork.isDisabled = true;
      }
    } else {
      _state.vehicleBodyWork.value = null;
    }

    if(_rdw.fuelTypeId != null){
      final indx = _state.vehicleFuelType.options.indexWhere((element) => element.id == _rdw.fuelTypeId);
      if(indx > -1){
        _state.vehicleFuelType.value = _state.vehicleFuelType.options[indx];
        // _state.vehicleFuelType.isDisabled = true;
      }
    } else {
      _state.vehicleFuelType.value = null;
    }

    if(_rdw.colorId != null){
      final indx = _state.color.options.indexWhere((element) => element.id == _rdw.colorId);
      if(indx > -1){
        _state.color.value = _state.color.options[indx];
        // _state.color.isDisabled = true;
      }
    } else {
      _state.color.value = null;
    }

    if(_rdw.year != null){
      _state.year.value = _rdw.year;
      //  _state.year.isDisabled = true;
    } else {
      _state.year.value = null;
    }
    
    if(_rdw.engineSize != null){
      _state.engineSize.value = _rdw.engineSize;
      //  _state.engineSize.isDisabled = true;
    } else {
      _state.engineSize.value = '';
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
    bool isVehicleTypeChanged = false;
    bool isBrandChanged = false;
    bool isModelChanged = false;
    bool isTransmisionChanged = false;
    bool isBodyWorkChanged = false;
    bool isFuelTypeChanged = false;
    bool isYearChanged = false;
    bool isMileageChanged = false;
    bool isEngineSizeChanged = false;
    bool isUnitChanged = false;
    bool isColorChanged = false;
    bool isInteriorChanged = false;

    isVehicleTypeChanged = _addVehicleResponse.vehicleType != _state.vehicleType.value;
    isBrandChanged = _addVehicleResponse.vehicleBrend != _state.vehicleBrand.value;
    isModelChanged = _addVehicleResponse.vehicleModel != _state.vehicleModel.value;
    isTransmisionChanged = _addVehicleResponse.vehicleTransmissionType != _state.vehicleTransmissionType.value;
    isBodyWorkChanged = _addVehicleResponse.vehicleBodyWork != _state.vehicleBodyWork.value;
    isFuelTypeChanged = _addVehicleResponse.fuelType != _state.vehicleFuelType.value;

    if(_addVehicleResponse.mileage != null){
      isMileageChanged = _addVehicleResponse.mileage.toString() != _state.mileage.value;
    } else {
      if(_state.mileage.value != ''){
        isMileageChanged = true;
      }
    }

    if(_addVehicleResponse.engineSize != null){
      isEngineSizeChanged = _addVehicleResponse.engineSize.toString() != _state.engineSize.value;
    } else {
      if(_state.engineSize.value != ''){
        isEngineSizeChanged = true;
      }
    }

    if(_addVehicleResponse.year != null){
      isYearChanged = _addVehicleResponse.year.toString() != _state.year.value;
    } else {
      if(_state.year.value != null){
        isEngineSizeChanged = true;
      }
    }

    if(_addVehicleResponse.mileageUnit != null){
      isUnitChanged = _addVehicleResponse.mileageUnit != _state.mileageMeasurmentUnit.value;
    } else {
      if(_state.mileageMeasurmentUnit.value != StringConstants.km){
        isUnitChanged = true;
      }
    }

    isColorChanged = _addVehicleResponse.color != _state.color.value;
    isInteriorChanged = _addVehicleResponse.interior != _state.vehicleInterior.value;

    return isVehicleTypeChanged ||
      isBrandChanged ||
      isModelChanged ||
      isTransmisionChanged ||
      isBodyWorkChanged ||
      isYearChanged ||
      isFuelTypeChanged||
      isMileageChanged ||
      isUnitChanged ||
      isColorChanged ||
      isInteriorChanged ||
      isEngineSizeChanged;
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

    final response = await _addVehicleSaveSpecificationsUsecase(AddVehicleSaveSpecifiactionsParams(addVehicleSpecificationsPostBody: _createSaveRequest()));

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

  AddVehicleSpecificationsPostBody _createSaveRequest(){
    AddVehicleSpecificationsPostBody postBody = AddVehicleSpecificationsPostBody(
      id: _addVehicleResponse.id,
      vehicleTypeId: _state.vehicleType.value.id,
      brandId: _state.vehicleBrand.value.id,
      modelId: _state.vehicleModel.value.id,
      transmissionTypeId: _state.vehicleTransmissionType.value.id,
      bodyworkTypeId: _state.vehicleBodyWork.value.id,
      year: int.parse(_state.year.value),
      fuelTypeId: _state.vehicleFuelType.value.id,
      mileage: int.parse(_state.mileage.value),
      mileageUnit: _state.mileageMeasurmentUnit.value,
      engineSize: int.parse(_state.engineSize.value)
    );

    if(_state.color.value != null){
      postBody = postBody.copyWith(
        color: _state.color.value.id
      );
    }

    if(_state.vehicleInterior.value != null){
      postBody = postBody.copyWith(
        interior: _state.vehicleInterior.value
      );
    }

    return postBody;
  }

  void _popAndReturnState(AddVehicleResponse response){
    Navigator.of(_context).pop(response);
  }

  bool _validateForm(){
    final isVehicleTypeValid = _state.vehicleType.validate();
    final isVehicleBrandValid = _state.vehicleBrand.validate();
    final isVehicleModleValid = _state.vehicleModel.validate();
    final isVehicleTransmissionTypeValid = _state.vehicleTransmissionType.validate();
    final isVehicleBodyWorkValid = _state.vehicleBodyWork.validate();
    final isYearValid = _state.year.validate();
    final isVehicleFuelTypeValid = _state.vehicleFuelType.validate();
    final isMileageValid = _state.mileage.validate();
    final isEngineSizeValid = _state.engineSize.validate();

    return isVehicleTypeValid && isVehicleBrandValid && isVehicleModleValid && isVehicleTransmissionTypeValid && isVehicleBodyWorkValid
      && isYearValid && isVehicleFuelTypeValid && isMileageValid && isEngineSizeValid;
  }

  void _emitNewState(){
    _inSpecificationsFormStateController.add(_state);
  }

  void _resolveDependencies(){
    _getVehicleTypesUsecase = GetVehicleTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleBrandsUseacse = GetVehicleBrandsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleModelsUseacse = GetVehicleModelsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleTransmissionTypesUseacse = GetVehicleTransmissionTypesUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleBodyWorkTypesUsecase = GetVehicleBodyWorkTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleFuelTypesUsecase = GetVehicleFuelTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleColorsUsecase = GetVehicleColorsUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleInterirorsUsecase = GetVehicleInterirorsUsecase(getIt.get<DropdownDataRepository>());
    _addVehicleSaveSpecificationsUsecase = AddVehicleSaveSpecificationsUsecase(getIt.get<AddVehicleRepository>());
    _getVehicleIdUsecase = GetVehicleIdUsecase(getIt.get<AddVehicleRepository>());
  }

  void addEvent(AddVehicleSpecificationsEvent event){
    _inEventsControler.add(event);
  }

  void dispose(){
    _eventsController.close();
    _specificationsFormStateController.close();
  }
}