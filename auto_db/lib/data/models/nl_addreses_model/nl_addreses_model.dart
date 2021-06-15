import 'package:auto_db/domain/entities/nl_addreses/nl_addreses.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nl_addreses_model.freezed.dart';
part 'nl_addreses_model.g.dart';

@freezed
abstract class NlAddresesModel with _$NlAddresesModel{
  const NlAddresesModel._();

  const factory NlAddresesModel({
    @required String street, 
    @JsonKey(name: 'number') @required int houseNumber,
    @JsonKey(name: 'postcode') @required String zipCode,
    @required String city 
  }) = _NlAddresesModel;

  NlAddreses toDomain(){
    return NlAddreses(
      street: street,
      houseNumber: houseNumber,
      zipCode: zipCode,
      city: city
    );
  }

  factory NlAddresesModel.fromJson(Map<String, dynamic> json) =>_$NlAddresesModelFromJson(json);
}