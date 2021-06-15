import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';

class GetAllSearchesUsecase extends BaseUsecase<List<Search>,NoParams> {
  SearchesRepository _repository;

  GetAllSearchesUsecase(SearchesRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<Search>>> call(NoParams params) async {
    return await _repository.getAllSearches();
  }
}