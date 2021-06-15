import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_post_request.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:flutter/foundation.dart';

class GetRDWInformationUsecase extends BaseUsecase<RDWResponse,GetRDWInformationsParams> {
  AddVehicleRepository _repository;

  GetRDWInformationUsecase(AddVehicleRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<RDWResponse>> call(GetRDWInformationsParams params) async {
    return await _repository.getRDWInformations(rdwPostRequest: params.rdwPostRequest);
  }
}

class GetRDWInformationsParams{
  final RDWPostRequest rdwPostRequest;

  GetRDWInformationsParams({@required this.rdwPostRequest});
}