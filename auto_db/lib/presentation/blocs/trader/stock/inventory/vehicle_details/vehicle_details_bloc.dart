import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/inventory/reserve_ad/reserve_vehicle_post_body.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:auto_db/domain/usecases/trader/stock/get_vehicle_details_usecase.dart';
import 'package:auto_db/domain/usecases/trader/stock/reserve_vehicle_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/trader/trader_stock_route_generator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:auto_db/presentation/widgets/trader/stock/reserve_ad_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details_event.dart';
part 'vehicle_details_state.dart';

part 'vehicle_details_bloc.freezed.dart';

class VehicleDetailsBloc{
  BuildContext _context;
  int _vehicleId;

  VehicleDetailsState _state;
  AddVehicleResponse _vehicleData;
  bool _isChanged = false;

  GetVehicleDetailsUsecase _getVehicleDetailsUsecase;
  ReserveVehicleUsecase _reserveVehicleUsecase;

  VehicleDetailsBloc({
    @required BuildContext context,
    @required int vehicleId
  }){
    this._context = context;
    this._vehicleId = vehicleId;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }
  
  VehicleDetailsState get inventoryInitialState => _state;

  var _eventsController = StreamController<VehicleDetailsEvent>();
  StreamSink<VehicleDetailsEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<VehicleDetailsState>();
  StreamSink<VehicleDetailsState> get _inStateController => _stateController.sink;
  Stream<VehicleDetailsState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = VehicleDetailsState.initial();
    await _getVehicleDetails();
  }

  void _mapEventToState(VehicleDetailsEvent event){
    event.map(
      closeTapped: (_){
        Navigator.of(_context).pop(VehicleDetailsReturnValue(isChanged: _isChanged));
      }, 
      onRetryTapped: (_) async {
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _getVehicleDetails();
      }, 
      onViewTapped: (_) async {
        final args = VehicleDetailsViewRuteArgs(addVehicleResponse: _vehicleData);
        await Navigator.of(_context).pushNamed('/vehicle_details/view', arguments: args);
      }, 
      onEditTapped: (_) async {
        final args = EditVehicleRouteArgs(addVehicleResponse: _vehicleData);
        await Navigator.of(_context).pushNamed('/vehicle_details/edit_vehicle', arguments: args);
        _isChanged = true;
        await _getVehicleDetails();
      }, 
      onReserveTapped: (_){
        _reserveAdTapped();
      }, 
      onDeleteTapped: (_) async {
        final args = RemoveVehicleRuteArgs(addVehicleResponse: _vehicleData);
        final isRemoved = await Navigator.of(_context).pushNamed('/vehicle_details/remove_vehicle', arguments: args);
        if(isRemoved != null && isRemoved){
          Navigator.of(_context).pop(VehicleDetailsReturnValue(isDeleted: true));
        }
      }, 
      onPdfTapped: (_){
        
      }
    );
  }

  void _reserveAdTapped() async {
    showDialog(
      context: _context,
      builder: (context){
        return ReserveAdPopUp(
          message: _state.isReserved ? StringConstants.unreserveAdMessage : StringConstants.reserveAdMessage,
          onYesTapped: () async {
            Navigator.of(context).pop();
            await _reserveAd();
          },
          onCancelTapped: (){
            Navigator.of(context).pop();
          },
        );
      }
    );
  }

  Future<void> _reserveAd() async {
    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();

    final response = await _reserveVehicleUsecase(ReserveVehicleParams(
      vehicleId: _vehicleId,
      reserveVehiclePostBody: ReserveVehiclePostBody(reserved: !_state.isReserved)
    ));

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
      if(response.body){
        _isChanged = true;

        if(_vehicleData != null){
          _vehicleData = _vehicleData.copyWith(
            reserved: !_state.isReserved
          );
        }
        
        final message = _state.isReserved ? StringConstants.reservationRemoveSuccess : StringConstants.reservationSuccess;
      
        _state = _state.copyWith(
          isSubmitting: false,
          isReserved: !_state.isReserved
        );
        _emitNewState();

        CustomToastUtils.showCustomToast(
          context: _context, 
          message: message, 
          customToastType: CustomToastType.Sucessfull
        );

      } else {
        _state = _state.copyWith(
          isSubmitting: false
        );
        _emitNewState();

        CustomToastUtils.showCustomToast(
          context:_context, 
          message: StringConstants.reserveVehicleError, 
          customToastType: CustomToastType.Error
        );
      }
    }
  }

  Future<void> _getVehicleDetails() async {
    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();
    
    final vehicleDetailsResponse = await _getVehicleDetailsUsecase(GetVehicleDetailsParams(vehicleId: _vehicleId));
    if(vehicleDetailsResponse.error != null){
      vehicleDetailsResponse.error.map(
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
    }

    if(vehicleDetailsResponse.body != null){
      _vehicleData = vehicleDetailsResponse.body;
    }

    _populateData();

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _populateData(){
    if(_vehicleData != null){
      if(_vehicleData.title != null){
        _state = _state.copyWith(
          title: _vehicleData.title
        );
      }

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
    }
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getVehicleDetailsUsecase = GetVehicleDetailsUsecase(getIt.get<InventoryRepository>());
    _reserveVehicleUsecase = ReserveVehicleUsecase(getIt.get<InventoryRepository>());
  }

  void addEvent(VehicleDetailsEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}

class VehicleDetailsReturnValue {
  final bool isDeleted;
  final bool isChanged;

  VehicleDetailsReturnValue({
    this.isDeleted = false,
    this.isChanged = false
  });
}