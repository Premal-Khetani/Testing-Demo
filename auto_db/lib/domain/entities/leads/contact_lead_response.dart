import 'package:auto_db/domain/entities/leads/lead.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_lead_response.freezed.dart';

@freezed
abstract class ContactLeadResponse with _$ContactLeadResponse{
  const factory ContactLeadResponse({
    @required bool success,
    @required LeadContact leadContact
  }) = _ContactLeadResponse;
}