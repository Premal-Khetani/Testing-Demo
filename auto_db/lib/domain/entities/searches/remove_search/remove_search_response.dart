import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_search_response.freezed.dart';

@freezed
abstract class RemoveSearchResponse with _$RemoveSearchResponse {
  const factory RemoveSearchResponse({
    @required bool success
  }) = _RemoveSearchResponse;
}