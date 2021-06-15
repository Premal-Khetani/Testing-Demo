import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_lookup.freezed.dart';

@freezed
abstract class StringLookup with _$StringLookup {
  const factory StringLookup({
    @required String en,
    @required String nl 
  }) = _StringLookup;
}