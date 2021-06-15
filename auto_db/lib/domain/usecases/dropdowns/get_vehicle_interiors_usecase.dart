import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/dropdowns/string_lookup.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';

class GetVehicleInterirorsUsecase extends BaseUsecase<List<StringLookup>,NoParams> {
  DropdownDataRepository _repository;

  GetVehicleInterirorsUsecase(DropdownDataRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<StringLookup>>> call(NoParams params) async {
    return await _repository.getVehicleInteriors();
  }
}