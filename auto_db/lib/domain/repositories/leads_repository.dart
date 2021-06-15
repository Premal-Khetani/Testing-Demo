import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/leads/contact_lead_response.dart';
import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:auto_db/domain/entities/mail/mail_entity.dart';

import '../lead_filter.dart';

abstract class LeadsRepository {
  Future<ResponseWrapper<List<LeadFilter>>> getLeadFilters();
  Future<ResponseWrapper<LeadFilter>> createLeadFilter(LeadFilter leadFilter);
  Future<ResponseWrapper<bool>> deleteLeadFilter(int filterId);
  Future<ResponseWrapper<LeadFilter>> updateLeadFilter(LeadFilter leadFilter);
  Future<ResponseWrapper<List<Lead>>> getAllLeads();
  Future<ResponseWrapper<ContactLeadResponse>> sendLeadContactEmail(MailEntity entity, int traderSearchId);
}
