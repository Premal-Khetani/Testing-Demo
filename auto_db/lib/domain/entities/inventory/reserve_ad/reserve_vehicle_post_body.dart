import 'package:freezed_annotation/freezed_annotation.dart';

part 'reserve_vehicle_post_body.freezed.dart';

@freezed
abstract class ReserveVehiclePostBody with _$ReserveVehiclePostBody {
  const factory ReserveVehiclePostBody({
    @required bool reserved
  }) = _ReserveVehiclePostBody;
}