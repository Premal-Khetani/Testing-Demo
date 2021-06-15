import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/dropdowns/accessory_lookup.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_accessories_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details_accessories_event.dart';
part 'vehicle_details_accessories_state.dart';

part 'vehicle_details_accessories_bloc.freezed.dart';

class VehicleDetailsAccessoriesBloc{
  BuildContext _context;
  AddVehicleResponse _vehicleData;

  GetAccessoriesUsecase _getAccessoriesUsecase;

  VehicleDetailsAccessoriesState _state;

  VehicleDetailsAccessoriesBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _vehicleData = addVehicleResponse;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  var _eventsController = StreamController<VehicleDetailsAccessoriesEvent>();
  StreamSink<VehicleDetailsAccessoriesEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<VehicleDetailsAccessoriesState>.broadcast();
  StreamSink<VehicleDetailsAccessoriesState> get _inStateController => _stateController.sink;
  Stream<VehicleDetailsAccessoriesState> get outStateController => _stateController.stream;

  VehicleDetailsAccessoriesState get initialState => _state;

  void _initialise() async {
    _state = VehicleDetailsAccessoriesState.initial();
    await _getAccessories();
  }

  void _mapEventToState(VehicleDetailsAccessoriesEvent event){
    event.map(
      onCloseTapped: (_){
        Navigator.of(_context).pop();
      }, 
      onRetryTapped: (_) async { 
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _getAccessories();
      }
    );
  }

  Future<void> _getAccessories() async {
    final accessoriesResponse = await _getAccessoriesUsecase(NoParams());
    if(accessoriesResponse.error != null){
      accessoriesResponse.error.map(
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
        noOperationError: (_) { }
      );

      return;
    }

    if(accessoriesResponse.body != null){
      final accessories = _initializeData(accessoriesResponse.body);
      _state = _state.copyWith(
        isSubmitting: false,
        accessories : _mapAccesories(accessories),
        customAcessories: _initializeCustomAccessories()
      );
      _emitNewState();
    }
  }

  List<AccessoryLookup> _initializeData(List<AccessoryLookup> accessories){
    if(_vehicleData == null){
      return List<AccessoryLookup>(); 
    }

    if(_vehicleData.accessories == null){
      return List<AccessoryLookup>(); 
    }

    List<AccessoryLookup> selectedAccessories = List<AccessoryLookup>();
    _vehicleData.accessories.forEach((e) { 
      final indx = accessories.indexWhere((element) => element.id == e.accessoryId);
      if(indx > -1){
        selectedAccessories.add(accessories[indx]);
      }
    });

    return selectedAccessories;
  }

  List<String> _initializeCustomAccessories(){
    if(_vehicleData == null){
      return List<String>(); 
    }

    if(_vehicleData.customAccesories == null){
      return List<String>(); 
    }

    List<String> accessories = List<String>();
    _vehicleData.customAccesories.forEach((e) { 
      accessories.add(e.name);
    });

    return accessories;
  }

  List<AccessoryDetailsHelperModel> _mapAccesories(List<AccessoryLookup> accessories){
    List<AccessoryDetailsHelperModel> map = List<AccessoryDetailsHelperModel>();

    accessories.forEach((accessory) { 
      final indx = map.indexWhere((e) => e.groupName == accessory.groupName);
      if(indx == -1){
        map.add(AccessoryDetailsHelperModel(groupName: accessory.groupName, accessories: [accessory]));
      } else {
        map[indx].accessories.add(accessory);
      }
    });
    
    return map;
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getAccessoriesUsecase = GetAccessoriesUsecase(getIt.get<DropdownDataRepository>());
  }

  void addEvent(VehicleDetailsAccessoriesEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}

class AccessoryDetailsHelperModel{
  final String groupName;
  List<AccessoryLookup> accessories;

  AccessoryDetailsHelperModel({@required this.groupName, this.accessories});
}