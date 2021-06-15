// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_accessories_post_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddVehicleAccessoriesPostBodyModel _$AddVehicleAccessoriesPostBodyModelFromJson(
    Map<String, dynamic> json) {
  return _AddVehicleAccessoriesPostBodyModel.fromJson(json);
}

/// @nodoc
class _$AddVehicleAccessoriesPostBodyModelTearOff {
  const _$AddVehicleAccessoriesPostBodyModelTearOff();

// ignore: unused_element
  _AddVehicleAccessoriesPostBodyModel call(
      {@required @JsonKey(name: 'carId') int id,
      @required @JsonKey(name: 'options') List<int> accessories,
      @required @JsonKey(name: 'custom') List<String> customAccessories}) {
    return _AddVehicleAccessoriesPostBodyModel(
      id: id,
      accessories: accessories,
      customAccessories: customAccessories,
    );
  }

// ignore: unused_element
  AddVehicleAccessoriesPostBodyModel fromJson(Map<String, Object> json) {
    return AddVehicleAccessoriesPostBodyModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleAccessoriesPostBodyModel =
    _$AddVehicleAccessoriesPostBodyModelTearOff();

/// @nodoc
mixin _$AddVehicleAccessoriesPostBodyModel {
  @JsonKey(name: 'carId')
  int get id;
  @JsonKey(name: 'options')
  List<int> get accessories;
  @JsonKey(name: 'custom')
  List<String> get customAccessories;

  Map<String, dynamic> toJson();
  $AddVehicleAccessoriesPostBodyModelCopyWith<
      AddVehicleAccessoriesPostBodyModel> get copyWith;
}

/// @nodoc
abstract class $AddVehicleAccessoriesPostBodyModelCopyWith<$Res> {
  factory $AddVehicleAccessoriesPostBodyModelCopyWith(
          AddVehicleAccessoriesPostBodyModel value,
          $Res Function(AddVehicleAccessoriesPostBodyModel) then) =
      _$AddVehicleAccessoriesPostBodyModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'carId') int id,
      @JsonKey(name: 'options') List<int> accessories,
      @JsonKey(name: 'custom') List<String> customAccessories});
}

/// @nodoc
class _$AddVehicleAccessoriesPostBodyModelCopyWithImpl<$Res>
    implements $AddVehicleAccessoriesPostBodyModelCopyWith<$Res> {
  _$AddVehicleAccessoriesPostBodyModelCopyWithImpl(this._value, this._then);

  final AddVehicleAccessoriesPostBodyModel _value;
  // ignore: unused_field
  final $Res Function(AddVehicleAccessoriesPostBodyModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object accessories = freezed,
    Object customAccessories = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      accessories: accessories == freezed
          ? _value.accessories
          : accessories as List<int>,
      customAccessories: customAccessories == freezed
          ? _value.customAccessories
          : customAccessories as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleAccessoriesPostBodyModelCopyWith<$Res>
    implements $AddVehicleAccessoriesPostBodyModelCopyWith<$Res> {
  factory _$AddVehicleAccessoriesPostBodyModelCopyWith(
          _AddVehicleAccessoriesPostBodyModel value,
          $Res Function(_AddVehicleAccessoriesPostBodyModel) then) =
      __$AddVehicleAccessoriesPostBodyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'carId') int id,
      @JsonKey(name: 'options') List<int> accessories,
      @JsonKey(name: 'custom') List<String> customAccessories});
}

/// @nodoc
class __$AddVehicleAccessoriesPostBodyModelCopyWithImpl<$Res>
    extends _$AddVehicleAccessoriesPostBodyModelCopyWithImpl<$Res>
    implements _$AddVehicleAccessoriesPostBodyModelCopyWith<$Res> {
  __$AddVehicleAccessoriesPostBodyModelCopyWithImpl(
      _AddVehicleAccessoriesPostBodyModel _value,
      $Res Function(_AddVehicleAccessoriesPostBodyModel) _then)
      : super(_value, (v) => _then(v as _AddVehicleAccessoriesPostBodyModel));

  @override
  _AddVehicleAccessoriesPostBodyModel get _value =>
      super._value as _AddVehicleAccessoriesPostBodyModel;

  @override
  $Res call({
    Object id = freezed,
    Object accessories = freezed,
    Object customAccessories = freezed,
  }) {
    return _then(_AddVehicleAccessoriesPostBodyModel(
      id: id == freezed ? _value.id : id as int,
      accessories: accessories == freezed
          ? _value.accessories
          : accessories as List<int>,
      customAccessories: customAccessories == freezed
          ? _value.customAccessories
          : customAccessories as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddVehicleAccessoriesPostBodyModel
    extends _AddVehicleAccessoriesPostBodyModel {
  const _$_AddVehicleAccessoriesPostBodyModel(
      {@required @JsonKey(name: 'carId') this.id,
      @required @JsonKey(name: 'options') this.accessories,
      @required @JsonKey(name: 'custom') this.customAccessories})
      : assert(id != null),
        assert(accessories != null),
        assert(customAccessories != null),
        super._();

  factory _$_AddVehicleAccessoriesPostBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AddVehicleAccessoriesPostBodyModelFromJson(json);

  @override
  @JsonKey(name: 'carId')
  final int id;
  @override
  @JsonKey(name: 'options')
  final List<int> accessories;
  @override
  @JsonKey(name: 'custom')
  final List<String> customAccessories;

  @override
  String toString() {
    return 'AddVehicleAccessoriesPostBodyModel(id: $id, accessories: $accessories, customAccessories: $customAccessories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleAccessoriesPostBodyModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accessories, accessories) ||
                const DeepCollectionEquality()
                    .equals(other.accessories, accessories)) &&
            (identical(other.customAccessories, customAccessories) ||
                const DeepCollectionEquality()
                    .equals(other.customAccessories, customAccessories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accessories) ^
      const DeepCollectionEquality().hash(customAccessories);

  @override
  _$AddVehicleAccessoriesPostBodyModelCopyWith<
          _AddVehicleAccessoriesPostBodyModel>
      get copyWith => __$AddVehicleAccessoriesPostBodyModelCopyWithImpl<
          _AddVehicleAccessoriesPostBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddVehicleAccessoriesPostBodyModelToJson(this);
  }
}

abstract class _AddVehicleAccessoriesPostBodyModel
    extends AddVehicleAccessoriesPostBodyModel {
  const _AddVehicleAccessoriesPostBodyModel._() : super._();
  const factory _AddVehicleAccessoriesPostBodyModel(
          {@required @JsonKey(name: 'carId') int id,
          @required @JsonKey(name: 'options') List<int> accessories,
          @required @JsonKey(name: 'custom') List<String> customAccessories}) =
      _$_AddVehicleAccessoriesPostBodyModel;

  factory _AddVehicleAccessoriesPostBodyModel.fromJson(
          Map<String, dynamic> json) =
      _$_AddVehicleAccessoriesPostBodyModel.fromJson;

  @override
  @JsonKey(name: 'carId')
  int get id;
  @override
  @JsonKey(name: 'options')
  List<int> get accessories;
  @override
  @JsonKey(name: 'custom')
  List<String> get customAccessories;
  @override
  _$AddVehicleAccessoriesPostBodyModelCopyWith<
      _AddVehicleAccessoriesPostBodyModel> get copyWith;
}
