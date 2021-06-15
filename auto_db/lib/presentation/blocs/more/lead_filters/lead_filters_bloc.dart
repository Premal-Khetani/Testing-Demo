import 'dart:async';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/lead_filter.dart';
import 'package:auto_db/domain/repositories/leads_repository.dart';
import 'package:auto_db/navigation/trader/trader_more_route_generator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/widgets/dialog_pop_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../main.dart';

part 'lead_filters_event.dart';
part 'lead_filters_state.dart';

part 'lead_filters_bloc.freezed.dart';

class LeadFiltersBloc {
  BuildContext _context;
  LeadFiltersState _state;
  LeadsRepository _leadsRepository;

  LeadFiltersBloc() {
    _state = LeadFiltersState.initial();
    _eventsController.stream.listen(_mapEventToState);
    _resolveDependencies();
    _initialise();
  }

  LeadFiltersState get initialState {
    if (_state == null) {
      _state = LeadFiltersState.initial();
    }
    return _state;
  }

  var _eventsController = StreamController<LeadFilterEvent>();
  StreamSink<LeadFilterEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<LeadFiltersState>.broadcast();
  StreamSink<LeadFiltersState> get _inStateController => _stateController.sink;
  Stream<LeadFiltersState> get outStateController => _stateController.stream;

  void _mapEventToState(LeadFilterEvent event) {
    event.map(
      close: (_) {
        Navigator.of(_context).pop();
      },
      add: (_) async {
        await _addFilter();
      },
      update: (value) async {
        await _updateFilter(value.filter);
      },
      delete: (value) async {
        await _deleteFilter(value.filter);
      },
      onRetryTapped: (_) async {
        _emitSubmittingState(true);
        await _initialise();
      },
    );
  }

  Future<void> _addFilter() async {
    _emitSubmittingState(true);
    final response = await Navigator.of(_context).pushNamed(
      '/leadfilters/addedit',
      arguments: AddEditLeadFilterRuteArgs(isEdit: false),
    );
    if (response != null) {
      LeadFilter filter = response;

      if (filter != null) {
        _state.filters.add(filter);
      }
    }
    _emitSubmittingState(false);
  }

  Future<void> _updateFilter(LeadFilter filter) async {
    _emitSubmittingState(true);

    final response = await Navigator.of(_context).pushNamed(
      '/leadfilters/addedit',
      arguments: AddEditLeadFilterRuteArgs(
        isEdit: true,
        filter: filter,
      ),
    );
    if (response != null) {
      LeadFilter filt = response;
      if (filt != null) {
        int idx = _state.filters.indexOf(filter);
        if (idx != -1) {
          _state.filters[idx] = filt;
        }
      }
    }
    _emitSubmittingState(false);
  }

  Future<void> _deleteFilter(LeadFilter filter) async {
    showDialog(
      context: _context,
      builder: (context){
        return DialogPopupWidget(
          message: StringConstants.deleteLeadFilterMessage,
          onYesTapped: () async {
            Navigator.of(context).pop();
            await _leadFilterDelete(filter);
          },
          onCancelTapped: (){
            Navigator.of(context).pop();
          },
        );
      }
    );
  }

  Future<void> _leadFilterDelete(LeadFilter filter) async {
    _emitSubmittingState(true);
    final response = await _leadsRepository.deleteLeadFilter(filter.id);
    if (response.error != null) {
      String errorMessage = '';

      response.error.map(
          serverError: (e) {
            errorMessage = e.massage;
          },
          noInternerError: (_) {
            errorMessage = StringConstants.noInternet;
          },
          genericError: (_) {
            errorMessage = StringConstants.generalError;
          },
          noOperationError: (_) {});

      _emitSubmittingState(false);

      CustomToastUtils.showCustomToast(
          context: _context,
          message: errorMessage,
          customToastType: CustomToastType.Error);
      return;
    }

    if(response.body != null && response.body){
      _state.filters.remove(filter);
      _emitSubmittingState(false);
      CustomToastUtils.showCustomToast(
        context: _context, 
        message: StringConstants.removeLeadFilterSuccess, 
        customToastType: CustomToastType.Sucessfull
      );
    } else {
      _emitSubmittingState(false);
      CustomToastUtils.showCustomToast(
        context:_context, 
        message: StringConstants.removeLeadFilterError, 
        customToastType: CustomToastType.Error
      );
    }
  }

  void _emitSubmittingState(bool isSubmitting) {
    _state = _state.copyWith(
      isSubmitting: isSubmitting,
    );
    _emitNewState();
  }

  void _emitNewState() {
    _inStateController.add(_state);
  }

  void addEvent(LeadFilterEvent event) {
    _inEventsControler.add(event);
  }

  void setContext(BuildContext buildContext) {
    _context = buildContext;
  }

  void _resolveDependencies() {
    _leadsRepository = getIt.get<LeadsRepository>();
  }

  Future<void> _initialise() async {
    final response = await _leadsRepository.getLeadFilters();
    if (response.error != null) {
      _handleError(response.error);
      return;
    } else {
      _state = _state.copyWith(
        filters: response.body,
        isSubmitting: false,
      );
      _emitNewState();
    }
  }

  void _handleError(Failure error) {
    error.map(
        serverError: (e) {
          _state = _state.copyWith(
              isSubmitting: false, isError: true, errorMessage: e.massage);
          _emitNewState();
        },
        noInternerError: (_) {
          _state =
              _state.copyWith(isSubmitting: false, noInternetConnection: true);
          _emitNewState();
        },
        genericError: (_) {
          _state = _state.copyWith(
              isSubmitting: false,
              isError: true,
              errorMessage: StringConstants.generalError);
          _emitNewState();
        },
        noOperationError: (_) {});
  }

  dispose() {
    _eventsController.close();
    _stateController.close();
  }
}
