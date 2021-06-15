import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:auto_db/domain/repositories/leads_repository.dart';
import 'package:auto_db/domain/usecases/trader/leads/get_leads_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/navigation/trader/trader_leads_route_generator.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leads_event.dart';
part 'leads_state.dart';

part 'leads_bloc.freezed.dart';

class LeadsBloc {
  BuildContext _context;

  LeadsState _state;
  GetLeadsUsecase _getLeadsUsecase;

  LeadsBloc({
    @required BuildContext context,
  }){
    this._context = context;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
    TabNavigator.instance.setLeadsBloc = this;
  }

  LeadsState get leadsInitialState => _state;

  var _eventsController = StreamController<LeadsEvent>();
  StreamSink<LeadsEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<LeadsState>.broadcast();
  StreamSink<LeadsState> get _inStateController => _stateController.sink;
  Stream<LeadsState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = LeadsState.initial();
    await _getLeads();
  }

  void _mapEventToState(LeadsEvent event){
    event.map(
      onRetryTapped: (_) async {
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _getLeads();
      }, 
      toLeadFiltersTapped: (_){
        TabNavigator.instance.goToTreaderLedsFilter(routeName: '/leadfilters');
      },
      onSendAnEmailTapped: (e) async {
        String subject = '';
        final i = _state.leads.indexWhere((lead) => lead.id == e.leadId);
        if(i > -1){
          subject = _state.leads[i].title;
        }
        final args = LeadsContactLeadRouteArgs(traderSearchId: e.leadId, subject: subject);
        final response = await Navigator.of(_context).pushNamed('/leads/contact', arguments: args);
        if(response != null){
          final indx = _state.leads.indexWhere((lead) => lead.id == e.leadId);
          if(indx > -1){
            _state.leads[indx].leadContacts.insert(0, response);
            _emitNewState();
          }
        }
      },
      onViewLeadContact: (e) async {
        String email;
        if (appBloc.user != null) {
          email = appBloc.user.email;
        }  
        final args = LeadsMessageSentRouteArgs(subject: e.leadContact.subject, message: e.leadContact.message, email: email);
        await Navigator.of(_context).pushNamed('/leads/messagesent', arguments: args);
      }
    );
  }

  Future<void> reload() async {
    _state = _state.copyWith(
      isSubmitting: true,
      isError: false,
      errorMessage: '',
      noInternetConnection: false,
      leads: List<LeadListingModel>()
    );
    _emitNewState();
    await _getLeads();
  }

  Future<void> _getLeads() async {
    final response = await _getLeadsUsecase(NoParams());
    
    if(response.error != null){
      response.error.map(
        serverError: (e){
          _state = _state.copyWith(
            isSubmitting: false,
            isError: true,
            errorMessage: e.massage
          );
          _emitNewState();
        }, 
        noInternerError: (_){
          _state = _state.copyWith(
            isSubmitting: false,
            noInternetConnection: true
          );
          _emitNewState();
        }, 
        genericError: (_){
          _state = _state.copyWith(
            isSubmitting: false,
            isError: true,
            errorMessage: StringConstants.generalError
          );
          _emitNewState();
        },
        noOperationError: (_) {  }
      );

      return;
    }

    if(response.body != null){
      _state = _state.copyWith(
        leads: _mapLeads(response.body)
      );
    } else {
      _state = _state.copyWith(
        isSubmitting: false,
        isError: true,
        errorMessage: StringConstants.generalError
      );
      _emitNewState();
      return;
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  List<LeadListingModel> _mapLeads(List<Lead> leads){
    List<LeadListingModel> _leads = List<LeadListingModel>();
    
    leads.forEach((lead) {
      String title = '';
      String vehicle;
      String period = '';
      String year;
      String price;
      String transmission;
      String bodywork;
      String fuel;
      String mileage;

      if(lead.vehicleBrand != null){
        title = lead.vehicleBrand.name;

        if(lead.vehicleModel != null){
          title += ' ' + lead.vehicleModel.name;
        }

        if(lead.vehicleType != null){
          vehicle = lead.vehicleType.name;
        }

      } else if(lead.vehicleType != null){
        title = StringConstants.vehicleType + ' ' + lead.vehicleType.name;
      }

      if(lead.dateTo != null){
        period = StringConstants.until + ' ' + lead.dateTo;
      }

      if(lead.yearFrom != null && lead.yeraTo != null){
        year = lead.yearFrom + ' ' + StringConstants.to + ' ' + lead.yeraTo;
      } else {
        if(lead.yearFrom != null && lead.yeraTo == null){
          year = lead.yearFrom;
        }

        if(lead.yearFrom == null && lead.yeraTo != null){
          year = lead.yeraTo;
        }
      }

      if(lead.priceFrom != null && lead.priceTo != null){
        price = StringConstants.euroSign + PriceUtils.formatInt(int.parse(lead.priceFrom)) + ' - ' + StringConstants.euroSign + PriceUtils.formatInt(int.parse(lead.priceTo));
      } else {
        if(lead.priceFrom != null && lead.priceTo == null){
          price = StringConstants.euroSign + PriceUtils.formatInt(int.parse(lead.priceFrom));
        }

        if(lead.priceFrom == null && lead.priceTo != null){
          price = StringConstants.euroSign + PriceUtils.formatInt(int.parse(lead.priceTo));
        }
      }

      if(lead.vehicleTransmissionType != null){
        transmission = lead.vehicleTransmissionType.name;
      }

      if(lead.vehcileBodyWorkType != null){
        bodywork = lead.vehcileBodyWorkType.name;
      }

      if(lead.fuelType != null){
        fuel = lead.fuelType.name;
      }

      if(lead.mileageFrom != null && lead.mileageTo != null){
        mileage = PriceUtils.formatInt(int.parse(lead.mileageFrom)) + ' - ' + PriceUtils.formatInt(int.parse(lead.mileageTo));
      } else {
        if(lead.mileageFrom != null && lead.mileageTo == null){
          mileage = PriceUtils.formatInt(int.parse(lead.mileageFrom));
        }

        if(lead.mileageFrom == null && lead.mileageTo != null){
          mileage = PriceUtils.formatInt(int.parse(lead.mileageTo));
        }
      }

      _leads.add(LeadListingModel(
        id: lead.id,
        title: title,
        period: period,
        vehicle: vehicle,
        year: year,
        price: price,
        transmission: transmission,
        bodywork: bodywork,
        fuel: fuel,
        mileage: mileage,
        leadContacts: lead.leadContacts
      ));
    });

    return _leads;
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getLeadsUsecase = GetLeadsUsecase(getIt.get<LeadsRepository>());
  }

  void addEvent(LeadsEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
    TabNavigator.instance.removeLeadsBloc(this);
  }
}

class LeadListingModel {
  final int id;
  final String title;
  final String period;
  final String vehicle;
  final String year;
  final String price;
  final String transmission;
  final String bodywork;
  final String fuel;
  final String mileage;
  final List<LeadContact> leadContacts;

  LeadListingModel({
    @required this.id,
    @required this.title,
    @required this.period,
    @required this.vehicle, 
    @required this.year,
    @required this.price,
    @required this.transmission,
    @required this.bodywork,
    @required this.fuel,
    @required this.mileage,
    @required this.leadContacts
  });
}