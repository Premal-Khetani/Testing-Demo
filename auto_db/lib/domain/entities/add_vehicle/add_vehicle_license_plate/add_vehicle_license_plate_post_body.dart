import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_license_plate_post_body.freezed.dart';

@freezed
abstract class AddVehicleLicensePlatePostBody with _$AddVehicleLicensePlatePostBody {
  const factory AddVehicleLicensePlatePostBody({
    @required int id, 
    String licensePlate,
    String nameOrStockNumber 
  }) = _AddVehicleLicensePlatePostBody;
}