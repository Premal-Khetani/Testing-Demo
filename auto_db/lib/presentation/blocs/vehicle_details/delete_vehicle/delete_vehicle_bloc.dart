import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:auto_db/domain/usecases/trader/stock/remove_vehicle_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_vehicle_event.dart';
part 'delete_vehicle_state.dart';

part 'delete_vehicle_bloc.freezed.dart';

class DeleteVehicleBloc {
  BuildContext _context;
  AddVehicleResponse _vehicleData;

  RemoveVehicleUsecase _removeVehicleUsecase;

  DeleteVehicleState _state;

  DeleteVehicleBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _vehicleData = addVehicleResponse;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  DeleteVehicleState get initialState => _state;

  var _eventsController = StreamController<DeleteVehicleEvent>();
  StreamSink<DeleteVehicleEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<DeleteVehicleState>.broadcast();
  StreamSink<DeleteVehicleState> get _inStateController => _stateController.sink;
  Stream<DeleteVehicleState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = DeleteVehicleState.initial();

    if(_vehicleData.photo != null){
      _state = _state.copyWith(
        image: _vehicleData.photo
      );
    }

    if(_vehicleData.licensePlate != null){
      _state = _state.copyWith(
        licensePlate: _vehicleData.licensePlate
      );
    }

    if(_vehicleData.stockNumber != null){
      _state = _state.copyWith(
        stockNumber: _vehicleData.stockNumber
      );
    }

    if(_vehicleData.priceType != null){
      if(_vehicleData.priceType.name == 'Asking price'){
        if(_vehicleData.price != null){
          _state = _state.copyWith(
            price: PriceUtils.formatPriceFromApi(_vehicleData.price)
          );
        }
      } else {
        _state = _state.copyWith(
          price: _vehicleData.priceType.name
        );
      }
    }

    if(_vehicleData.year != null){
      _state = _state.copyWith(
        year: _vehicleData.year.toString()
      );
    }

    if(_vehicleData.mileage != null){
      String _mileage = PriceUtils.formatInt(_vehicleData.mileage);
      if(_vehicleData.mileageUnit != null){
        _mileage += ' ' +  _vehicleData.mileageUnit;
      }
      _state = _state.copyWith(
        mileage: _mileage
      );
    }

    if(_vehicleData.fuelType != null){
      _state = _state.copyWith(
        fuel: _vehicleData.fuelType.name
      );
    }

    if(_vehicleData.engineSize != null){
      _state = _state.copyWith(
        engine: PriceUtils.formatInt(_vehicleData.engineSize) + ' ' + StringConstants.cc.toLowerCase()
      );
    }

    if(_vehicleData.vehicleTransmissionType != null){
      _state = _state.copyWith(
        transmission: _vehicleData.vehicleTransmissionType.name
      );
    }

    if(_vehicleData.reserved != null){
      _state = _state.copyWith(
        isReserved: _vehicleData.reserved
      );
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }
  
  void _mapEventToState(DeleteVehicleEvent event){
    event.map(
      onCancelTapped: (_){
        _popAndReturnState(null);
      }, 
      onRemoveVehicleTapped: (_) async{
        await _removeVehicle();
      }
    );
  }

  Future<void> _removeVehicle() async {
    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();

    final response = await _removeVehicleUsecase(RemoveVehicleParams(vehicleId: _vehicleData.id));

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
      if(response.body.success){
        _popAndReturnState(true);
      } else {
        _state = _state.copyWith(
          isSubmitting: false
        );
        _emitNewState();

        CustomToastUtils.showCustomToast(
          context:_context, 
          message: StringConstants.removeVehicleError, 
          customToastType: CustomToastType.Error
        );
      }
    }
  }

  void _popAndReturnState(bool isRemoved){
    Navigator.of(_context).pop(isRemoved);
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _removeVehicleUsecase =  RemoveVehicleUsecase(getIt.get<InventoryRepository>());
  }

  void addEvent(DeleteVehicleEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}