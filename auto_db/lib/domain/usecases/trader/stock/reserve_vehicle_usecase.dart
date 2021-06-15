import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/inventory/reserve_ad/reserve_vehicle_post_body.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:flutter/foundation.dart';

class ReserveVehicleUsecase extends BaseUsecase<bool, ReserveVehicleParams> {
  InventoryRepository _repository;

  ReserveVehicleUsecase(InventoryRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<bool>> call(ReserveVehicleParams params) async {
    return await _repository.reserveVehicle(vehicleId: params.vehicleId, reserveVehiclePostBody: params.reserveVehiclePostBody);
  }
}

class ReserveVehicleParams{
  final int vehicleId;
  final ReserveVehiclePostBody reserveVehiclePostBody;

  ReserveVehicleParams({
    @required this.vehicleId, 
    @required this.reserveVehiclePostBody
  });
}