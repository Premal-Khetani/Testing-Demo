import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_description_post_body.freezed.dart';

@freezed
abstract class AddVehicleDescriptionPostBody with _$AddVehicleDescriptionPostBody {
  const factory AddVehicleDescriptionPostBody({
    @required int id, 
    @required String title,
    @required String description 
  }) = _AddVehicleDescriptionPostBody;
}