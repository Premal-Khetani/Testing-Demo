// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleResponseModel _$AddVehicleResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehicleResponseModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleResponseModelTearOff {
  const _$AddVehicleResponseModelTearOff();

// ignore: unused_element
  _AddVehicleResponseModel call(
      {@required
      @JsonKey(name: 'id')
          int id,
      @required
      @JsonKey(name: 'step_11')
          bool isLicensePlateSaved,
      @required
      @JsonKey(name: 'step_12')
          bool isSpecificationsSaved,
      @required
      @JsonKey(name: 'step_13')
          bool isDescriptionSaved,
      @required
      @JsonKey(name: 'step_2')
          bool isPhotosSaved,
      @required
      @JsonKey(name: 'step_3')
          bool isAccessoriesSaved,
      @required
      @JsonKey(name: 'step_4')
          bool isPriceSaved,
      @JsonKey(name: 'licence_plate')
          String licensePlate,
      @JsonKey(name: 'name')
          String stockNumber,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrend,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'body_work_type')
          AddVehicleLookupModel vehicleBodyWork,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'colors')
          AddVehicleLookupModel color,
      @JsonKey(name: 'interior')
          String interior,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'accesories')
          List<AccessoryResponseModel> accessories,
      @JsonKey(name: 'custom_accesories')
          List<CustomAccessoryResponseModel> customAccessories,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'bpm')
          String bpm,
      @JsonKey(name: 'vat')
          String vat,
      @JsonKey(name: 'trading_price')
          String tradePrice,
      @JsonKey(name: 'export_price')
          String exportPrice,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'allImages')
          List<String> allImages,
      @JsonKey(name: 'reserved')
          int reserved}) {
    return _AddVehicleResponseModel(
      id: id,
      isLicensePlateSaved: isLicensePlateSaved,
      isSpecificationsSaved: isSpecificationsSaved,
      isDescriptionSaved: isDescriptionSaved,
      isPhotosSaved: isPhotosSaved,
      isAccessoriesSaved: isAccessoriesSaved,
      isPriceSaved: isPriceSaved,
      licensePlate: licensePlate,
      stockNumber: stockNumber,
      title: title,
      description: description,
      vehicleType: vehicleType,
      vehicleBrend: vehicleBrend,
      vehicleModel: vehicleModel,
      vehicleTransmissionType: vehicleTransmissionType,
      vehicleBodyWork: vehicleBodyWork,
      year: year,
      fuelType: fuelType,
      mileage: mileage,
      mileageUnit: mileageUnit,
      color: color,
      interior: interior,
      engineSize: engineSize,
      accessories: accessories,
      customAccessories: customAccessories,
      priceType: priceType,
      price: price,
      bpm: bpm,
      vat: vat,
      tradePrice: tradePrice,
      exportPrice: exportPrice,
      photo: photo,
      allImages: allImages,
      reserved: reserved,
    );
  }

// ignore: unused_element
  AddVehicleResponseModel fromJson(Map<String, Object> json) {
    return AddVehicleResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleResponseModel = _$AddVehicleResponseModelTearOff();

/// @nodoc
mixin _$AddVehicleResponseModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'step_11')
  bool get isLicensePlateSaved;
  @JsonKey(name: 'step_12')
  bool get isSpecificationsSaved;
  @JsonKey(name: 'step_13')
  bool get isDescriptionSaved;
  @JsonKey(name: 'step_2')
  bool get isPhotosSaved;
  @JsonKey(name: 'step_3')
  bool get isAccessoriesSaved;
  @JsonKey(name: 'step_4')
  bool get isPriceSaved;
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @JsonKey(name: 'name')
  String get stockNumber;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
  @JsonKey(name: 'brands')
  AddVehicleLookupModel get vehicleBrend;
  @JsonKey(name: 'car_models')
  AddVehicleLookupModel get vehicleModel;
  @JsonKey(name: 'transmission_type')
  AddVehicleLookupModel get vehicleTransmissionType;
  @JsonKey(name: 'body_work_type')
  AddVehicleLookupModel get vehicleBodyWork;
  @JsonKey(name: 'year')
  int get year;
  @JsonKey(name: 'fuel_type')
  AddVehicleLookupModel get fuelType;
  @JsonKey(name: 'mileage')
  int get mileage;
  @JsonKey(name: 'mileage_options')
  String get mileageUnit;
  @JsonKey(name: 'colors')
  AddVehicleLookupModel get color;
  @JsonKey(name: 'interior')
  String get interior;
  @JsonKey(name: 'engine_size')
  int get engineSize;
  @JsonKey(name: 'accesories')
  List<AccessoryResponseModel> get accessories;
  @JsonKey(name: 'custom_accesories')
  List<CustomAccessoryResponseModel> get customAccessories;
  @JsonKey(name: 'price_type')
  AddVehicleLookupModel get priceType;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'bpm')
  String get bpm;
  @JsonKey(name: 'vat')
  String get vat;
  @JsonKey(name: 'trading_price')
  String get tradePrice;
  @JsonKey(name: 'export_price')
  String get exportPrice;
  @JsonKey(name: 'photos')
  String get photo;
  @JsonKey(name: 'allImages')
  List<String> get allImages;
  @JsonKey(name: 'reserved')
  int get reserved;

  Map<String, dynamic> toJson();
  $AddVehicleResponseModelCopyWith<AddVehicleResponseModel> get copyWith;
}

/// @nodoc
abstract class $AddVehicleResponseModelCopyWith<$Res> {
  factory $AddVehicleResponseModelCopyWith(AddVehicleResponseModel value,
          $Res Function(AddVehicleResponseModel) then) =
      _$AddVehicleResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'step_11')
          bool isLicensePlateSaved,
      @JsonKey(name: 'step_12')
          bool isSpecificationsSaved,
      @JsonKey(name: 'step_13')
          bool isDescriptionSaved,
      @JsonKey(name: 'step_2')
          bool isPhotosSaved,
      @JsonKey(name: 'step_3')
          bool isAccessoriesSaved,
      @JsonKey(name: 'step_4')
          bool isPriceSaved,
      @JsonKey(name: 'licence_plate')
          String licensePlate,
      @JsonKey(name: 'name')
          String stockNumber,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrend,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'body_work_type')
          AddVehicleLookupModel vehicleBodyWork,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'colors')
          AddVehicleLookupModel color,
      @JsonKey(name: 'interior')
          String interior,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'accesories')
          List<AccessoryResponseModel> accessories,
      @JsonKey(name: 'custom_accesories')
          List<CustomAccessoryResponseModel> customAccessories,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'bpm')
          String bpm,
      @JsonKey(name: 'vat')
          String vat,
      @JsonKey(name: 'trading_price')
          String tradePrice,
      @JsonKey(name: 'export_price')
          String exportPrice,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'allImages')
          List<String> allImages,
      @JsonKey(name: 'reserved')
          int reserved});

  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrend;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBodyWork;
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
  $AddVehicleLookupModelCopyWith<$Res> get color;
  $AddVehicleLookupModelCopyWith<$Res> get priceType;
}

/// @nodoc
class _$AddVehicleResponseModelCopyWithImpl<$Res>
    implements $AddVehicleResponseModelCopyWith<$Res> {
  _$AddVehicleResponseModelCopyWithImpl(this._value, this._then);

  final AddVehicleResponseModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleResponseModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object isLicensePlateSaved = freezed,
    Object isSpecificationsSaved = freezed,
    Object isDescriptionSaved = freezed,
    Object isPhotosSaved = freezed,
    Object isAccessoriesSaved = freezed,
    Object isPriceSaved = freezed,
    Object licensePlate = freezed,
    Object stockNumber = freezed,
    Object title = freezed,
    Object description = freezed,
    Object vehicleType = freezed,
    Object vehicleBrend = freezed,
    Object vehicleModel = freezed,
    Object vehicleTransmissionType = freezed,
    Object vehicleBodyWork = freezed,
    Object year = freezed,
    Object fuelType = freezed,
    Object mileage = freezed,
    Object mileageUnit = freezed,
    Object color = freezed,
    Object interior = freezed,
    Object engineSize = freezed,
    Object accessories = freezed,
    Object customAccessories = freezed,
    Object priceType = freezed,
    Object price = freezed,
    Object bpm = freezed,
    Object vat = freezed,
    Object tradePrice = freezed,
    Object exportPrice = freezed,
    Object photo = freezed,
    Object allImages = freezed,
    Object reserved = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      isLicensePlateSaved: isLicensePlateSaved == freezed
          ? _value.isLicensePlateSaved
          : isLicensePlateSaved as bool,
      isSpecificationsSaved: isSpecificationsSaved == freezed
          ? _value.isSpecificationsSaved
          : isSpecificationsSaved as bool,
      isDescriptionSaved: isDescriptionSaved == freezed
          ? _value.isDescriptionSaved
          : isDescriptionSaved as bool,
      isPhotosSaved: isPhotosSaved == freezed
          ? _value.isPhotosSaved
          : isPhotosSaved as bool,
      isAccessoriesSaved: isAccessoriesSaved == freezed
          ? _value.isAccessoriesSaved
          : isAccessoriesSaved as bool,
      isPriceSaved:
          isPriceSaved == freezed ? _value.isPriceSaved : isPriceSaved as bool,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      stockNumber:
          stockNumber == freezed ? _value.stockNumber : stockNumber as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      vehicleBrend: vehicleBrend == freezed
          ? _value.vehicleBrend
          : vehicleBrend as AddVehicleLookupModel,
      vehicleModel: vehicleModel == freezed
          ? _value.vehicleModel
          : vehicleModel as AddVehicleLookupModel,
      vehicleTransmissionType: vehicleTransmissionType == freezed
          ? _value.vehicleTransmissionType
          : vehicleTransmissionType as AddVehicleLookupModel,
      vehicleBodyWork: vehicleBodyWork == freezed
          ? _value.vehicleBodyWork
          : vehicleBodyWork as AddVehicleLookupModel,
      year: year == freezed ? _value.year : year as int,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
      mileage: mileage == freezed ? _value.mileage : mileage as int,
      mileageUnit:
          mileageUnit == freezed ? _value.mileageUnit : mileageUnit as String,
      color: color == freezed ? _value.color : color as AddVehicleLookupModel,
      interior: interior == freezed ? _value.interior : interior as String,
      engineSize: engineSize == freezed ? _value.engineSize : engineSize as int,
      accessories: accessories == freezed
          ? _value.accessories
          : accessories as List<AccessoryResponseModel>,
      customAccessories: customAccessories == freezed
          ? _value.customAccessories
          : customAccessories as List<CustomAccessoryResponseModel>,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType as AddVehicleLookupModel,
      price: price == freezed ? _value.price : price as String,
      bpm: bpm == freezed ? _value.bpm : bpm as String,
      vat: vat == freezed ? _value.vat : vat as String,
      tradePrice:
          tradePrice == freezed ? _value.tradePrice : tradePrice as String,
      exportPrice:
          exportPrice == freezed ? _value.exportPrice : exportPrice as String,
      photo: photo == freezed ? _value.photo : photo as String,
      allImages:
          allImages == freezed ? _value.allImages : allImages as List<String>,
      reserved: reserved == freezed ? _value.reserved : reserved as int,
    ));
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleType {
    if (_value.vehicleType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleType, (value) {
      return _then(_value.copyWith(vehicleType: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrend {
    if (_value.vehicleBrend == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleBrend, (value) {
      return _then(_value.copyWith(vehicleBrend: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel {
    if (_value.vehicleModel == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleModel, (value) {
      return _then(_value.copyWith(vehicleModel: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType {
    if (_value.vehicleTransmissionType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleTransmissionType,
        (value) {
      return _then(_value.copyWith(vehicleTransmissionType: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBodyWork {
    if (_value.vehicleBodyWork == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.vehicleBodyWork,
        (value) {
      return _then(_value.copyWith(vehicleBodyWork: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get fuelType {
    if (_value.fuelType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.fuelType, (value) {
      return _then(_value.copyWith(fuelType: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get color {
    if (_value.color == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }

  @override
  $AddVehicleLookupModelCopyWith<$Res> get priceType {
    if (_value.priceType == null) {
      return null;
    }
    return $AddVehicleLookupModelCopyWith<$Res>(_value.priceType, (value) {
      return _then(_value.copyWith(priceType: value));
    });
  }
}

/// @nodoc
abstract class _$AddVehicleResponseModelCopyWith<$Res>
    implements $AddVehicleResponseModelCopyWith<$Res> {
  factory _$AddVehicleResponseModelCopyWith(_AddVehicleResponseModel value,
          $Res Function(_AddVehicleResponseModel) then) =
      __$AddVehicleResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'step_11')
          bool isLicensePlateSaved,
      @JsonKey(name: 'step_12')
          bool isSpecificationsSaved,
      @JsonKey(name: 'step_13')
          bool isDescriptionSaved,
      @JsonKey(name: 'step_2')
          bool isPhotosSaved,
      @JsonKey(name: 'step_3')
          bool isAccessoriesSaved,
      @JsonKey(name: 'step_4')
          bool isPriceSaved,
      @JsonKey(name: 'licence_plate')
          String licensePlate,
      @JsonKey(name: 'name')
          String stockNumber,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrend,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'body_work_type')
          AddVehicleLookupModel vehicleBodyWork,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'colors')
          AddVehicleLookupModel color,
      @JsonKey(name: 'interior')
          String interior,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'accesories')
          List<AccessoryResponseModel> accessories,
      @JsonKey(name: 'custom_accesories')
          List<CustomAccessoryResponseModel> customAccessories,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'bpm')
          String bpm,
      @JsonKey(name: 'vat')
          String vat,
      @JsonKey(name: 'trading_price')
          String tradePrice,
      @JsonKey(name: 'export_price')
          String exportPrice,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'allImages')
          List<String> allImages,
      @JsonKey(name: 'reserved')
          int reserved});

  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBrend;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleModel;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleTransmissionType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get vehicleBodyWork;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get fuelType;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get color;
  @override
  $AddVehicleLookupModelCopyWith<$Res> get priceType;
}

/// @nodoc
class __$AddVehicleResponseModelCopyWithImpl<$Res>
    extends _$AddVehicleResponseModelCopyWithImpl<$Res>
    implements _$AddVehicleResponseModelCopyWith<$Res> {
  __$AddVehicleResponseModelCopyWithImpl(_AddVehicleResponseModel _value,
      $Res Function(_AddVehicleResponseModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleResponseModel));

  @override
  _AddVehicleResponseModel get _value =>
      super._value as _AddVehicleResponseModel;

  @override
  $Res call({
    Object id = freezed,
    Object isLicensePlateSaved = freezed,
    Object isSpecificationsSaved = freezed,
    Object isDescriptionSaved = freezed,
    Object isPhotosSaved = freezed,
    Object isAccessoriesSaved = freezed,
    Object isPriceSaved = freezed,
    Object licensePlate = freezed,
    Object stockNumber = freezed,
    Object title = freezed,
    Object description = freezed,
    Object vehicleType = freezed,
    Object vehicleBrend = freezed,
    Object vehicleModel = freezed,
    Object vehicleTransmissionType = freezed,
    Object vehicleBodyWork = freezed,
    Object year = freezed,
    Object fuelType = freezed,
    Object mileage = freezed,
    Object mileageUnit = freezed,
    Object color = freezed,
    Object interior = freezed,
    Object engineSize = freezed,
    Object accessories = freezed,
    Object customAccessories = freezed,
    Object priceType = freezed,
    Object price = freezed,
    Object bpm = freezed,
    Object vat = freezed,
    Object tradePrice = freezed,
    Object exportPrice = freezed,
    Object photo = freezed,
    Object allImages = freezed,
    Object reserved = freezed,
  }) {
    return _then(_AddVehicleResponseModel(
      id: id == freezed ? _value.id : id as int,
      isLicensePlateSaved: isLicensePlateSaved == freezed
          ? _value.isLicensePlateSaved
          : isLicensePlateSaved as bool,
      isSpecificationsSaved: isSpecificationsSaved == freezed
          ? _value.isSpecificationsSaved
          : isSpecificationsSaved as bool,
      isDescriptionSaved: isDescriptionSaved == freezed
          ? _value.isDescriptionSaved
          : isDescriptionSaved as bool,
      isPhotosSaved: isPhotosSaved == freezed
          ? _value.isPhotosSaved
          : isPhotosSaved as bool,
      isAccessoriesSaved: isAccessoriesSaved == freezed
          ? _value.isAccessoriesSaved
          : isAccessoriesSaved as bool,
      isPriceSaved:
          isPriceSaved == freezed ? _value.isPriceSaved : isPriceSaved as bool,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      stockNumber:
          stockNumber == freezed ? _value.stockNumber : stockNumber as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType as AddVehicleLookupModel,
      vehicleBrend: vehicleBrend == freezed
          ? _value.vehicleBrend
          : vehicleBrend as AddVehicleLookupModel,
      vehicleModel: vehicleModel == freezed
          ? _value.vehicleModel
          : vehicleModel as AddVehicleLookupModel,
      vehicleTransmissionType: vehicleTransmissionType == freezed
          ? _value.vehicleTransmissionType
          : vehicleTransmissionType as AddVehicleLookupModel,
      vehicleBodyWork: vehicleBodyWork == freezed
          ? _value.vehicleBodyWork
          : vehicleBodyWork as AddVehicleLookupModel,
      year: year == freezed ? _value.year : year as int,
      fuelType: fuelType == freezed
          ? _value.fuelType
          : fuelType as AddVehicleLookupModel,
      mileage: mileage == freezed ? _value.mileage : mileage as int,
      mileageUnit:
          mileageUnit == freezed ? _value.mileageUnit : mileageUnit as String,
      color: color == freezed ? _value.color : color as AddVehicleLookupModel,
      interior: interior == freezed ? _value.interior : interior as String,
      engineSize: engineSize == freezed ? _value.engineSize : engineSize as int,
      accessories: accessories == freezed
          ? _value.accessories
          : accessories as List<AccessoryResponseModel>,
      customAccessories: customAccessories == freezed
          ? _value.customAccessories
          : customAccessories as List<CustomAccessoryResponseModel>,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType as AddVehicleLookupModel,
      price: price == freezed ? _value.price : price as String,
      bpm: bpm == freezed ? _value.bpm : bpm as String,
      vat: vat == freezed ? _value.vat : vat as String,
      tradePrice:
          tradePrice == freezed ? _value.tradePrice : tradePrice as String,
      exportPrice:
          exportPrice == freezed ? _value.exportPrice : exportPrice as String,
      photo: photo == freezed ? _value.photo : photo as String,
      allImages:
          allImages == freezed ? _value.allImages : allImages as List<String>,
      reserved: reserved == freezed ? _value.reserved : reserved as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleResponseModel extends _AddVehicleResponseModel {
  const _$_AddVehicleResponseModel(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'step_11') this.isLicensePlateSaved,
      @required @JsonKey(name: 'step_12') this.isSpecificationsSaved,
      @required @JsonKey(name: 'step_13') this.isDescriptionSaved,
      @required @JsonKey(name: 'step_2') this.isPhotosSaved,
      @required @JsonKey(name: 'step_3') this.isAccessoriesSaved,
      @required @JsonKey(name: 'step_4') this.isPriceSaved,
      @JsonKey(name: 'licence_plate') this.licensePlate,
      @JsonKey(name: 'name') this.stockNumber,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'vehicle_types') this.vehicleType,
      @JsonKey(name: 'brands') this.vehicleBrend,
      @JsonKey(name: 'car_models') this.vehicleModel,
      @JsonKey(name: 'transmission_type') this.vehicleTransmissionType,
      @JsonKey(name: 'body_work_type') this.vehicleBodyWork,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'fuel_type') this.fuelType,
      @JsonKey(name: 'mileage') this.mileage,
      @JsonKey(name: 'mileage_options') this.mileageUnit,
      @JsonKey(name: 'colors') this.color,
      @JsonKey(name: 'interior') this.interior,
      @JsonKey(name: 'engine_size') this.engineSize,
      @JsonKey(name: 'accesories') this.accessories,
      @JsonKey(name: 'custom_accesories') this.customAccessories,
      @JsonKey(name: 'price_type') this.priceType,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'bpm') this.bpm,
      @JsonKey(name: 'vat') this.vat,
      @JsonKey(name: 'trading_price') this.tradePrice,
      @JsonKey(name: 'export_price') this.exportPrice,
      @JsonKey(name: 'photos') this.photo,
      @JsonKey(name: 'allImages') this.allImages,
      @JsonKey(name: 'reserved') this.reserved})
      : assert(id != null),
        assert(isLicensePlateSaved != null),
        assert(isSpecificationsSaved != null),
        assert(isDescriptionSaved != null),
        assert(isPhotosSaved != null),
        assert(isAccessoriesSaved != null),
        assert(isPriceSaved != null),
        super._();

  factory _$_AddVehicleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddVehicleResponseModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'step_11')
  final bool isLicensePlateSaved;
  @override
  @JsonKey(name: 'step_12')
  final bool isSpecificationsSaved;
  @override
  @JsonKey(name: 'step_13')
  final bool isDescriptionSaved;
  @override
  @JsonKey(name: 'step_2')
  final bool isPhotosSaved;
  @override
  @JsonKey(name: 'step_3')
  final bool isAccessoriesSaved;
  @override
  @JsonKey(name: 'step_4')
  final bool isPriceSaved;
  @override
  @JsonKey(name: 'licence_plate')
  final String licensePlate;
  @override
  @JsonKey(name: 'name')
  final String stockNumber;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'vehicle_types')
  final AddVehicleLookupModel vehicleType;
  @override
  @JsonKey(name: 'brands')
  final AddVehicleLookupModel vehicleBrend;
  @override
  @JsonKey(name: 'car_models')
  final AddVehicleLookupModel vehicleModel;
  @override
  @JsonKey(name: 'transmission_type')
  final AddVehicleLookupModel vehicleTransmissionType;
  @override
  @JsonKey(name: 'body_work_type')
  final AddVehicleLookupModel vehicleBodyWork;
  @override
  @JsonKey(name: 'year')
  final int year;
  @override
  @JsonKey(name: 'fuel_type')
  final AddVehicleLookupModel fuelType;
  @override
  @JsonKey(name: 'mileage')
  final int mileage;
  @override
  @JsonKey(name: 'mileage_options')
  final String mileageUnit;
  @override
  @JsonKey(name: 'colors')
  final AddVehicleLookupModel color;
  @override
  @JsonKey(name: 'interior')
  final String interior;
  @override
  @JsonKey(name: 'engine_size')
  final int engineSize;
  @override
  @JsonKey(name: 'accesories')
  final List<AccessoryResponseModel> accessories;
  @override
  @JsonKey(name: 'custom_accesories')
  final List<CustomAccessoryResponseModel> customAccessories;
  @override
  @JsonKey(name: 'price_type')
  final AddVehicleLookupModel priceType;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'bpm')
  final String bpm;
  @override
  @JsonKey(name: 'vat')
  final String vat;
  @override
  @JsonKey(name: 'trading_price')
  final String tradePrice;
  @override
  @JsonKey(name: 'export_price')
  final String exportPrice;
  @override
  @JsonKey(name: 'photos')
  final String photo;
  @override
  @JsonKey(name: 'allImages')
  final List<String> allImages;
  @override
  @JsonKey(name: 'reserved')
  final int reserved;

  @override
  String toString() {
    return 'AddVehicleResponseModel(id: $id, isLicensePlateSaved: $isLicensePlateSaved, isSpecificationsSaved: $isSpecificationsSaved, isDescriptionSaved: $isDescriptionSaved, isPhotosSaved: $isPhotosSaved, isAccessoriesSaved: $isAccessoriesSaved, isPriceSaved: $isPriceSaved, licensePlate: $licensePlate, stockNumber: $stockNumber, title: $title, description: $description, vehicleType: $vehicleType, vehicleBrend: $vehicleBrend, vehicleModel: $vehicleModel, vehicleTransmissionType: $vehicleTransmissionType, vehicleBodyWork: $vehicleBodyWork, year: $year, fuelType: $fuelType, mileage: $mileage, mileageUnit: $mileageUnit, color: $color, interior: $interior, engineSize: $engineSize, accessories: $accessories, customAccessories: $customAccessories, priceType: $priceType, price: $price, bpm: $bpm, vat: $vat, tradePrice: $tradePrice, exportPrice: $exportPrice, photo: $photo, allImages: $allImages, reserved: $reserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isLicensePlateSaved, isLicensePlateSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isLicensePlateSaved, isLicensePlateSaved)) &&
            (identical(other.isSpecificationsSaved, isSpecificationsSaved) ||
                const DeepCollectionEquality().equals(
                    other.isSpecificationsSaved, isSpecificationsSaved)) &&
            (identical(other.isDescriptionSaved, isDescriptionSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isDescriptionSaved, isDescriptionSaved)) &&
            (identical(other.isPhotosSaved, isPhotosSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isPhotosSaved, isPhotosSaved)) &&
            (identical(other.isAccessoriesSaved, isAccessoriesSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isAccessoriesSaved, isAccessoriesSaved)) &&
            (identical(other.isPriceSaved, isPriceSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isPriceSaved, isPriceSaved)) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
            (identical(other.stockNumber, stockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.stockNumber, stockNumber)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.vehicleBrend, vehicleBrend) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleBrend, vehicleBrend)) &&
            (identical(other.vehicleModel, vehicleModel) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleModel, vehicleModel)) &&
            (identical(other.vehicleTransmissionType, vehicleTransmissionType) ||
                const DeepCollectionEquality().equals(
                    other.vehicleTransmissionType, vehicleTransmissionType)) &&
            (identical(other.vehicleBodyWork, vehicleBodyWork) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleBodyWork, vehicleBodyWork)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.fuelType, fuelType) ||
                const DeepCollectionEquality()
                    .equals(other.fuelType, fuelType)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.mileageUnit, mileageUnit) ||
                const DeepCollectionEquality()
                    .equals(other.mileageUnit, mileageUnit)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.interior, interior) ||
                const DeepCollectionEquality()
                    .equals(other.interior, interior)) &&
            (identical(other.engineSize, engineSize) || const DeepCollectionEquality().equals(other.engineSize, engineSize)) &&
            (identical(other.accessories, accessories) || const DeepCollectionEquality().equals(other.accessories, accessories)) &&
            (identical(other.customAccessories, customAccessories) || const DeepCollectionEquality().equals(other.customAccessories, customAccessories)) &&
            (identical(other.priceType, priceType) || const DeepCollectionEquality().equals(other.priceType, priceType)) &&
            (identical(other.price, price) || const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.bpm, bpm) || const DeepCollectionEquality().equals(other.bpm, bpm)) &&
            (identical(other.vat, vat) || const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.tradePrice, tradePrice) || const DeepCollectionEquality().equals(other.tradePrice, tradePrice)) &&
            (identical(other.exportPrice, exportPrice) || const DeepCollectionEquality().equals(other.exportPrice, exportPrice)) &&
            (identical(other.photo, photo) || const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.allImages, allImages) || const DeepCollectionEquality().equals(other.allImages, allImages)) &&
            (identical(other.reserved, reserved) || const DeepCollectionEquality().equals(other.reserved, reserved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isLicensePlateSaved) ^
      const DeepCollectionEquality().hash(isSpecificationsSaved) ^
      const DeepCollectionEquality().hash(isDescriptionSaved) ^
      const DeepCollectionEquality().hash(isPhotosSaved) ^
      const DeepCollectionEquality().hash(isAccessoriesSaved) ^
      const DeepCollectionEquality().hash(isPriceSaved) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(stockNumber) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(vehicleBrend) ^
      const DeepCollectionEquality().hash(vehicleModel) ^
      const DeepCollectionEquality().hash(vehicleTransmissionType) ^
      const DeepCollectionEquality().hash(vehicleBodyWork) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(fuelType) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(mileageUnit) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(interior) ^
      const DeepCollectionEquality().hash(engineSize) ^
      const DeepCollectionEquality().hash(accessories) ^
      const DeepCollectionEquality().hash(customAccessories) ^
      const DeepCollectionEquality().hash(priceType) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(bpm) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(tradePrice) ^
      const DeepCollectionEquality().hash(exportPrice) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(allImages) ^
      const DeepCollectionEquality().hash(reserved);

  @override
  _$AddVehicleResponseModelCopyWith<_AddVehicleResponseModel> get copyWith =>
      __$AddVehicleResponseModelCopyWithImpl<_AddVehicleResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleResponseModelToJson(this);
  }
}

abstract class _AddVehicleResponseModel extends AddVehicleResponseModel {
  const _AddVehicleResponseModel._() : super._();
  const factory _AddVehicleResponseModel(
      {@required
      @JsonKey(name: 'id')
          int id,
      @required
      @JsonKey(name: 'step_11')
          bool isLicensePlateSaved,
      @required
      @JsonKey(name: 'step_12')
          bool isSpecificationsSaved,
      @required
      @JsonKey(name: 'step_13')
          bool isDescriptionSaved,
      @required
      @JsonKey(name: 'step_2')
          bool isPhotosSaved,
      @required
      @JsonKey(name: 'step_3')
          bool isAccessoriesSaved,
      @required
      @JsonKey(name: 'step_4')
          bool isPriceSaved,
      @JsonKey(name: 'licence_plate')
          String licensePlate,
      @JsonKey(name: 'name')
          String stockNumber,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'vehicle_types')
          AddVehicleLookupModel vehicleType,
      @JsonKey(name: 'brands')
          AddVehicleLookupModel vehicleBrend,
      @JsonKey(name: 'car_models')
          AddVehicleLookupModel vehicleModel,
      @JsonKey(name: 'transmission_type')
          AddVehicleLookupModel vehicleTransmissionType,
      @JsonKey(name: 'body_work_type')
          AddVehicleLookupModel vehicleBodyWork,
      @JsonKey(name: 'year')
          int year,
      @JsonKey(name: 'fuel_type')
          AddVehicleLookupModel fuelType,
      @JsonKey(name: 'mileage')
          int mileage,
      @JsonKey(name: 'mileage_options')
          String mileageUnit,
      @JsonKey(name: 'colors')
          AddVehicleLookupModel color,
      @JsonKey(name: 'interior')
          String interior,
      @JsonKey(name: 'engine_size')
          int engineSize,
      @JsonKey(name: 'accesories')
          List<AccessoryResponseModel> accessories,
      @JsonKey(name: 'custom_accesories')
          List<CustomAccessoryResponseModel> customAccessories,
      @JsonKey(name: 'price_type')
          AddVehicleLookupModel priceType,
      @JsonKey(name: 'price')
          String price,
      @JsonKey(name: 'bpm')
          String bpm,
      @JsonKey(name: 'vat')
          String vat,
      @JsonKey(name: 'trading_price')
          String tradePrice,
      @JsonKey(name: 'export_price')
          String exportPrice,
      @JsonKey(name: 'photos')
          String photo,
      @JsonKey(name: 'allImages')
          List<String> allImages,
      @JsonKey(name: 'reserved')
          int reserved}) = _$_AddVehicleResponseModel;

  factory _AddVehicleResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AddVehicleResponseModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'step_11')
  bool get isLicensePlateSaved;
  @override
  @JsonKey(name: 'step_12')
  bool get isSpecificationsSaved;
  @override
  @JsonKey(name: 'step_13')
  bool get isDescriptionSaved;
  @override
  @JsonKey(name: 'step_2')
  bool get isPhotosSaved;
  @override
  @JsonKey(name: 'step_3')
  bool get isAccessoriesSaved;
  @override
  @JsonKey(name: 'step_4')
  bool get isPriceSaved;
  @override
  @JsonKey(name: 'licence_plate')
  String get licensePlate;
  @override
  @JsonKey(name: 'name')
  String get stockNumber;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'vehicle_types')
  AddVehicleLookupModel get vehicleType;
  @override
  @JsonKey(name: 'brands')
  AddVehicleLookupModel get vehicleBrend;
  @override
  @JsonKey(name: 'car_models')
  AddVehicleLookupModel get vehicleModel;
  @override
  @JsonKey(name: 'transmission_type')
  AddVehicleLookupModel get vehicleTransmissionType;
  @override
  @JsonKey(name: 'body_work_type')
  AddVehicleLookupModel get vehicleBodyWork;
  @override
  @JsonKey(name: 'year')
  int get year;
  @override
  @JsonKey(name: 'fuel_type')
  AddVehicleLookupModel get fuelType;
  @override
  @JsonKey(name: 'mileage')
  int get mileage;
  @override
  @JsonKey(name: 'mileage_options')
  String get mileageUnit;
  @override
  @JsonKey(name: 'colors')
  AddVehicleLookupModel get color;
  @override
  @JsonKey(name: 'interior')
  String get interior;
  @override
  @JsonKey(name: 'engine_size')
  int get engineSize;
  @override
  @JsonKey(name: 'accesories')
  List<AccessoryResponseModel> get accessories;
  @override
  @JsonKey(name: 'custom_accesories')
  List<CustomAccessoryResponseModel> get customAccessories;
  @override
  @JsonKey(name: 'price_type')
  AddVehicleLookupModel get priceType;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'bpm')
  String get bpm;
  @override
  @JsonKey(name: 'vat')
  String get vat;
  @override
  @JsonKey(name: 'trading_price')
  String get tradePrice;
  @override
  @JsonKey(name: 'export_price')
  String get exportPrice;
  @override
  @JsonKey(name: 'photos')
  String get photo;
  @override
  @JsonKey(name: 'allImages')
  List<String> get allImages;
  @override
  @JsonKey(name: 'reserved')
  int get reserved;
  @override
  _$AddVehicleResponseModelCopyWith<_AddVehicleResponseModel> get copyWith;
}

AccessoryResponseModel _$AccessoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AccessoryResponseModel.fromJson(json);
}

/// @nodoc
class _$AccessoryResponseModelTearOff {
  const _$AccessoryResponseModelTearOff();

// ignore: unused_element
  _AccessoryResponseModel call(
      {@required @JsonKey(name: 'option_id') int accessoryId}) {
    return _AccessoryResponseModel(
      accessoryId: accessoryId,
    );
  }

// ignore: unused_element
  AccessoryResponseModel fromJson(Map<String, Object> json) {
    return AccessoryResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AccessoryResponseModel = _$AccessoryResponseModelTearOff();

/// @nodoc
mixin _$AccessoryResponseModel {
  @JsonKey(name: 'option_id')
  int get accessoryId;

  Map<String, dynamic> toJson();
  $AccessoryResponseModelCopyWith<AccessoryResponseModel> get copyWith;
}

/// @nodoc
abstract class $AccessoryResponseModelCopyWith<$Res> {
  factory $AccessoryResponseModelCopyWith(AccessoryResponseModel value,
          $Res Function(AccessoryResponseModel) then) =
      _$AccessoryResponseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'option_id') int accessoryId});
}

/// @nodoc
class _$AccessoryResponseModelCopyWithImpl<$Res>
    implements $AccessoryResponseModelCopyWith<$Res> {
  _$AccessoryResponseModelCopyWithImpl(this._value, this._then);

  final AccessoryResponseModel _value;
  // ignore: unused_field
  final $Res Function(AccessoryResponseModel) _then;

  @override
  $Res call({
    Object accessoryId = freezed,
  }) {
    return _then(_value.copyWith(
      accessoryId:
          accessoryId == freezed ? _value.accessoryId : accessoryId as int,
    ));
  }
}

/// @nodoc
abstract class _$AccessoryResponseModelCopyWith<$Res>
    implements $AccessoryResponseModelCopyWith<$Res> {
  factory _$AccessoryResponseModelCopyWith(_AccessoryResponseModel value,
          $Res Function(_AccessoryResponseModel) then) =
      __$AccessoryResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'option_id') int accessoryId});
}

/// @nodoc
class __$AccessoryResponseModelCopyWithImpl<$Res>
    extends _$AccessoryResponseModelCopyWithImpl<$Res>
    implements _$AccessoryResponseModelCopyWith<$Res> {
  __$AccessoryResponseModelCopyWithImpl(_AccessoryResponseModel _value,
      $Res Function(_AccessoryResponseModel) _then)
      : super(_value, (v) => _then(v as _AccessoryResponseModel));

  @override
  _AccessoryResponseModel get _value => super._value as _AccessoryResponseModel;

  @override
  $Res call({
    Object accessoryId = freezed,
  }) {
    return _then(_AccessoryResponseModel(
      accessoryId:
          accessoryId == freezed ? _value.accessoryId : accessoryId as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccessoryResponseModel extends _AccessoryResponseModel {
  const _$_AccessoryResponseModel(
      {@required @JsonKey(name: 'option_id') this.accessoryId})
      : assert(accessoryId != null),
        super._();

  factory _$_AccessoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AccessoryResponseModelFromJson(json);

  @override
  @JsonKey(name: 'option_id')
  final int accessoryId;

  @override
  String toString() {
    return 'AccessoryResponseModel(accessoryId: $accessoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessoryResponseModel &&
            (identical(other.accessoryId, accessoryId) ||
                const DeepCollectionEquality()
                    .equals(other.accessoryId, accessoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessoryId);

  @override
  _$AccessoryResponseModelCopyWith<_AccessoryResponseModel> get copyWith =>
      __$AccessoryResponseModelCopyWithImpl<_AccessoryResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccessoryResponseModelToJson(this);
  }
}

abstract class _AccessoryResponseModel extends AccessoryResponseModel {
  const _AccessoryResponseModel._() : super._();
  const factory _AccessoryResponseModel(
          {@required @JsonKey(name: 'option_id') int accessoryId}) =
      _$_AccessoryResponseModel;

  factory _AccessoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AccessoryResponseModel.fromJson;

  @override
  @JsonKey(name: 'option_id')
  int get accessoryId;
  @override
  _$AccessoryResponseModelCopyWith<_AccessoryResponseModel> get copyWith;
}

CustomAccessoryResponseModel _$CustomAccessoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CustomAccessoryResponseModel.fromJson(json);
}

/// @nodoc
class _$CustomAccessoryResponseModelTearOff {
  const _$CustomAccessoryResponseModelTearOff();

// ignore: unused_element
  _CustomAccessoryResponseModel call(
      {@required @JsonKey(name: 'accessory') String name}) {
    return _CustomAccessoryResponseModel(
      name: name,
    );
  }

// ignore: unused_element
  CustomAccessoryResponseModel fromJson(Map<String, Object> json) {
    return CustomAccessoryResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomAccessoryResponseModel = _$CustomAccessoryResponseModelTearOff();

/// @nodoc
mixin _$CustomAccessoryResponseModel {
  @JsonKey(name: 'accessory')
  String get name;

  Map<String, dynamic> toJson();
  $CustomAccessoryResponseModelCopyWith<CustomAccessoryResponseModel>
      get copyWith;
}

/// @nodoc
abstract class $CustomAccessoryResponseModelCopyWith<$Res> {
  factory $CustomAccessoryResponseModelCopyWith(
          CustomAccessoryResponseModel value,
          $Res Function(CustomAccessoryResponseModel) then) =
      _$CustomAccessoryResponseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'accessory') String name});
}

/// @nodoc
class _$CustomAccessoryResponseModelCopyWithImpl<$Res>
    implements $CustomAccessoryResponseModelCopyWith<$Res> {
  _$CustomAccessoryResponseModelCopyWithImpl(this._value, this._then);

  final CustomAccessoryResponseModel _value;
  // ignore: unused_field
  final $Res Function(CustomAccessoryResponseModel) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$CustomAccessoryResponseModelCopyWith<$Res>
    implements $CustomAccessoryResponseModelCopyWith<$Res> {
  factory _$CustomAccessoryResponseModelCopyWith(
          _CustomAccessoryResponseModel value,
          $Res Function(_CustomAccessoryResponseModel) then) =
      __$CustomAccessoryResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'accessory') String name});
}

/// @nodoc
class __$CustomAccessoryResponseModelCopyWithImpl<$Res>
    extends _$CustomAccessoryResponseModelCopyWithImpl<$Res>
    implements _$CustomAccessoryResponseModelCopyWith<$Res> {
  __$CustomAccessoryResponseModelCopyWithImpl(
      _CustomAccessoryResponseModel _value,
      $Res Function(_CustomAccessoryResponseModel) _then)
      : super(_value, (v) => _then(v as _CustomAccessoryResponseModel));

  @override
  _CustomAccessoryResponseModel get _value =>
      super._value as _CustomAccessoryResponseModel;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_CustomAccessoryResponseModel(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomAccessoryResponseModel extends _CustomAccessoryResponseModel {
  const _$_CustomAccessoryResponseModel(
      {@required @JsonKey(name: 'accessory') this.name})
      : assert(name != null),
        super._();

  factory _$_CustomAccessoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomAccessoryResponseModelFromJson(json);

  @override
  @JsonKey(name: 'accessory')
  final String name;

  @override
  String toString() {
    return 'CustomAccessoryResponseModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomAccessoryResponseModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$CustomAccessoryResponseModelCopyWith<_CustomAccessoryResponseModel>
      get copyWith => __$CustomAccessoryResponseModelCopyWithImpl<
          _CustomAccessoryResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomAccessoryResponseModelToJson(this);
  }
}

abstract class _CustomAccessoryResponseModel
    extends CustomAccessoryResponseModel {
  const _CustomAccessoryResponseModel._() : super._();
  const factory _CustomAccessoryResponseModel(
          {@required @JsonKey(name: 'accessory') String name}) =
      _$_CustomAccessoryResponseModel;

  factory _CustomAccessoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CustomAccessoryResponseModel.fromJson;

  @override
  @JsonKey(name: 'accessory')
  String get name;
  @override
  _$CustomAccessoryResponseModelCopyWith<_CustomAccessoryResponseModel>
      get copyWith;
}
