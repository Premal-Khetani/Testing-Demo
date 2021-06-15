import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/app_navigation_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_stock_route_generator.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details_extended_event.dart';
part 'vehicle_details_extended_state.dart';

part 'vehicle_details_extended_bloc.freezed.dart';

class VehicleDetailsExtendedBloc {
  BuildContext _context;
  AddVehicleResponse _vehicleData;

  VehicleDetailsExtendedState _state;

  VehicleDetailsExtendedBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _vehicleData = addVehicleResponse;
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  var _eventsController = StreamController<VehicleDetailsExtendedEvent>();
  StreamSink<VehicleDetailsExtendedEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<VehicleDetailsExtendedState>.broadcast();
  StreamSink<VehicleDetailsExtendedState> get _inStateController => _stateController.sink;
  Stream<VehicleDetailsExtendedState> get outStateController => _stateController.stream;

  VehicleDetailsExtendedState get initialState => _state;

  void _initialise() async {
    _state = VehicleDetailsExtendedState.initial();
    
    if(_vehicleData.title != null){
      _state = _state.copyWith(
        title: _vehicleData.title
      );
    }

    if(_vehicleData.allImages != null && _vehicleData.id != null){
      List<String> images = List<String>();
      int userId = _vehicleData.id;
      _vehicleData.allImages.forEach((image) {
        images.add(StringConstants.imagesBaseUrl + '/$userId/' + image);
      });
      _state = _state.copyWith(
        images: images
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

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _mapEventToState(VehicleDetailsExtendedEvent event){
    event.map(
      onCloseTapped: (_){
        Navigator.of(_context).pop();
      },
      onSpecificationsTapped: (_) async {
        final args = VehicleDetailsViewSpecificationsRuteArgs(addVehicleResponse: _vehicleData);
        await Navigator.of(_context).pushNamed('/vehicle_details/view/specifications', arguments: args);
      },
      onAccessoriesTapped: (_) async {
        final args = VehicleDetailsViewAccessoriesRuteArgs(addVehicleResponse: _vehicleData);
        await Navigator.of(_context).pushNamed('/vehicle_details/view/accessories', arguments: args);
      }, 
      onDescriptionTapped: (_) async {
        final args = VehicleDetailsViewDescriptionRuteArgs(addVehicleResponse: _vehicleData);
        await Navigator.of(_context).pushNamed('/vehicle_details/view/description', arguments: args);
      }, 
      onFullScreenGallery: (e) async {
        final args = FullScreenGalleryRouteArgs(gallery: e.gallery);
        await appBloc.pushRoute('/full_screen_gallery', arguments: args);
      }
    );
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void addEvent(VehicleDetailsExtendedEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}