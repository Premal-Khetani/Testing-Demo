import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:flutter/foundation.dart';

class GetVehicleDetailsUsecase extends BaseUsecase<AddVehicleResponse,GetVehicleDetailsParams> {
  InventoryRepository _repository;

  GetVehicleDetailsUsecase(InventoryRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> call(GetVehicleDetailsParams params) async {
    return await _repository.getVehicleDetails(vehicleId: params.vehicleId);
  }
}

class GetVehicleDetailsParams{
  final int vehicleId;

  GetVehicleDetailsParams({@required this.vehicleId});
}