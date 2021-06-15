import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_ad_event.dart';
part 'view_ad_state.dart';

part 'view_ad_bloc.freezed.dart';

class ViewAdBloc {
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;
  AddVehicleLookup _priceType;
  String _price;

  ViewAdState _state;

  ViewAdBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse,
    @required AddVehicleLookup priceType,
    @required String price
  }) {
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    _priceType = priceType;
    _price = price;
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  ViewAdState get viewAdInitialState => _state;

  var _eventsController = StreamController<ViewAdEvent>();
  StreamSink<ViewAdEvent> get _inEventsControler => _eventsController.sink;

  var _viewAdStateController = StreamController<ViewAdState>.broadcast();
  StreamSink<ViewAdState> get _inViewAdStateController => _viewAdStateController.sink;
  Stream<ViewAdState> get outViewAdStateController => _viewAdStateController.stream;

  void _initialise() async {
    _state = ViewAdState.initial();
    
    if(_addVehicleResponse.title != null){
      _state = _state.copyWith(
        title: _addVehicleResponse.title
      );
    }

    if(_addVehicleResponse.photo != null){
      _state = _state.copyWith(
        image: _addVehicleResponse.photo
      );
    }

    if(_addVehicleResponse.licensePlate != null){
      _state = _state.copyWith(
        licensePlate: _addVehicleResponse.licensePlate
      );
    }

    if(_addVehicleResponse.stockNumber != null){
      _state = _state.copyWith(
        stockNumber: _addVehicleResponse.stockNumber
      );
    }

    if(_priceType != null){
      if(_priceType.name == 'Asking price'){
        if(_price != null){
          _state = _state.copyWith(
            price: _price
          );
        }
      } else {
        _state = _state.copyWith(
          price: _priceType.name
        );
      }
    }

    if(_addVehicleResponse.year != null){
      _state = _state.copyWith(
        year: _addVehicleResponse.year.toString()
      );
    }

    if(_addVehicleResponse.mileage != null){
      String _mileage = PriceUtils.formatInt(_addVehicleResponse.mileage);
      if(_addVehicleResponse.mileageUnit != null){
        _mileage += ' ' +  _addVehicleResponse.mileageUnit;
      }
      _state = _state.copyWith(
        mileage: _mileage
      );
    }

    if(_addVehicleResponse.fuelType != null){
      _state = _state.copyWith(
        fuel: _addVehicleResponse.fuelType.name
      );
    }

    if(_addVehicleResponse.engineSize != null){
      _state = _state.copyWith(
        engine: PriceUtils.formatInt(_addVehicleResponse.engineSize) + ' ' + StringConstants.cc.toLowerCase()
      );
    }

    if(_addVehicleResponse.vehicleTransmissionType != null){
      _state = _state.copyWith(
        transmission: _addVehicleResponse.vehicleTransmissionType.name
      );
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(ViewAdEvent event){
    event.map(
      close: (_) {
        popPage();
      }, 
      onOKTapped: (_) {
        popPage();
      }
    );
  }

  void popPage(){
    Navigator.of(_context).pop();
  }

  void _emitNewState(){
    _inViewAdStateController.add(_state);
  }

  void addEvent(ViewAdEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _viewAdStateController.close();
  }
}