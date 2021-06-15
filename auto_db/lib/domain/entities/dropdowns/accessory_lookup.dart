import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessory_lookup.freezed.dart';

@freezed
abstract class AccessoryLookup with _$AccessoryLookup {
  const factory AccessoryLookup({
    @required int id,
    @required String groupName,
    @required String name,
    @required bool state 
  }) = _AccessoryLookup;
}