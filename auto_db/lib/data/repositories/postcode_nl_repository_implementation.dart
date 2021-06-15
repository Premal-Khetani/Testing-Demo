import 'package:auto_db/data/datasources/remote/postcode_nl_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/nl_addreses_model/nl_addreses_model.dart';
import 'package:auto_db/domain/entities/nl_addreses/nl_addreses.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/repositories/postcode_nl_repository.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';

class PostcodeNlRepositoryImplementation implements PostcodeNlRepository {
  PostcodeNlDioClient postcodeNlDioClient;

  PostcodeNlRepositoryImplementation(){
    _resolveDependencies();
  }

  void _resolveDependencies(){
    postcodeNlDioClient =  getIt.get<PostcodeNlDioClient>();
  }

  @override
  Future<ResponseWrapper<NlAddreses>> getAdressByZipCodeAndStreetNumber({String zipCode, int streetNumber}) async {
    ResponseWrapper<NlAddreses> _responseWrapper = ResponseWrapper<NlAddreses>();
    
    try{
      final _response = await postcodeNlDioClient.get(
        '/$zipCode/$streetNumber',
        options: Options(
          responseType: ResponseType.json
        ),
        logTag: 'Get Adress By ZipCode And StreetNumber'
      );

      if(_response.response != null){
        if (_response.response.statusCode == 200) {
          print('Get Adress By ZipCode And StreetNumber:' + _response.response.data.toString());
          _responseWrapper.body = NlAddresesModel.fromJson(_response.response.data).toDomain();
        }
      }

      if(_response.error != null){
        _responseWrapper.error = _response.error;
      }

    } catch (e) {
      print('Get Adress By ZipCode And StreetNumber: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }
    
    return _responseWrapper;
  }
}