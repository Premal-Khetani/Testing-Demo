import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/nl_addreses/nl_addreses.dart';
import 'package:flutter/foundation.dart';

abstract class PostcodeNlRepository {
  Future<ResponseWrapper<NlAddreses>> getAdressByZipCodeAndStreetNumber({@required String zipCode, @required int streetNumber});
}