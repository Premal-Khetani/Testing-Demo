import 'dart:async';

import 'package:auto_db/core/isolates/isolate_holder.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/vehicle_photos_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/trader/trader_stock_route_generator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/license_plate/license_plate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_event.dart';
part 'add_vehicle_state.dart';

part 'add_vehicle_bloc.freezed.dart';

class AddVehicleBloc {
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;

  AddVehicleState _state;
  AddPhotosIsolateHolder _holder;

  AddVehicleBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }){
    this._context = context;
    this._addVehicleResponse = addVehicleResponse;
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  AddVehicleState get addVehicleInitialState => _state;

  var _eventsController = StreamController<AddVehicleEvent>();
  StreamSink<AddVehicleEvent> get _inAddVehicleBlocEventsControler => _eventsController.sink;

  var _stateController = StreamController<AddVehicleState>();
  StreamSink<AddVehicleState> get _inStateController => _stateController.sink;
  Stream<AddVehicleState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = AddVehicleState.initial();
    if(_addVehicleResponse == null){
      _addVehicleResponse = AddVehicleResponse(
        isLicensePlateSaved: false,
        isSpecificationsSaved: false,
        isDescriptionSaved: false,
        isPhotosSaved: false,
        isAccessoriesSaved: false,
        isPriceSaved: false
      );
    } else {
      _state = _state.copyWith(
        isLicensePlateSaved: _addVehicleResponse.isLicensePlateSaved,
        isLicensePlateAdded: _isLicensePlateAdded(),
        isSpecificationsSaved: _addVehicleResponse.isSpecificationsSaved,
        isDescriptionSaved: _addVehicleResponse.isDescriptionSaved,
        isPhotoSaved: _addVehicleResponse.isPhotosSaved,
        isAcessoriesSaved: _addVehicleResponse.isAccessoriesSaved,
        isPriceSaved: _addVehicleResponse.isPriceSaved,
      );
    }

    checkForHolders();

    _state = _state.copyWith(
      isSubmitting: false,
    );
    _emitNewState();
  }

  void _mapEventToState(AddVehicleEvent event){
    event.map(
      closeTapped: (_) { 
        Navigator.of(_context).pop(_addVehicleResponse);
      },
      onLicensePlateTapped: (_) async {
        detachHolders();
        final args = AddVehicleLicensePlateRuteArgs(addVehicleResponse: _addVehicleResponse);
        final response = await Navigator.of(_context).pushNamed('/add_vehicle/license_plate', arguments: args);
         if(response != null){
          LicensePlateReturnValue licensePlateReturnValue = response;

          _addVehicleResponse = licensePlateReturnValue.addVehicleResponse;
          _state = _state.copyWith(
            isLicensePlateSaved: _addVehicleResponse.isLicensePlateSaved,
            isLicensePlateAdded: _isLicensePlateAdded()
          );
          _emitNewState();

          if(licensePlateReturnValue.isRDW){
            _onSpecidiccationTapped(licensePlateReturnValue.rdwResponse);
          }
        }
        checkForHolders();          
      }, 
      onSpecificationsTapped: (_) {
        _onSpecidiccationTapped(null);
      }, 
      onDescriptionTapped: (_) async {
        detachHolders();
        final args = AddVehicleDescriptionRuteArgs(addVehicleResponse: _addVehicleResponse);
        final response = await Navigator.of(_context).pushNamed('/add_vehicle/description', arguments: args);
        if(response != null){
          _addVehicleResponse = response;
          _state = _state.copyWith(
            isDescriptionSaved: _addVehicleResponse.isDescriptionSaved,
          );
          _emitNewState();
        }
        checkForHolders();
      }, 
      onPhotosTapped: (_) async {
        detachHolders();
        final args = AddVehiclePhotosRuteArgs(addVehicleResponse: _addVehicleResponse);
        final response = await Navigator.of(_context).pushNamed("/add_vehicle/photos", arguments: args);
        if(response != null){
          _addVehicleResponse = response;
          _state = _state.copyWith(
            isPhotoSaved: _addVehicleResponse.isPhotosSaved,
          );
          _emitNewState();
        }
        checkForHolders();
      }, 
      onAccessoriesTapped: (_) async {
        detachHolders();
        final args = AddVehicleAccessoriesRuteArgs(addVehicleResponse: _addVehicleResponse);
        final response = await Navigator.of(_context).pushNamed('/add_vehicle/accessories', arguments: args);
        if(response != null){
          _addVehicleResponse = response;
          _state = _state.copyWith(
            isAcessoriesSaved: _addVehicleResponse.isAccessoriesSaved,
          );
          _emitNewState();
        }
        checkForHolders();
      }, 
      onPriceTapped: (_) async {
        detachHolders();
        final args = AddVehiclePriceRuteArgs(addVehicleResponse: _addVehicleResponse);
        final response = await Navigator.of(_context).pushNamed("/add_vehicle/price", arguments: args);
        if(response != null){
          _addVehicleResponse = response;
          _state = _state.copyWith(
            isPriceSaved: _addVehicleResponse.isPriceSaved,
          );
          _emitNewState();
        }
        checkForHolders();
      }
    );
  }

  void _onSpecidiccationTapped(RDWResponse rdw) async {
    detachHolders();
    final args = AddVehicleSpecificationsRuteArgs(addVehicleResponse: _addVehicleResponse, rdw: rdw);
    final response = await Navigator.of(_context).pushNamed('/add_vehicle/specifications', arguments: args);
    if(response != null){
      _addVehicleResponse = response;
      _state = _state.copyWith(
        isSpecificationsSaved: _addVehicleResponse.isSpecificationsSaved,
      );
      _emitNewState();
    }
    checkForHolders();
  }

  bool _isLicensePlateAdded(){
    if(!_addVehicleResponse.isLicensePlateSaved){
      return true;
    }

    return _addVehicleResponse.licensePlate != null;
  }

  void checkForHolders(){
    print(_addVehicleResponse.id.toString());
    print('photosHolder: ' +photosHolder.length.toString());
    if(_addVehicleResponse.id != null){
      if (photosHolder.containsKey(_addVehicleResponse.id)) {
        _holder = photosHolder[_addVehicleResponse.id];
        if(_holder.totalCount != null){
          if(_holder.completed != _holder.totalCount){
            _holder.onGlobalProgress = _onGlobalProgress;
            int completed = _holder.completed;
            int total = _holder.totalCount;
            _state = _state.copyWith(
              photosDetails: '$completed/$total' 
            );
            _emitNewState();
          } else {
            _state = _state.copyWith(
              photosDetails: '',
              isPhotoSaved: true 
            );
            _emitNewState();
          }
        }
        print('check for holders ' + _holder.onGlobalProgress.toString());
      }
    }
  }

  void _onGlobalProgress({VehiclePhotosParams params, int complete, int total}) {
    print("Vehicle details bloc_onProgress: ${complete / total}");
    if(complete == total){
      _state = _state.copyWith(
        photosDetails: '',
        isPhotoSaved: true 
      );
      _emitNewState();
    }

    if(complete != total){
      _state = _state.copyWith(
        photosDetails: '$complete/$total' 
      );
      _emitNewState();
    }

    final images = params.photos.where((e) => e.name != null).map((e) => e.name).toList();
    _addVehicleResponse = _addVehicleResponse.copyWith(
      allImages: images
    );
  }

  void detachHolders(){
    if(_holder != null){
      _holder.onGlobalProgress = null;
      if(_state.photosDetails.isNotEmpty){
        _state = _state.copyWith(
          photosDetails: '',
        );
        _emitNewState();
      }
    }
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void addEvent(AddVehicleEvent event){
    _inAddVehicleBlocEventsControler.add(event);
  }

  dispose(){
    detachHolders();
    _eventsController.close();
    _stateController.close();
  }
}