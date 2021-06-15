import 'dart:convert';

import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/lead_filter_model.dart';
import 'package:auto_db/data/models/trader/leads/contact_lead_response_model.dart';
import 'package:auto_db/data/models/trader/leads/lead_model.dart';
import 'package:auto_db/domain/entities/leads/contact_lead_response.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:auto_db/domain/entities/mail/mail_entity.dart';
import 'package:auto_db/domain/lead_filter.dart';
import 'package:auto_db/domain/repositories/leads_repository.dart';
import 'package:dio/dio.dart';

import '../../main.dart';

const String _getLeadFiltersPath = '/passport/trader/filters';
const String _createLeadFilterPath = '/passport/trader/filters/create';
const String _deleteLeadFilterPath = '/passport/trader/filters/delete';
const String _updateLeadFilterPath = '/passport/trader/filters/update';
const String _getAllLeadsPath = '/passport/trader/leads';
const String _sendLeadContactEmail = '/passport/trader/leads/contact';

class LeadsRepositoryImplementation implements LeadsRepository {
  MainDioClient dioClient;

  LeadsRepositoryImplementation() {
    _resolveDependencies();
  }

  void _resolveDependencies() {
    dioClient = getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<List<LeadFilter>>> getLeadFilters() async {
    ResponseWrapper<List<LeadFilter>> _responseWrapper =
        ResponseWrapper<List<LeadFilter>>();

    try {
      final _response = await dioClient.get(_getLeadFiltersPath,
          options: Options(responseType: ResponseType.plain),
          haveAutorization: true,
          logTag: 'Get trader lead filters');

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Get trader lead filters response:' +
              _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i
              .map((filter) => LeadFilterModel.fromJson(filter).toDomain())
              .toList();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Get trader lead filters error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<LeadFilter>> createLeadFilter(
      LeadFilter leadFilter) async {
    ResponseWrapper<LeadFilter> _responseWrapper =
        ResponseWrapper<LeadFilter>();
    final String logTag = 'Create lead filter';
    try {
      final Map<String, dynamic> data = {};
      if (leadFilter.brand != null) {
        data['brand'] = leadFilter.brand.id;
      }
      if (leadFilter.vehicleType != null) {
        data['vehicle'] = leadFilter.vehicleType.id;
      }
      if (leadFilter.carModel != null) {
        data['model'] = leadFilter.carModel.id;
      }
      if (leadFilter.fuelType != null) {
        data['fuel'] = leadFilter.fuelType.id;
      }
      final _response = await dioClient.post(_createLeadFilterPath,
          data: data,
          options: Options(responseType: ResponseType.json),
          haveAutorization: true,
          logTag: logTag);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('$logTag response:' + _response.response.data.toString());
          _responseWrapper.body =
              LeadFilterModel.fromJson(_response.response.data).toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('$logTag error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<bool>> deleteLeadFilter(int filterId) async {
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();
    final String logTag = 'Delete lead filter';
    try {
      final Map<String, dynamic> data = {'filterId': filterId};

      final _response = await dioClient.post(_deleteLeadFilterPath,
          data: data,
          options: Options(responseType: ResponseType.json),
          haveAutorization: true,
          logTag: logTag);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('$logTag response:' + _response.response.data.toString());
          _responseWrapper.body = true;
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('$logTag error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<LeadFilter>> updateLeadFilter(
      LeadFilter leadFilter) async {
    ResponseWrapper<LeadFilter> _responseWrapper =
        ResponseWrapper<LeadFilter>();
    final String logTag = 'Update lead filter';
    try {
      final Map<String, dynamic> data = {'filterId': leadFilter.id};
      if (leadFilter.brand != null) {
        data['brand'] = leadFilter.brand.id;
      }
      if (leadFilter.vehicleType != null) {
        data['vehicle'] = leadFilter.vehicleType.id;
      }
      if (leadFilter.carModel != null) {
        data['model'] = leadFilter.carModel.id;
      }
      if (leadFilter.fuelType != null) {
        data['fuel'] = leadFilter.fuelType.id;
      }
      final _response = await dioClient.post(_updateLeadFilterPath,
          data: data,
          options: Options(responseType: ResponseType.json),
          haveAutorization: true,
          logTag: logTag);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('$logTag response:' + _response.response.data.toString());
          _responseWrapper.body =
              LeadFilterModel.fromJson(_response.response.data).toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('$logTag error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<List<Lead>>> getAllLeads() async {
    ResponseWrapper<List<Lead>> _responseWrapper = ResponseWrapper<List<Lead>>();

    try{
      final _response = await dioClient.get(
        _getAllLeadsPath,
        options: Options(
          responseType: ResponseType.plain
        ),
        logTag: 'Get all leads',
        haveAutorization: true
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get all leads response:' + _response.response.data.toString());
          Iterable i = json.decode(_response.response.data.toString());
          _responseWrapper.body = i.map((search) => LeadModel.fromJson(search).toDomain()).toList();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get all leads error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  Future<ResponseWrapper<ContactLeadResponse>> sendLeadContactEmail(
      MailEntity entity, int traderSearchId) async {
    ResponseWrapper<ContactLeadResponse> _responseWrapper = ResponseWrapper<ContactLeadResponse>();
    final String logTag = 'Send Lead Contact Email';
    try {
      final Map<String, dynamic> data = {
        'subject': entity.subject,
        'message': entity.question,
        'name': entity.name,
        'email': entity.email,
        'traderSearchId': traderSearchId,
      };
      final _response = await dioClient.post(_sendLeadContactEmail,
          data: data,
          options: Options(responseType: ResponseType.json),
          logTag: logTag,
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('$logTag response:' + _response.response.data.toString());
          _responseWrapper.body = ContactLeadResponseModel.fromJson(_response.response.data).toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('$logTag error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

}
