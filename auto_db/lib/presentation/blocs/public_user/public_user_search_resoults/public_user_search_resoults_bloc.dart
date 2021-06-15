import 'dart:async';

import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/domain/entities/dropdowns/add_vehicle_lookups.dart';
import 'package:auto_db/domain/entities/inventory/get_ads_post_body.dart';
import 'package:auto_db/domain/entities/public_user/vehicle_search/public_user_vehicle_ad.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/public_user_repository.dart';
import 'package:auto_db/domain/usecases/dropdowns/get_ad_search_filter_options_usecase.dart';
import 'package:auto_db/domain/usecases/public_user/public_user_search_vehicles_usecase.dart';
import 'package:auto_db/domain/value_objects/inventory_filter.dart';
import 'package:auto_db/main.dart';
import 'package:auto_db/presentation/blocs/trader/vehicle_search/vehicle_search_bloc.dart';
import 'package:auto_db/presentation/utils/custom_toast_utils.dart';
import 'package:auto_db/presentation/utils/price_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'public_user_search_resoults_event.dart';
part 'public_user_search_resoults_state.dart';

part 'public_user_search_resoults_bloc.freezed.dart';

class PublicUserSearchResoultsBloc{
  BuildContext _context;
  VehicleSearchModel _vehicleSearchModel;

  PublicUserSearchResoultsState _state;

  PublicUserSearchVehiclesUsecase _publicUserSearchVehiclesUsecase;
  GetAdSearchFilterOptionsUsecase _getAdSearchFilterOptionsUsecase;

  int _paginationData = 10;

  PublicUserSearchResoultsBloc({
    @required BuildContext context,
    @required VehicleSearchModel vehicleSearchModel
  }){
    this._context = context;
    this._vehicleSearchModel = vehicleSearchModel;
    _resolveDependencies();
    _eventsController.stream.listen(_mapEventToState);
    _initialise();
  }
  
  PublicUserSearchResoultsState get initialState => _state;

  var _eventsController = StreamController<PublicUserSearchResoultsEvent>();
  StreamSink<PublicUserSearchResoultsEvent> get _inEventsControler => _eventsController.sink;

  var _stateController = StreamController<PublicUserSearchResoultsState>();
  StreamSink<PublicUserSearchResoultsState> get _inStateController => _stateController.sink;
  Stream<PublicUserSearchResoultsState> get outStateController => _stateController.stream;

  void _initialise() async {
    _state = PublicUserSearchResoultsState.initial();
    await _getFilterOptions();
    await _search();
  }

  void _mapEventToState(PublicUserSearchResoultsEvent event){
    event.map(
      onCloseTapped: (_){
        Navigator.of(_context).pop();
      },
      onRetryTapped: (_) async { 
        _state = _state.copyWith(
          isSubmitting: true,
          isError: false,
          errorMessage: '',
          noInternetConnection: false
        );
        _emitNewState();
        await _search();
      }, 
      onFilterValueChanged: (e) async {
        _state.inventoryFilter.value = e.value;
        _state = _state.copyWith(
          offset : 0,
          isRichedTheEnd: false,
          isPaginationError: false,
          ads: List<PublicSearchListingModel>()
        );
        await _search();
      }, 
      onAdTapped: (e){

      }, 
      getPageData: (_) { 
        if(!_state.isRichedTheEnd){
          _state = _state.copyWith(
            offset: _state.offset + _paginationData
          );
          _search(isGetPageData: true);
        }
      }, 
    );
  }

  Future<void> _getFilterOptions() async {
    final filterOptionsResponse = await _getAdSearchFilterOptionsUsecase(NoParams());
    if(filterOptionsResponse.body != null){
      filterOptionsResponse.body.removeLast();
      _state.inventoryFilter.options = filterOptionsResponse.body;
      if(_state.inventoryFilter.options.length > 0){
        _state.inventoryFilter.value = filterOptionsResponse.body[0];
      }
    }
  }

  Future<void> _search({bool isGetPageData = false}) async {
    if(!isGetPageData){
      _state = _state.copyWith(
        isSubmitting: true
      );
      _emitNewState();
    }
        
    final adsResponse = await _publicUserSearchVehiclesUsecase(PublicUserSearchVehiclesParams(getAdsPostBody: _createGetAdsRequest()));

    if(adsResponse.error != null){
      if(isGetPageData){
        _handleErrorPagnation(adsResponse.error);
      } else {
        _handleErrorSearch(adsResponse.error);
      }
      return;
    }

    if(adsResponse.body != null && adsResponse.body.data != null){
      final isRichTheEnd = _state.ads.length + adsResponse.body.data.length == adsResponse.body.count;

      _state = _state.copyWith(
        isRichedTheEnd: isRichTheEnd,
        isPaginationError: false
      );
      _emitNewState();
      _state.ads.addAll(_mapAds(adsResponse.body.data));
    } else {
      final error = Failure.genericError();
      if(isGetPageData){
        _handleErrorPagnation(error);
      } else {
        _handleErrorSearch(error);
      }
      return;
    }

    _state = _state.copyWith(
      isSubmitting: false
    );
    _emitNewState();
  }

  List<PublicSearchListingModel> _mapAds(List<PublicUserVehicleAd> ads){
    List<PublicSearchListingModel> _listingModels = List<PublicSearchListingModel>();

    ads.forEach((ad) {
      String _price = '';
      String _mileage = '';
      String _power = '';
      AccountType _accountType = AccountType.None;

      if(ad.priceType != null){
        if(ad.priceType.name == 'Asking price'){
          if(ad.price != null){
            _price = PriceUtils.formatPriceFromApi(ad.price);
          }
        } else {
          _price = ad.priceType.name;
        }
      }

      if(ad.mileage != null){
        String _m = PriceUtils.formatInt(ad.mileage);
        if(ad.mileageUnit != null){
          _m += ' ' +  ad.mileageUnit;
        }
        _mileage = _m;
      }

      if(ad.kw != null){
        _power = ad.kw + StringConstants.kw;
      }

      if(ad.hp != null){
        if(_power.isNotEmpty){
          _power += '/' + ad.hp + StringConstants.hp;
        } else {
          _power += ad.hp + StringConstants.hp;
        }
      }

      if(ad.user != null && ad.user.accountType != null){
        if(ad.user.accountType.toLowerCase() == 'business'){
          _accountType = AccountType.Bussines;
        }

        if(ad.user.accountType.toLowerCase() == 'private'){
          _accountType = AccountType.Private;
        }
      }

      _listingModels.add(PublicSearchListingModel(
        id: ad.id,
        title: ad.title == null ? '' : ad.title,
        image: ad.photo == null ? '' : ad.photo,
        price: _price,
        year:  ad.year == null ? '' : ad.year.toString(),
        mileage: _mileage,
        fuel: ad.fuelType == null ? '' : ad.fuelType.name,
        engine: ad.engineSize == null ? '' : PriceUtils.formatInt(ad.engineSize) + ' ' + StringConstants.cc.toLowerCase(),
        transmission: ad.vehicleTransmissionType == null ? '' : ad.vehicleTransmissionType.name,
        power: _power,
        traderLogo: ad.traderLogo,
        accountType: _accountType
      ));
    });

    return _listingModels;
  }

  void _handleErrorSearch(Failure error){
    error.map(
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
  }

  void _handleErrorPagnation(Failure error){
    String errorMessage = '';

    error.map(
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
      isPaginationError: true,
      offset: _state.offset - _paginationData
    );
    _emitNewState();

    CustomToastUtils.showCustomToast(
      context:_context, 
      message: errorMessage, 
      customToastType: CustomToastType.Error
    );
  }

  GetAdsPostBody _createGetAdsRequest(){
    GetAdsPostBody postBody = GetAdsPostBody(
      offset: _state.offset,
      getCarData: true,
      incompleateData: false,
      isMobile: true
    );

    if(_state.inventoryFilter.value != null){
      postBody = postBody.copyWith(
        sort: _state.inventoryFilter.value
      );
    }

    if(_vehicleSearchModel != null){
      if(_vehicleSearchModel.vehicleType != null){
        postBody = postBody.copyWith(
          vehicleTypeId: _vehicleSearchModel.vehicleType.id
        );
      }

      if(_vehicleSearchModel.vehicleBrand != null){
        postBody = postBody.copyWith(
          vehicleBrandId: _vehicleSearchModel.vehicleBrand.id
        );
      }

      if(_vehicleSearchModel.vehicleModel != null){
        postBody = postBody.copyWith(
          vehicleModelId: _vehicleSearchModel.vehicleModel.id
        );
      }

      if(_vehicleSearchModel.vehicleTransmissionType != null){
        postBody = postBody.copyWith(
          vehicleTransmissionTypeId: _vehicleSearchModel.vehicleTransmissionType.id
        );
      }

      if(_vehicleSearchModel.vehicleBodyWorkType!= null){
        postBody = postBody.copyWith(
          vehcileBodyWorkTypeId: _vehicleSearchModel.vehicleBodyWorkType.id
        );
      }

      if(_vehicleSearchModel.vehicleFuelType != null){
        postBody = postBody.copyWith(
          fuelTypeId: _vehicleSearchModel.vehicleFuelType.id
        );
      }

      if(_vehicleSearchModel.yearFrom != null){
        postBody = postBody.copyWith(
          yearFrom: int.parse(_vehicleSearchModel.yearFrom)
        );
      }

      if(_vehicleSearchModel.yearTo != null){
        postBody = postBody.copyWith(
          yeraTo: int.parse(_vehicleSearchModel.yearTo)
        );
      }

      if(_vehicleSearchModel.priceFrom != null){
        postBody = postBody.copyWith(
          priceFrom: PriceUtils.getPriceFromFormatedPrice(_vehicleSearchModel.priceFrom)
        );
      }

      if(_vehicleSearchModel.priceTo != null){
        postBody = postBody.copyWith(
          priceTo: PriceUtils.getPriceFromFormatedPrice(_vehicleSearchModel.priceTo)
        );
      }

      final f = NumberFormat("#,###");

      if(_vehicleSearchModel.mileageFrom != null){
        postBody = postBody.copyWith(
          mileageFrom: int.parse(_vehicleSearchModel.mileageFrom.replaceAll(f.symbols.GROUP_SEP, ''))
        );
      }

      if(_vehicleSearchModel.mileageTo != null){
        postBody = postBody.copyWith(
          mileageTo: int.parse(_vehicleSearchModel.mileageTo.replaceAll(f.symbols.GROUP_SEP, ''))
        );
      }
    }

    return postBody;
  }

  void _emitNewState(){
    _inStateController.add(_state);
  }

  void _resolveDependencies(){
    _getAdSearchFilterOptionsUsecase = GetAdSearchFilterOptionsUsecase(getIt.get<DropdownDataRepository>());
    _publicUserSearchVehiclesUsecase = PublicUserSearchVehiclesUsecase(getIt.get<PublicUserRepository>());
  }

  void addEvent(PublicUserSearchResoultsEvent event){
    _inEventsControler.add(event);
  }

  dispose(){
    _eventsController.close();
    _stateController.close();
  }
}

class PublicSearchListingModel{
  final int id;
  final String title;
  final String image;
  final String price;
  final String year;
  final String mileage;
  final String fuel;
  final String engine;
  final String transmission;
  final String power;
  final String traderLogo;
  final AccountType accountType;

  PublicSearchListingModel({
    @required this.id,
    this.title = '', 
    this.image = '', 
    this.price = '', 
    this.year = '', 
    this.mileage = '', 
    this.fuel = '', 
    this.engine = '', 
    this.transmission = '', 
    this.power = '',
    this.traderLogo,
    this.accountType = AccountType.None
  });
}

enum AccountType {
  Bussines,
  Private,
  None
}