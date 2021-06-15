import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_specifications_post_body.freezed.dart';

@freezed
abstract class AddVehicleSpecificationsPostBody with _$AddVehicleSpecificationsPostBody {
  const factory AddVehicleSpecificationsPostBody({
    @required int id,
    @required int vehicleTypeId,
    @required int brandId,
    @required int modelId,
    @required int transmissionTypeId,
    @required int bodyworkTypeId,
    @required int year,
    @required int fuelTypeId,
    @required int mileage,
    @required String mileageUnit,
    int color,
    String interior,
    @required int engineSize
  }) = _AddVehicleSpecificationsPostBody;
}