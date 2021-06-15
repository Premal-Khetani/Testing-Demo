import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class GetVehicleIdUsecase extends BaseUsecase<AddVehicleInitialResponse,GetVehicleIdParams> {
  AddVehicleRepository _repository;

  GetVehicleIdUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleInitialResponse>> call(GetVehicleIdParams params) async {
    return await _repository.getVehicleId(addVehicleInitialPostBody: params.addVehicleInitialPostBody);
  }
}

class GetVehicleIdParams{
  final AddVehicleInitialPostBody addVehicleInitialPostBody;

  GetVehicleIdParams({@required this.addVehicleInitialPostBody});
}