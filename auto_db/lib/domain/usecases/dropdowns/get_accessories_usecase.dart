import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/dropdowns/accessory_lookup.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';

class GetAccessoriesUsecase extends BaseUsecase<List<AccessoryLookup>,NoParams> {
  DropdownDataRepository _repository;

  GetAccessoriesUsecase(DropdownDataRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<AccessoryLookup>>> call(NoParams params) async {
    return await _repository.getAccessories();
  }
}