import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_description/add_vehicle_description_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class AddVehicleSaveDescriptionUsecase extends BaseUsecase<AddVehicleResponse,AddVehicleSaveDescriptionParams> {
  AddVehicleRepository _repository;

  AddVehicleSaveDescriptionUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> call(AddVehicleSaveDescriptionParams params) async {
    return await _repository.saveDescription(addVehicleDescriptionPostBody: params.addVehicleDescriptionPostBody);
  }
}

class AddVehicleSaveDescriptionParams{
  final AddVehicleDescriptionPostBody addVehicleDescriptionPostBody;

  AddVehicleSaveDescriptionParams({@required this.addVehicleDescriptionPostBody});
}