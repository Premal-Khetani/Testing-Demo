import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/nl_addreses/nl_addreses.dart';
import 'package:auto_db/domain/repositories/postcode_nl_repository.dart';
import 'package:flutter/foundation.dart';

class GetAddressByZipCodeAndStreetNumberUsecase extends BaseUsecase<NlAddreses,AddresByZipCodeAndStreetNumberParams> {
  PostcodeNlRepository _repository;

  GetAddressByZipCodeAndStreetNumberUsecase(PostcodeNlRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<NlAddreses>> call(AddresByZipCodeAndStreetNumberParams params) async {
    return await _repository.getAdressByZipCodeAndStreetNumber(zipCode: params.zipCode, streetNumber: params.streetNumber);
  }
}

class AddresByZipCodeAndStreetNumberParams{
  final String zipCode;
  final int streetNumber;

  AddresByZipCodeAndStreetNumberParams({
    @required this.zipCode, 
    @required this.streetNumber
  });
}