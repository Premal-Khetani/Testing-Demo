import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/domain/entities/searches/get_all_searches/search.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';
import 'package:auto_db/domain/usecases/trader/searches/get_all_searches_usecase.dart';
import 'package:auto_db/domain/usecases/trader/searches/remove_search_usecase.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/navigation/app_navigation_route_generator.dart';
import 'package:auto_db/navigation/trader/trader_search_route_generator.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:auto_db/presentation/widgets/dialog_pop_up_widget.dart';
import 'package:auto_db/presentation/widgets/trader/searches/searches_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'searches_event.dart';
part 'searches_state.dart';

part 'searches_bloc.freezed.dart';

class SearchesBloc {
  BuildContext _context;

  SearchesState _state;

  List<Search> _searches;

  GetAllSearchesUsecase _getAllSearchesUsecase;
  RemoveSearchUsecase _removeSearchUsecase;

  SearchesBloc({
    @required BuildContext context,
  }){
    this._context = context;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }

  SearchesState get searchesInitialState => _state;

  var _eventsController = StreamController<SearchesEvent>();
  StreamSink<SearchesEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<SearchesState>.broadcast();
  StreamSink<SearchesState> get _inStateController => _stateController.sink;
  Stream<SearchesState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = SearchesState.initial();
    await _getSearches();
  }

  void _mapEventToState(SearchesEvent event){
    event.map(
      onRetryTapped: (_) async {
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _getSearches();
      },
      onNewSearchTapped: (_) async {
        final isCreated = await Navigator.of(_context).pushNamed('/add_new_search');
        if(isCreated != null && isCreated){
          _state = _state.copyWith(
            isSubmitting: true,
            searches: List<SearchListingModel>()
          );
          _emitNewState();
          await _getSearches();
        }
      }, 
      onEditSearchTapped: (e) async {
        final args = EditSearchRuteArgs(search: _searches.firstWhere((search) => search.id == e.search.id));
        final isCreated = await Navigator.of(_context).pushNamed('/edit_search', arguments: args);
        if(isCreated != null && isCreated){
          _state = _state.copyWith(
            isSubmitting: true,
            searches: List<SearchListingModel>()
          );
          _emitNewState();
          await _getSearches();
        }
      }, 
      onDeleteSearchTapped: (e) {
        _deleteSearch(_searches.firstWhere((search) => search.id == e.search.id));
      }, 
      onHelpButtonTapped: (_) async {
        final args = InfoPopUpRouteArgs(content: SearchesInfoWidget());
        await appBloc.pushRoute('/info_pop_up', arguments: args);
      }
    );
  }

  Future<void> _getSearches() async {
    final response = await _getAllSearchesUsecase(NoParams());
    
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
      _searches = response.body;
      _state = _state.copyWith(
        searches: _mapSearches(response.body)
      );
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  void _deleteSearch(Search search) async {
    showDialog(
      context: _context,
      builder: (context){
        return DialogPopupWidget(
          message: StringConstants.deleteSearchMessage,
          onYesTapped: () async {
            Navigator.of(context).pop();
            await _searchDelete(search.id);
          },
          onCancelTapped: (){
            Navigator.of(context).pop();
          },
        );
      }
    );
  }

  Future<void> _searchDelete(int searchId) async {
    _state = _state.copyWith(
      isSubmitting: true
    );
    _emitNewState();
    final response = await _removeSearchUsecase(RemoveSearchParams(searchId: searchId));

    if(response.error != null){
      String errorMessage = '';

      response.error.map(
        serverError: (e){
          errorMessage = e.massage;
        }, 
        noInternerError: (_){
          errorMessage = StringConstants.noInternet;
        }, 
        genericError: (_){
          errorMessage = StringConstants.generalError;
        }, 
        noOperationError: (_) {  }
      );

      _state = _state.copyWith(
        isSubmitting: false
      );
      _emitNewState();

      CustomToastUtils.showCustomToast(
        context:_context, 
        message: errorMessage, 
        customToastType: CustomToastType.Error
      );
      return;
    }

    if(response.body != null){
      if(response.body.success){
        _searches.removeWhere((element) => element.id == searchId);
        _state = _state.copyWith(
          isSubmitting: false,
          searches: _mapSearches(_searches)
        );
        _emitNewState();

        CustomToastUtils.showCustomToast(
          context: _context, 
          message: StringConstants.removeSearchSuccess, 
          customToastType: CustomToastType.Sucessfull
        );

      } else {
        _state = _state.copyWith(
          isSubmitting: false
        );
        _emitNewState();

        CustomToastUtils.showCustomToast(
          context:_context, 
          message: StringConstants.removeSearchError, 
          customToastType: CustomToastType.Error
        );
      }
    }
  }

  List<SearchListingModel> _mapSearches(List<Search> searches){
    List<SearchListingModel> _searches = List<SearchListingModel>();
    
    searches.forEach((search) {
      String title = '';
      String vehicle;
      String searchName = '';
      String period = '';
      String year;
      String price;
      String transmission;
      String bodywork;
      String fuel;
      String mileage;

      if(search.vehicleBrand != null){
        title = search.vehicleBrand.name;

        if(search.vehicleModel != null){
          title += ' ' + search.vehicleModel.name;
        }

        if(search.vehicleType != null){
          vehicle = search.vehicleType.name;
        }

      } else if(search.vehicleType != null){
        title = StringConstants.vehicleType + ' ' + search.vehicleType.name;
      }

      if(search.searchName != null){
        searchName = search.searchName;
      }

      if(search.dateTo != null){
        period = StringConstants.searchUntil + ' ' + search.dateTo;
      }

      if(search.yearFrom != null && search.yeraTo != null){
        year = search.yearFrom + ' ' + StringConstants.to + ' ' + search.yeraTo;
      } else {
        if(search.yearFrom != null && search.yeraTo == null){
          year = search.yearFrom;
        }

        if(search.yearFrom == null && search.yeraTo != null){
          year = search.yeraTo;
        }
      }

      if(search.priceFrom != null && search.priceTo != null){
        price = StringConstants.euroSign + PriceUtils.formatInt(int.parse(search.priceFrom)) + ' - ' + StringConstants.euroSign + PriceUtils.formatInt(int.parse(search.priceTo));
      } else {
        if(search.priceFrom != null && search.priceTo == null){
          price = StringConstants.euroSign + PriceUtils.formatInt(int.parse(search.priceFrom));
        }

        if(search.priceFrom == null && search.priceTo != null){
          price = StringConstants.euroSign + PriceUtils.formatInt(int.parse(search.priceTo));
        }
      }

      if(search.vehicleTransmissionType != null){
        transmission = search.vehicleTransmissionType.name;
      }

      if(search.vehcileBodyWorkType != null){
        bodywork = search.vehcileBodyWorkType.name;
      }

      if(search.fuelType != null){
        fuel = search.fuelType.name;
      }

      if(search.mileageFrom != null && search.mileageTo != null){
        mileage = PriceUtils.formatInt(int.parse(search.mileageFrom)) + ' - ' + PriceUtils.formatInt(int.parse(search.mileageTo));
      } else {
        if(search.mileageFrom != null && search.mileageTo == null){
          mileage = PriceUtils.formatInt(int.parse(search.mileageFrom));
        }

        if(search.mileageFrom == null && search.mileageTo != null){
          mileage = PriceUtils.formatInt(int.parse(search.mileageTo));
        }
      }

      _searches.add(SearchListingModel(
        id: search.id,
        title: title,
        searchName: searchName,
        period: period,
        vehicle: vehicle,
        year: year,
        price: price,
        transmission: transmission,
        bodywork: bodywork,
        fuel: fuel,
        mileage: mileage
      ));
    });

    return _searches;
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getAllSearchesUsecase = GetAllSearchesUsecase(getIt.get<SearchesRepository>());
    _removeSearchUsecase = RemoveSearchUsecase(getIt.get<SearchesRepository>());
  }

  void addEvent(SearchesEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}

class SearchListingModel{
  final int id;
  final String title;
  final String searchName;
  final String period;
  final String vehicle;
  final String year;
  final String price;
  final String transmission;
  final String bodywork;
  final String fuel;
  final String mileage;

  SearchListingModel({
    @required this.id,
    @required this.title,
    @required this.searchName, 
    @required this.period,
    @required this.vehicle, 
    @required this.year,
    @required this.price,
    @required this.transmission,
    @required this.bodywork,
    @required this.fuel,
    @required this.mileage
  });
}