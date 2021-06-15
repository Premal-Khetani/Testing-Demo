import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_search_request.freezed.dart';

@freezed
abstract class AddNewSearchRequest with _$AddNewSearchRequest{
  const factory AddNewSearchRequest({
    int id,
    @required int vehicleTypeId,
    @required String dateFrom,
    @required String dateTo,
    @required String searchName,
    int vehicleBrandId,
    int vehicleModelId,
    @required int vehicleTransmissionTypeId,
    @required int vehcileBodyWorkTypeId,
    @required int fuelTypeId,
    int yearFrom,
    int yeraTo,
    @required int priceFrom,
    @required int priceTo,
    int mileageFrom,
    int mileageTo,
  }) = _AddNewSearchRequest;
}