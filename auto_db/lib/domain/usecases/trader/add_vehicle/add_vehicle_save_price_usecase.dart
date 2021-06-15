import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_price/add_vehicle_price_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class AddVehicleSavePriceUsecase extends BaseUsecase<AddVehicleResponse,AddVehicleSavePriceParams> {
  AddVehicleRepository _repository;

  AddVehicleSavePriceUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<AddVehicleResponse>> call(AddVehicleSavePriceParams params) async {
    return await _repository.savePrice(addVehiclePricePostBody: params.addVehiclePricePostBody);
  }
}

class AddVehicleSavePriceParams{
  final AddVehiclePricePostBody addVehiclePricePostBody;

  AddVehicleSavePriceParams({@required this.addVehiclePricePostBody});
}