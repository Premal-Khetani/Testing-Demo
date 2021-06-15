import 'dart:io';

import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_accessories/add_vehicle_accessories_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_description/add_vehicle_description_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_initial/add_vehicle_initial_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_license_plate/add_vehicle_license_plate_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_price/add_vehicle_price_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_photos/add_vehicle_photos_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_specifications/add_vehicle_specifications_post_body.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_post_request.dart';
import 'package:auto_db/domain/entities/add_vehicle/rdw/rdw_response.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:flutter/foundation.dart';

abstract class AddVehicleRepository {
  Future<ResponseWrapper<AddVehicleResponse>> saveLicensePlate(
      {@required
          AddVehicleLicensePlatePostBody addVehicleLicensePlatePostBody});
  Future<ResponseWrapper<AddVehicleResponse>> saveSpecifications(
      {@required AddVehicleSpecificationsPostBody specificationsPostBody});
  Future<ResponseWrapper<AddVehicleResponse>> saveDescription(
      {@required AddVehicleDescriptionPostBody addVehicleDescriptionPostBody});
  Future<ResponseWrapper<AddVehicleInitialResponse>> getVehicleId(
      {@required AddVehicleInitialPostBody addVehicleInitialPostBody});
  Future<ResponseWrapper<AddVehicleResponse>> saveAccessories(
      {@required AddVehicleAccessoriesPostBody addVehicleInitialPostBody});
  Future<ResponseWrapper<AddVehicleResponse>> savePrice(
      {@required AddVehiclePricePostBody addVehiclePricePostBody});
  Future<ResponseWrapper<AddVehiclePhotosResponse>> addVehiclePhotos(
      {@required List<Photo> photos, @required int id});
  Future<ResponseWrapper<File>> downloadVehiclePhoto(
      {@required String name, @required int userId, @required String savePath});
  Future<ResponseWrapper<AddVehiclePhotosResponse>> deleteVehiclePhotos(
      {@required List<String> photos, @required int id});
  Future<ResponseWrapper<AddVehiclePhotosResponse>> orderVehiclePhotos(
      {@required List<String> photos, @required int id, String authorization});
  Future<ResponseWrapper<AddVehiclePhotosResponse>> addVehiclePhoto(
      {@required Photo photo,
      @required int id,
      @required String authorization,
      Function(int count, int total) onSendProgress});
  Future<ResponseWrapper<RDWResponse>> getRDWInformations({@required RDWPostRequest rdwPostRequest});
}
