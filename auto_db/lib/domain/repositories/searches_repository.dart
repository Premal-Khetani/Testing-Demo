import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/searches/add_new_search/add_new_search_request.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/domain/entities/searches/remove_search/remove_search_response.dart';
import 'package:flutter/foundation.dart';

abstract class SearchesRepository {
  Future<ResponseWrapper<bool>> addSearch({@required AddNewSearchRequest addNewSearchRequest});
  Future<ResponseWrapper<List<Search>>> getAllSearches();
  Future<ResponseWrapper<RemoveSearchResponse>> removeSearch({@required int searchId});
}