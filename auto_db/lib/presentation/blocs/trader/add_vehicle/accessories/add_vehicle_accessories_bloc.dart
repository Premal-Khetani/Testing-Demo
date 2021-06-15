import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_accessories/add_vehicle_accessories_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/dropdowns/accessory_lookup.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_accessories_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/add_vehicle_save_accessories_usecase.dart';
import 'package:auto_db/domain/usecases/trader/add_vehicle/get_vehicle_id_usecase.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/accessory.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/custom_accessory.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/data_changed_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_accessories_event.dart';
part 'add_vehicle_accessories_state.dart';

part 'add_vehicle_accessories_bloc.freezed.dart';

class AddVehicleAccessoriesBloc{
  BuildContext _context;
  AddVehicleResponse _addVehicleResponse;

  AddVehicleAccessoriesState _state;

  GetAccessoriesUsecase _getAccessoriesUsecase;
  GetVehicleIdUsecase _getVehicleIdUsecase;
  AddVehicleSaveAccessoriesUsecase _addVehicleSaveAccessoriesUsecase;

  AddVehicleAccessoriesBloc({
    @required BuildContext context,
    @required AddVehicleResponse addVehicleResponse
  }) {
    _context = context;
    _addVehicleResponse = addVehicleResponse;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  AddVehicleAccessoriesState get accessoriesFormInitialState => _state;

  var _eventsController = StreamController<AddVehicleAccessoriesEvent>();
  StreamSink<AddVehicleAccessoriesEvent> get _inEventsControler => _eventsController.sink;

  var _accessoriesFormStateController = StreamController<AddVehicleAccessoriesState>.broadcast();
  StreamSink<AddVehicleAccessoriesState> get _inAccessoriesFormStateController => _accessoriesFormStateController.sink;
  Stream<AddVehicleAccessoriesState> get outAccessoriesFormStateController => _accessoriesFormStateController.stream;

  void _initialise() async {
    _state = AddVehicleAccessoriesState.initial();
    await _getAccessories();
  }

  void _mapEventToState(AddVehicleAccessoriesEvent event){
    event.map(
      closeTapped: (_) async {
        await close();
      }, 
      saveTapped: (_) async {
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
        await _getAccessories();
      },
      accessoryValueChanged: (e) { 
        final groupIndx = _state.accessories.indexWhere((group) => group.groupName == e.accessory.groupName);
        if(groupIndx > -1){
          final accessoryIndx = _state.accessories[groupIndx].accessories.indexOf(e.accessory);
          if(accessoryIndx > -1){
            _state.accessories[groupIndx].accessories[accessoryIndx] = _state.accessories[groupIndx].accessories[accessoryIndx].copyWith(
              state: e.value
            );
            _emitNewState();
          }
        }
      },
      accessoryInputChanged: (e) { 
        _state.accessoryInput.value = e.value;
        if(_state.accessoryInput.isError){
          _state.accessoryInput.errorMessage = '';
          _emitNewState();
        }
      },
      addTapped: (_){
        _addCustomAccessory();
      },
      deleteCustomAccessory: (e) { 
        _state.cusstomAccessories.remove(e.customAccessory);
        _emitNewState();
      }, 
      goToTopTapped: (e) { 
        e.scrollController.animateTo(0.0, duration: Duration(milliseconds: 500), curve: Curves.ease);
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
        cusstomAccessories : _initializeCustomAccessories()
      );
      _emitNewState();
    }
  }

  List<AccessoryLookup> _initializeData(List<AccessoryLookup> accessories){
    if(_addVehicleResponse == null){
      return accessories; 
    }

    if(_addVehicleResponse.accessories == null){
      return accessories; 
    }

    _addVehicleResponse.accessories.forEach((e) { 
      final indx = accessories.indexWhere((element) => element.id == e.accessoryId);
      if(indx > -1){
        accessories[indx] = accessories[indx].copyWith(
          state: true
        );
      }
    });
    return accessories;
  }

  List<CustomAccessory> _initializeCustomAccessories(){
    if(_addVehicleResponse == null){
      return List<CustomAccessory>(); 
    }

    if(_addVehicleResponse.customAccesories == null){
      return List<CustomAccessory>(); 
    }

    List<CustomAccessory> accessories = List<CustomAccessory>();
    _addVehicleResponse.customAccesories.forEach((e) {
      accessories.add(CustomAccessory(
        name: e.name
      ));
    });

    return accessories;
  }

  List<AccessoryHelperModel> _mapAccesories(List<AccessoryLookup> accessories){
    List<AccessoryHelperModel> map = List<AccessoryHelperModel>();

    accessories.forEach((accessory) { 
      final indx = map.indexWhere((e) => e.groupName == accessory.groupName);
      if(indx == -1){
        map.add(AccessoryHelperModel(groupName: accessory.groupName, accessories: [accessory]));
      } else {
        map[indx].accessories.add(accessory);
      }
    });
    
    return map;
  }

  void _addCustomAccessory(){
    final isAccessoryInputValid = _state.accessoryInput.validate();
    if(isAccessoryInputValid){
      final isExist = checkIfAccessoryExist();
      print(isExist);
      if(!isExist){
        _state.cusstomAccessories.add(CustomAccessory(
          name : _state.accessoryInput.value,
        ));

        _state.accessoryInput.value = '';
        _emitNewState();
      } else {
        CustomToastUtils.showCustomToast(
          context:_context, 
          message: StringConstants.accessoryAlreadyExistMessage,
          customToastType: CustomToastType.Alert
        );
      }
    } else {
      _emitNewState();
    }
  }

  bool checkIfAccessoryExist(){
    final customAccessoryName = _state.accessoryInput.value.toLowerCase(); 
    bool retValue = false;
    _state.accessories.forEach((accessory) {
      accessory.accessories.forEach((acc) {
        if(acc.name.toLowerCase() == customAccessoryName){
          retValue = true;
          return;
        }
      });
      
      if(retValue == true){
        return;
      }
    });

    return retValue;
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
    return isAccessoriesChanged() || isCustomAccessoriesChanged();
  }

  bool isAccessoriesChanged(){
    final _selectedAccessories = _getSelectedAccessories();

    if(_addVehicleResponse.accessories == null){
      return _selectedAccessories.length > 0;
    }

    if(_addVehicleResponse.accessories.length != _selectedAccessories.length){
      return true;
    }

    for(int i = 0; i < _addVehicleResponse.accessories.length; i++){
      final indx = _addVehicleResponse.accessories.indexWhere((e) => e.accessoryId == _selectedAccessories[i].id);
      if(indx == -1){
        return true;
      }
    }

    return false;
  }

  bool isCustomAccessoriesChanged(){
    if(_addVehicleResponse.customAccesories == null){
      return _state.cusstomAccessories.length > 0;
    }

    if(_addVehicleResponse.customAccesories.length != _state.cusstomAccessories.length){
      return true;
    }

    for(int i = 0; i < _addVehicleResponse.customAccesories.length; i++){
      final indx = _addVehicleResponse.customAccesories.indexWhere((e) => e.name == _state.cusstomAccessories[i].name);
      if(indx == -1){
        return true;
      }
    }

    return false;
  }

  List<AccessoryLookup> _getSelectedAccessories(){
    List<AccessoryLookup> savedAccessories = List<AccessoryLookup>();

    _state.accessories.forEach((group) { 
      group.accessories.forEach((accessorie) { 
        if(accessorie.state == true){
          savedAccessories.add(accessorie);
        }
      });
    });

    return savedAccessories;
  }

  Future<void> _save() async {
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

    final response = await _addVehicleSaveAccessoriesUsecase(AddVehicleSaveAccessoriesParams(addVehicleAccessoriesPostBody: _createSaveRequest()));

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

  AddVehicleAccessoriesPostBody _createSaveRequest(){
    List<int> accessories = List<int>();
    List<String> customAccessories = List<String>();

    for(int i = 0; i < _state.accessories.length; i++){
      _state.accessories[i].accessories.forEach((accessory) {
        if(accessory.state){
          accessories.add(accessory.id);
        }
      });
    }

    _state.cusstomAccessories.forEach((customAccessory) {
      customAccessories.add(customAccessory.name);
    });

    return AddVehicleAccessoriesPostBody(
      id: _addVehicleResponse.id,
      accessories: accessories,
      customAccessories: customAccessories
    );
  }

  void _emitNewState(){
    _inAccessoriesFormStateController.add(_state);
  }

  void _resolveDependencies(){
    _getAccessoriesUsecase = GetAccessoriesUsecase(getIt.get<DropdownDataRepository>());
    _getVehicleIdUsecase = GetVehicleIdUsecase(getIt.get<AddVehicleRepository>());
    _addVehicleSaveAccessoriesUsecase = AddVehicleSaveAccessoriesUsecase(getIt.get<AddVehicleRepository>());
  }

  void _popAndReturnState(AddVehicleResponse response){
    Navigator.of(_context).pop(response);
  }

  void addEvent(AddVehicleAccessoriesEvent event){
    _inEventsControler.add(event);
  }
  
  dispose(){
    _eventsController.close();
    _accessoriesFormStateController.close();
  }
}

class AccessoryHelperModel{
  final String groupName;
  List<AccessoryLookup> accessories;

  AccessoryHelperModel({@required this.groupName, this.accessories});
}