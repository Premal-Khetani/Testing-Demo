import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';

class GetVehicleTransmissionTypesUseacse extends BaseUsecase<List<AddVehicleLookup>,NoParams> {
  DropdownDataRepository _repository;

  GetVehicleTransmissionTypesUseacse(DropdownDataRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<AddVehicleLookup>>> call(NoParams params) async {
    return await _repository.getVehicleTransmissionTypes();
  }
}