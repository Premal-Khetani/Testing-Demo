import 'dart:async';

import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details_specifications_event.dart';
part 'vehicle_details_specifications_state.dart';

part 'vehicle_details_specifications_bloc.freezed.dart';

class VehicleDetailsSpecificationsBloc {
  BuildContext _context;
  AddVehicleResponse _vehicleData;

  VehicleDetailsSpecificationsState _state;

  VehicleDetailsSpecificationsBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _vehicleData = addVehicleResponse;
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  var _eventsController = StreamController<VehicleDetailsSpecificationsEvent>();
  StreamSink<VehicleDetailsSpecificationsEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<VehicleDetailsSpecificationsState>.broadcast();
  StreamSink<VehicleDetailsSpecificationsState> get _inStateController => _stateController.sink;
  Stream<VehicleDetailsSpecificationsState> get outStateController => _stateController.stream;

  VehicleDetailsSpecificationsState get initialState => _state;

  void _initialise() async {
    _state = VehicleDetailsSpecificationsState.initial();

    if(_vehicleData.vehicleType != null){
      _state = _state.copyWith(
        vehicleType: _vehicleData.vehicleType.name
      );
    }

    if(_vehicleData.vehicleBrend != null){
      _state = _state.copyWith(
        brand: _vehicleData.vehicleBrend.name
      );
    }

    if(_vehicleData.vehicleModel != null){
      _state = _state.copyWith(
        model: _vehicleData.vehicleModel.name
      );
    }

    if(_vehicleData.year != null){
      _state = _state.copyWith(
        year: _vehicleData.year.toString()
      );
    }

    if(_vehicleData.fuelType != null){
      _state = _state.copyWith(
        fuel: _vehicleData.fuelType.name
      );
    }

    if(_vehicleData.mileage != null){
      _state = _state.copyWith(
        mileage: PriceUtils.formatInt(_vehicleData.mileage)
      );
    }

    if(_vehicleData.mileageUnit != null){
      _state = _state.copyWith(
        mileageUnit: _vehicleData.mileageUnit
      );
    }

    if(_vehicleData.vehicleTransmissionType != null){
      _state = _state.copyWith(
        transmission: _vehicleData.vehicleTransmissionType.name
      );
    }

    if(_vehicleData.vehicleBodyWork != null){
      _state = _state.copyWith(
        body: _vehicleData.vehicleBodyWork.name
      );
    }

    if(_vehicleData.color != null){
      _state = _state.copyWith(
        color: _vehicleData.color.name
      );
    }

    if(_vehicleData.interior != null){
      _state = _state.copyWith(
        interior: _vehicleData.interior
      );
    }

    if(_vehicleData.engineSize != null){
      _state = _state.copyWith(
        engine: PriceUtils.formatInt(_vehicleData.engineSize)
      );
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(VehicleDetailsSpecificationsEvent event){
    event.map(
      onCloseTapped: (_){
        Navigator.of(_context).pop();
      }
    );
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void addEvent(VehicleDetailsSpecificationsEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}