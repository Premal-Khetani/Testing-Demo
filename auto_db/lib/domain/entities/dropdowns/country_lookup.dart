import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_lookup.freezed.dart';

@freezed
abstract class CountryLookup with _$CountryLookup {
  const factory CountryLookup({
    @required CountryNameLookup coutryNameLookup, 
  }) = _CountryLookup;
}

@freezed
abstract class CountryNameLookup with _$CountryNameLookup {
  const factory CountryNameLookup({
    @required String en,
    @required String nl 
  }) = _CountryNameLookup;
}