import 'package:auto_db/domain/entities/searches/remove_search/remove_search_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_search_response_model.freezed.dart';
part 'remove_search_response_model.g.dart';

@freezed
abstract class RemoveSearchResponseModel with _$RemoveSearchResponseModel {
  const RemoveSearchResponseModel._();

  const factory RemoveSearchResponseModel({
    @JsonKey(name: 'success') bool success,   
  }) = _RemoveSearchResponseModel;

  RemoveSearchResponse toDomain(){
    return RemoveSearchResponse(
      success: success
    );
  }

  factory RemoveSearchResponseModel.fromJson(Map<String, dynamic> json) =>_$RemoveSearchResponseModelFromJson(json);
}