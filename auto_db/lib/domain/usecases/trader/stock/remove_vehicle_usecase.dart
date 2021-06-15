import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/inventory/remove_vehicle_response.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:flutter/foundation.dart';

class RemoveVehicleUsecase extends BaseUsecase<RemoveVehicleResponse, RemoveVehicleParams> {
  InventoryRepository _repository;

  RemoveVehicleUsecase(InventoryRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<RemoveVehicleResponse>> call(RemoveVehicleParams params) async {
    return await _repository.removeVehicle(vehicleId: params.vehicleId);
  }
}

class RemoveVehicleParams{
  final int vehicleId;

  RemoveVehicleParams({@required this.vehicleId});
}