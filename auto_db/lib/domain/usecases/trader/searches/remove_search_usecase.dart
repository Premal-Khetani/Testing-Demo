import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/searches/remove_search/remove_search_response.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';
import 'package:flutter/foundation.dart';

class RemoveSearchUsecase extends BaseUsecase<RemoveSearchResponse,RemoveSearchParams> {
  SearchesRepository _repository;

  RemoveSearchUsecase(SearchesRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<RemoveSearchResponse>> call(RemoveSearchParams params) async {
    return await _repository.removeSearch(searchId: params.searchId);
  }
}

class RemoveSearchParams{
  final int searchId;

  RemoveSearchParams({@required this.searchId});
}