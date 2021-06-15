import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:flutter/foundation.dart';

class GetVehicleModelsUseacse extends BaseUsecase<List<AddVehicleLookup>,GetVehicleModelsParams> {
  DropdownDataRepository _repository;

  GetVehicleModelsUseacse(DropdownDataRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> call(GetVehicleModelsParams params) async {
    return await _repository.getVehicleModels(brandId: params.brandId);
  }
}

class GetVehicleModelsParams{
  final int brandId;

  GetVehicleModelsParams({@required this.brandId});
}