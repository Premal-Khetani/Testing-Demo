import 'package:auto_db/domain/entities/inventory/inventory_ad.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ads_response.freezed.dart';

@freezed
abstract class GetAdsResponse with _$GetAdsResponse {
  const factory GetAdsResponse({
    int count,
    List<InventoryAd> data
  }) = _GetAdsResponse;
}