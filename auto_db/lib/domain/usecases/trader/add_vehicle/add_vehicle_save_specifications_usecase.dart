import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_specifications/add_vehicle_specifications_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class AddVehicleSaveSpecificationsUsecase extends BaseUsecase<AddVehicleResponse,AddVehicleSaveSpecifiactionsParams> {
  AddVehicleRepository _repository;

  AddVehicleSaveSpecificationsUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> call(AddVehicleSaveSpecifiactionsParams params) async {
    return await _repository.saveSpecifications(specificationsPostBody: params.addVehicleSpecificationsPostBody);
  }
}

class AddVehicleSaveSpecifiactionsParams{
  final AddVehicleSpecificationsPostBody addVehicleSpecificationsPostBody;

  AddVehicleSaveSpecifiactionsParams({@required this.addVehicleSpecificationsPostBody});
}