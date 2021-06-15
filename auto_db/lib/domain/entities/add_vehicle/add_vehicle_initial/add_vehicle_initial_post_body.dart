import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vehicle_initial_post_body.freezed.dart';

@freezed
abstract class AddVehicleInitialPostBody with _$AddVehicleInitialPostBody {
  const factory AddVehicleInitialPostBody({
    @required bool isMobile, 
  }) = _AddVehicleInitialPostBody;
}