import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_license_plate/add_vehicle_license_plate_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class AddVehicleSaveLicensePlateUsecase extends BaseUsecase<AddVehicleResponse,AddVehicleSaveLicensePlateParams> {
  AddVehicleRepository _repository;

  AddVehicleSaveLicensePlateUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> call(AddVehicleSaveLicensePlateParams params) async {
    return await _repository.saveLicensePlate(addVehicleLicensePlatePostBody: params.addVehicleLicensePlatePostBody);
  }
}

class AddVehicleSaveLicensePlateParams{
  final AddVehicleLicensePlatePostBody addVehicleLicensePlatePostBody;

  AddVehicleSaveLicensePlateParams({@required this.addVehicleLicensePlatePostBody});
}