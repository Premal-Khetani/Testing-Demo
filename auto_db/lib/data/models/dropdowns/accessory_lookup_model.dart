import 'package:auto_db/domain/entities/dropdowns/accessory_lookup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessory_lookup_model.freezed.dart';
part 'accessory_lookup_model.g.dart';

@freezed
abstract class AccessoryLookupModel with _$AccessoryLookupModel {
  const AccessoryLookupModel._();

  const factory AccessoryLookupModel({
    @JsonKey(name: 'id') @required int id,
    @JsonKey(name: 'group') @required String groupName,
    @JsonKey(name: 'accessory') @required String name,
    @JsonKey(name: 'default_state') @required bool state 
  }) = _AccessoryLookupModel;

  AccessoryLookup toDomain(){
    return AccessoryLookup(
      id: id,
      groupName: groupName,
      name: name,
      state: state
    );
  }

  factory AccessoryLookupModel.fromJson(Map<String, dynamic> json) =>_$AccessoryLookupModelFromJson(json);
}