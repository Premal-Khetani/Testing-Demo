import 'package:auto_db/core/base/base_usecase.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:auto_db/domain/repositories/leads_repository.dart';

class GetLeadsUsecase extends BaseUsecase<List<Lead>,NoParams> {
  LeadsRepository _repository;

  GetLeadsUsecase(LeadsRepository repository){
    this._repository = repository;
  }

  @override
  Future<ResponseWrapper<List<Lead>>> call(NoParams params) async {
    return await _repository.getAllLeads();
  }
}