import 'package:auto_db/data/models/trader/leads/lead_model.dart';
import 'package:auto_db/domain/entities/leads/contact_lead_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_lead_response_model.freezed.dart';
part 'contact_lead_response_model.g.dart';

@freezed
abstract class ContactLeadResponseModel with _$ContactLeadResponseModel {
  const ContactLeadResponseModel._();

  const factory ContactLeadResponseModel({
    @JsonKey(name: 'success') @required bool success,
    @JsonKey(name: 'leadContact') @required LeadContactModel leadContact
  }) = _ContactLeadResponseModel;

  ContactLeadResponse toDomain(){
    return ContactLeadResponse(
      success: success,
      leadContact: leadContact == null ? null : leadContact.toDomain()
    );
  }

  factory ContactLeadResponseModel.fromJson(Map<String, dynamic> json) =>_$ContactLeadResponseModelFromJson(json);
}