import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverError({
    @required int statusCode,
    @required String massage
  }) = ServerError;
  const factory Failure.noInternerError() = NoInternetError;
  const factory Failure.genericError() = GenericError;
  //NoOperationError example trying to upload something but there is nothing to upload
  const factory Failure.noOperationError() = NoOperationError;
}