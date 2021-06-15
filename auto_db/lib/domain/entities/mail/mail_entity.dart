import 'package:freezed_annotation/freezed_annotation.dart';

part 'mail_entity.freezed.dart';
part 'mail_entity.g.dart';

@freezed
abstract class MailEntity with _$MailEntity {
  const factory MailEntity({
    @required String email,
    @required String name,
    @required String subject,
    @required String question,
  }) = _MailEntity;

  factory MailEntity.fromJson(Map<String, dynamic> json) =>
      _$MailEntityFromJson(json);
}
