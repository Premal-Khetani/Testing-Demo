import 'dart:convert';

import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/trader/searches/add_new_search/add_new_search_request_model.dart';
import 'package:auto_db/data/models/trader/searches/get_all_searches/search_model.dart';
import 'package:auto_db/data/models/trader/searches/remove_search/remove_search_response_model.dart';
import 'package:auto_db/domain/entities/searches/add_new_search/add_new_search_request.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/domain/entities/searches/remove_search/remove_search_response.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';

const String _addSearchPath = '/passport/create-search';
const String _getAllSearchesPath = '/passport/list-search';
const String _rempoveSearchPath = '/passport/delete-search';

class SearchesRepositoryImplementation implements SearchesRepository {
  MainDioClient dioClient;

  SearchesRepositoryImplementation(){
    _resolveDependencies();
  }

  void _resolveDependencies(){
    dioClient =  getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<bool>> addSearch({AddNewSearchRequest addNewSearchRequest}) async {
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();
    
    try{
      final _body = AddNewSearchRequestModel.fromDomain(addNewSearchRequest).toJson();
      print('Add search body: ' + _body.toString());
      final _response = await dioClient.post(
        _addSearchPath,
        data: jsonEncode(_body),
        options: Options(
          headers: {'Accept' : 'application/json'},
          responseType: ResponseType.json
        ),
        logTag: 'Add search',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Add search response:' + _response.response.data.toString());
          _responseWrapper.body = true;
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Add search error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<Search>>> getAllSearches()  async {
    ResponseWrapper<List<Search>> _responseWrapper = ResponseWrapper<List<Search>>();

    try{
      final _response = await dioClient.get(
        _getAllSearchesPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get all searches',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get all searches response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((search) => SearchModel.fromJson(search).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get all searches error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<RemoveSearchResponse>> removeSearch({int searchId}) async {
    ResponseWrapper<RemoveSearchResponse> _responseWrapper = ResponseWrapper<RemoveSearchResponse>();

    try{
      final _response = await dioClient.post(
        _rempoveSearchPath + '/$searchId',
        options: Options(
          responseType: ResponseType.json
        ),
        logTag: 'Remove search',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Remove search response:' + _response.response.data.toString());
          _responseWrapper.body = RemoveSearchResponseModel.fromJson(_response.response.data).toDomain();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Remove search error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }
  
}