import 'package:freezed_annotation/freezed_annotation.dart';

part 'nl_addreses.freezed.dart';

@freezed
abstract class NlAddreses with _$NlAddreses{
  const factory NlAddreses({
    @required String street, 
    @required int houseNumber,
    @required String zipCode,
    @required String city
  }) = _NlAddreses;
}