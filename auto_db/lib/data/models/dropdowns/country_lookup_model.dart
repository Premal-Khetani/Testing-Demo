import 'package:auto_db/domain/entities/dropdowns/country_lookup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_lookup_model.freezed.dart';
part 'country_lookup_model.g.dart';

@freezed
abstract class CountryLookupModel with _$CountryLookupModel {
  const CountryLookupModel._();

  const factory CountryLookupModel({
    @JsonKey(name: 'name') @required CountryNameLookupModel coutryNameLookup, 
  }) = _CountryLookupModel;

  CountryLookup toDomain(){
    return CountryLookup(
      coutryNameLookup: coutryNameLookup.toDomain()
    );
  }

  factory CountryLookupModel.fromJson(Map<String, dynamic> json) =>_$CountryLookupModelFromJson(json);
}

@freezed
abstract class CountryNameLookupModel with _$CountryNameLookupModel {
  const CountryNameLookupModel._();

  const factory CountryNameLookupModel({
    @required String en,
    @required String nl 
  }) = _CountryNameLookupModel;

  CountryNameLookup toDomain(){
    return CountryNameLookup(
      en: en,
      nl: nl
    );
  }

  factory CountryNameLookupModel.fromJson(Map<String, dynamic> json) =>_$CountryNameLookupModelFromJson(json);
}