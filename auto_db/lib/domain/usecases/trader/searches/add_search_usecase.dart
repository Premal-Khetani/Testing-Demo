import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/searches/add_new_search/add_new_search_request.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';
import 'package:flutter/foundation.dart';

class AddSearchUsecase extends BaseUsecase<bool,AddSearchParams> {
  SearchesRepository _repository;

  AddSearchUsecase(SearchesRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<bool>> call(AddSearchParams params) async {
    return await _repository.addSearch(addNewSearchRequest: params.addNewSearchRequest);
  }
}

class AddSearchParams{
  final AddNewSearchRequest addNewSearchRequest;

  AddSearchParams({@required this.addNewSearchRequest});
}