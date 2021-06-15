import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/dropdowns/country_lookup.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';

class GetCountryLookupsUsecase extends BaseUsecase<List<CountryLookup>,NoParams> {
  DropdownDataRepository _repository;

  GetCountryLookupsUsecase(DropdownDataRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<CountryLookup>>> call(NoParams params) async {
    return await _repository.getCountrysLookups();
  }
}