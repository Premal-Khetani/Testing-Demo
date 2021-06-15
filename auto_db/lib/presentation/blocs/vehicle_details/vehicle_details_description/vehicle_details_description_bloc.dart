import 'dart:async';

import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details_description_event.dart';
part 'vehicle_details_description_state.dart';

part 'vehicle_details_description_bloc.freezed.dart';

class VehicleDetailsDescriptionBloc{
  BuildContext _context;
  AddVehicleResponse _vehicleData;

  VehicleDetailsDescriptionState _state;

  VehicleDetailsDescriptionBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _vehicleData = addVehicleResponse;
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  var _eventsController = StreamController<VehicleDetailsDescriptionEvent>();
  StreamSink<VehicleDetailsDescriptionEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<VehicleDetailsDescriptionState>.broadcast();
  StreamSink<VehicleDetailsDescriptionState> get _inStateController => _stateController.sink;
  Stream<VehicleDetailsDescriptionState> get outStateController => _stateController.stream;

  VehicleDetailsDescriptionState get initialState => _state;

  void _initialise() async {
    _state = VehicleDetailsDescriptionState.initial();

    if(_vehicleData.title != null){
      _state = _state.copyWith(
        title: _vehicleData.title
      );
    }

    if(_vehicleData.description != null){
      _state = _state.copyWith(
        description: _vehicleData.description
      );
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(VehicleDetailsDescriptionEvent event){
    event.map(
      onCloseTapped: (_){
        Navigator.of(_context).pop();
      }
    );
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void addEvent(VehicleDetailsDescriptionEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}

