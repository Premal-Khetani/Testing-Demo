import 'package:freezed_annotation/freezed_annotation.dart';

part 'rdw_post_request.freezed.dart';

@freezed
abstract class RDWPostRequest with _$RDWPostRequest {
  const factory RDWPostRequest({
    @required String licensePlate,
  }) = _RDWPostRequest;
}