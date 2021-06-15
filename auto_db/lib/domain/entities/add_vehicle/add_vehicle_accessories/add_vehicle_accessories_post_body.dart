import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_accessories_post_body.freezed.dart';

@freezed
abstract class AddVehicleAccessoriesPostBody with _$AddVehicleAccessoriesPostBody {
  const factory AddVehicleAccessoriesPostBody({
    @required int id, 
    @required List<int> accessories,
    @required List<String> customAccessories 
  }) = _AddVehicleAccessoriesPostBody;
}