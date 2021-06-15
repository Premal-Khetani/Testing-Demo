import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_accessories/add_vehicle_accessories_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class AddVehicleSaveAccessoriesUsecase extends BaseUsecase<AddVehicleResponse,AddVehicleSaveAccessoriesParams> {
  AddVehicleRepository _repository;

  AddVehicleSaveAccessoriesUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> call(AddVehicleSaveAccessoriesParams params) async {
    return await _repository.saveAccessories(addVehicleInitialPostBody: params.addVehicleAccessoriesPostBody);
  }
}

class AddVehicleSaveAccessoriesParams{
  final AddVehicleAccessoriesPostBody addVehicleAccessoriesPostBody;

  AddVehicleSaveAccessoriesParams({@required this.addVehicleAccessoriesPostBody});
}