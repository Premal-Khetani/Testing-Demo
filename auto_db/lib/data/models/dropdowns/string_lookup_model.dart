import 'package:auto_db/domain/entities/dropdowns/string_lookup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_lookup_model.freezed.dart';
part 'string_lookup_model.g.dart';

@freezed
abstract class StringLookupModel with _$StringLookupModel {
  const StringLookupModel._();

  const factory StringLookupModel({
    @required String en,
    @required String nl
  }) = _StringLookupModel;

  StringLookup toDomain(){
    return StringLookup(
      en: en,
      nl: nl
    );
  }

  factory StringLookupModel.fromJson(Map<String, dynamic> json) =>_$StringLookupModelFromJson(json);
}