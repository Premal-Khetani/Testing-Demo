import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/lead_filter.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/leads_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_brands_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_fuel_types_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_models_usecase.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_vehicle_types_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_brand.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_fuel_type.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_model.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/vehicle_type.dart';
import 'package:auto_db/navigation/trader/trader_more_route_generator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../main.dart';

part 'add_edit_lead_filter_event.dart';
part 'add_edit_lead_filter_state.dart';

part 'add_edit_lead_filter_bloc.freezed.dart';

class AddEditLeadFilterBloc {
  BuildContext _context;
  AddEditLeadFilterState _state;
  AddEditLeadFilterRuteArgs _ruteArgs;

  GetVehicleTypesUsecase _getVehicleTypesUsecase;
  GetVehicleBrandsUseacse _getVehicleBrandsUseacse;
  GetVehicleModelsUseacse _getVehicleModelsUseacse;
  GetVehicleFuelTypesUsecase _getVehicleFuelTypesUsecase;
  LeadsRepository _leadsRepository;

  AddEditLeadFilterBloc(AddEditLeadFilterRuteArgs ruteArgs) {
    _ruteArgs = ruteArgs;
    _state = AddEditLeadFilterState.initial();
    _eventsController.stream.listen(_mapEventToState);
    _resolveDependencies();
    _initialise();
  }

  AddEditLeadFilterState get initialState {
    if (_state == null) {
      _state = AddEditLeadFilterState.initial();
    }
    return _state;
  }

  var _eventsController = StreamController<AddEditLeadFilterEvent>();
  StreamSink<AddEditLeadFilterEvent> get _inEventsControler =>
      _eventsController.sink;

  var _stateController = StreamController<AddEditLeadFilterState>.broadcast();
  StreamSink<AddEditLeadFilterState> get _inStateController =>
      _stateController.sink;
  Stream<AddEditLeadFilterState> get outStateController =>
      _stateController.stream;

  void _mapEventToState(AddEditLeadFilterEvent event) {
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
            noInternetConnection: false);
        _emitNewState();
        await _getDropdownData();
      },
      vehicleBrandChanged: (e) async {
        _state.vehicleBrand.value = e.value;
        if (_state.vehicleBrand.isError) {
          _state.vehicleBrand.errorMessage = '';
        }
        await _getModelsForBrand(e.value);
        _emitNewState();
      },
      vehicleFuelTypeChanged: (e) {
        _state.vehicleFuelType.value = e.value;
        if (_state.vehicleFuelType.isError) {
          _state.vehicleFuelType.errorMessage = '';
        }
        _emitNewState();
      },
      vehicleModelChanged: (e) {
        _state.vehicleModel.value = e.value;
        if (_state.vehicleModel.isError) {
          _state.vehicleModel.errorMessage = '';
        }
        _emitNewState();
      },
      vehicleTypeChanged: (e) {
        _state.vehicleType.value = e.value;
        if (_state.vehicleType.isError) {
          _state.vehicleType.errorMessage = '';
        }
        _emitNewState();
      },
    );
  }

  void _resolveDependencies() {
    _getVehicleTypesUsecase =
        GetVehicleTypesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleBrandsUseacse =
        GetVehicleBrandsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleModelsUseacse =
        GetVehicleModelsUseacse(getIt.get<DropdownDataRepository>());
    _getVehicleFuelTypesUsecase =
        GetVehicleFuelTypesUsecase(getIt.get<DropdownDataRepository>());
    _leadsRepository = getIt.get<LeadsRepository>();
  }

  void _initialise() async {
    await _getDropdownData();
  }

  Future<void> _getDropdownData() async {
    final vehicleTypesResponse = await _getVehicleTypesUsecase(NoParams());
    final vehicleBrandsResponse = await _getVehicleBrandsUseacse(NoParams());
    final vehicleFuelTypesResponse =
        await _getVehicleFuelTypesUsecase(NoParams());

    if (vehicleTypesResponse.error != null ||
        vehicleBrandsResponse.error != null ||
        vehicleFuelTypesResponse.error != null) {
      Failure error;

      if (error == null && vehicleTypesResponse.error != null) {
        error = vehicleTypesResponse.error;
      }

      if (error == null && vehicleBrandsResponse.error != null) {
        error = vehicleBrandsResponse.error;
      }

      if (error == null && vehicleFuelTypesResponse.error != null) {
        error = vehicleFuelTypesResponse.error;
      }

      error.map(
          serverError: (e) {
            _state = _state.copyWith(
                isSubmitting: false, isError: true, errorMessage: e.massage);
            _emitNewState();
          },
          noInternerError: (_) {
            _state = _state.copyWith(
                isSubmitting: false, noInternetConnection: true);
            _emitNewState();
          },
          genericError: (_) {
            _state = _state.copyWith(
                isSubmitting: false,
                isError: true,
                errorMessage: StringConstants.generalError);
            _emitNewState();
          },
          noOperationError: (_) {});
      return;
    } else {
      _state.vehicleType.options = vehicleTypesResponse.body;
      _state.vehicleBrand.options = vehicleBrandsResponse.body;
      _state.vehicleFuelType.options = vehicleFuelTypesResponse.body;
    }

    await _populateData();

    _emitSubmittingState(false);
  }

  Future<void> _populateData() async {
    if (_ruteArgs.isEdit) {
      _state.vehicleType.value = _ruteArgs.filter.vehicleType;
      _state.vehicleBrand.value = _ruteArgs.filter.brand;
      if (_ruteArgs.filter.brand != null) {
        await _getModelsForBrand(_ruteArgs.filter.brand);
      }
      _state.vehicleModel.value = _ruteArgs.filter.carModel;
      _state.vehicleFuelType.value = _ruteArgs.filter.fuelType;
    }
  }

  Future<void> _getModelsForBrand(AddVehicleLookup brand) async {
    _state.vehicleModel.options = null;
    _state.vehicleModel.value = null;
    final _modelsResponse = await _getVehicleModelsUseacse(
        GetVehicleModelsParams(brandId: brand.id));
    if (_modelsResponse.body != null) {
      _state.vehicleModel.options = _modelsResponse.body;
    } else {
      CustomToastUtils.showCustomToast(
          context: _context,
          message: StringConstants.getModelsError,
          customToastType: CustomToastType.Error);
    }
  }

  void _emitSubmittingState(bool isSubmitting) {
    _state = _state.copyWith(
      isSubmitting: isSubmitting,
    );
    _emitNewState();
  }

  void _emitNewState() {
    _inStateController.add(_state);
  }

  void addEvent(AddEditLeadFilterEvent event) {
    _inEventsControler.add(event);
  }

  void setContext(BuildContext buildContext) {
    _context = buildContext;
  }

  Future<void> close() async {
    if (_checkIsDataChanged()) {
      final userResponse =
          await DataChangedPopUpUtil.showDataChangedPopUp(_context);
      switch (userResponse) {
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

  bool _checkIsDataChanged() {
    if (_ruteArgs.isEdit) {
      final isBrand = _ruteArgs.filter.brand != _state.vehicleBrand.value;
      final isModel = _ruteArgs.filter.carModel != _state.vehicleModel.value;
      final isFuel = _ruteArgs.filter.fuelType != _state.vehicleFuelType.value;
      final isType = _ruteArgs.filter.vehicleType != _state.vehicleType.value;
      return isBrand || isModel || isFuel || isType;
    }
    final isBrand = _state.vehicleBrand.value != null &&
        _state.vehicleBrand.value.name.isNotEmpty;
    final isModel = _state.vehicleModel.value != null &&
        _state.vehicleModel.value.name.isNotEmpty;
    final isFuel = _state.vehicleFuelType.value != null &&
        _state.vehicleFuelType.value.name.isNotEmpty;
    final isType = _state.vehicleType.value != null &&
        _state.vehicleType.value.name.isNotEmpty;
    return isBrand || isModel || isFuel || isType;
  }

  Future<void> _save() async {
    if (!_validateForm()) {
      _emitNewState();
      return;
    }
    _emitSubmittingState(true);
    var response;

    if (_ruteArgs.isEdit) {
      response = await _leadsRepository.updateLeadFilter(_createLeadFilter());
    } else {
      response = await _leadsRepository.createLeadFilter(_createLeadFilter());
    }

    if (response.error != null) {
      String errorMessage = '';

      response.error.map(
          serverError: (e) {
            errorMessage = e.massage;
          },
          noInternerError: (_) {
            errorMessage = StringConstants.noInternet;
          },
          genericError: (_) {
            errorMessage = StringConstants.generalError;
          },
          noOperationError: (_) {});

      _emitSubmittingState(false);

      CustomToastUtils.showCustomToast(
          context: _context,
          message: errorMessage,
          customToastType: CustomToastType.Error);
      return;
    }

    if (response.body != null) {
      _state = _state.copyWith(isSubmitting: false);
      _popAndReturnState(response.body);
    }
  }

  LeadFilter _createLeadFilter() {
    if (_ruteArgs.isEdit) {
      return LeadFilter(
          id: _ruteArgs.filter.id,
          vehicleType: _state.vehicleType.value,
          brand: _state.vehicleBrand.value,
          carModel: _state.vehicleModel.value,
          fuelType: _state.vehicleFuelType.value);
    }
    return LeadFilter(
        vehicleType: _state.vehicleType.value,
        brand: _state.vehicleBrand.value,
        carModel: _state.vehicleModel.value,
        fuelType: _state.vehicleFuelType.value);
  }

  bool _validateForm() {
    bool isTypeValid = _state.vehicleType.validate();
    bool isBrandValid = _state.vehicleBrand.validate();
    bool isModelValid = _state.vehicleModel.validate();
    bool isFuelValid = _state.vehicleFuelType.validate();
    if (isFuelValid || isModelValid || isBrandValid || isTypeValid) {
      _setErrorMessage('');
      return true;
    }
    _setErrorMessage(StringConstants.atLeastOneField);
    return false;
  }

  void _setErrorMessage(String msg) {
    _state.vehicleType.errorMessage = msg;
    _state.vehicleBrand.errorMessage = msg;
    _state.vehicleModel.errorMessage = msg;
    _state.vehicleFuelType.errorMessage = msg;
  }

  void _popAndReturnState(LeadFilter response) {
    Navigator.of(_context).pop(response);
  }

  dispose() {
    _eventsController.close();
    _stateController.close();
  }
}
