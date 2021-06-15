// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_accessories_post_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehicleAccessoriesPostBodyTearOff {
  const _$AddVehicleAccessoriesPostBodyTearOff();

// ignore: unused_element
  _AddVehicleAccessoriesPostBody call(
      {@required int id,
      @required List<int> accessories,
      @required List<String> customAccessories}) {
    return _AddVehicleAccessoriesPostBody(
      id: id,
      accessories: accessories,
      customAccessories: customAccessories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleAccessoriesPostBody = _$AddVehicleAccessoriesPostBodyTearOff();

/// @nodoc
mixin _$AddVehicleAccessoriesPostBody {
  int get id;
  List<int> get accessories;
  List<String> get customAccessories;

  $AddVehicleAccessoriesPostBodyCopyWith<AddVehicleAccessoriesPostBody>
      get copyWith;
}

/// @nodoc
abstract class $AddVehicleAccessoriesPostBodyCopyWith<$Res> {
  factory $AddVehicleAccessoriesPostBodyCopyWith(
          AddVehicleAccessoriesPostBody value,
          $Res Function(AddVehicleAccessoriesPostBody) then) =
      _$AddVehicleAccessoriesPostBodyCopyWithImpl<$Res>;
  $Res call({int id, List<int> accessories, List<String> customAccessories});
}

/// @nodoc
class _$AddVehicleAccessoriesPostBodyCopyWithImpl<$Res>
    implements $AddVehicleAccessoriesPostBodyCopyWith<$Res> {
  _$AddVehicleAccessoriesPostBodyCopyWithImpl(this._value, this._then);

  final AddVehicleAccessoriesPostBody _value;
  // ignore: unused_field
  final $Res Function(AddVehicleAccessoriesPostBody) _then;

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
abstract class _$AddVehicleAccessoriesPostBodyCopyWith<$Res>
    implements $AddVehicleAccessoriesPostBodyCopyWith<$Res> {
  factory _$AddVehicleAccessoriesPostBodyCopyWith(
          _AddVehicleAccessoriesPostBody value,
          $Res Function(_AddVehicleAccessoriesPostBody) then) =
      __$AddVehicleAccessoriesPostBodyCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<int> accessories, List<String> customAccessories});
}

/// @nodoc
class __$AddVehicleAccessoriesPostBodyCopyWithImpl<$Res>
    extends _$AddVehicleAccessoriesPostBodyCopyWithImpl<$Res>
    implements _$AddVehicleAccessoriesPostBodyCopyWith<$Res> {
  __$AddVehicleAccessoriesPostBodyCopyWithImpl(
      _AddVehicleAccessoriesPostBody _value,
      $Res Function(_AddVehicleAccessoriesPostBody) _then)
      : super(_value, (v) => _then(v as _AddVehicleAccessoriesPostBody));

  @override
  _AddVehicleAccessoriesPostBody get _value =>
      super._value as _AddVehicleAccessoriesPostBody;

  @override
  $Res call({
    Object id = freezed,
    Object accessories = freezed,
    Object customAccessories = freezed,
  }) {
    return _then(_AddVehicleAccessoriesPostBody(
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
class _$_AddVehicleAccessoriesPostBody
    implements _AddVehicleAccessoriesPostBody {
  const _$_AddVehicleAccessoriesPostBody(
      {@required this.id,
      @required this.accessories,
      @required this.customAccessories})
      : assert(id != null),
        assert(accessories != null),
        assert(customAccessories != null);

  @override
  final int id;
  @override
  final List<int> accessories;
  @override
  final List<String> customAccessories;

  @override
  String toString() {
    return 'AddVehicleAccessoriesPostBody(id: $id, accessories: $accessories, customAccessories: $customAccessories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleAccessoriesPostBody &&
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
  _$AddVehicleAccessoriesPostBodyCopyWith<_AddVehicleAccessoriesPostBody>
      get copyWith => __$AddVehicleAccessoriesPostBodyCopyWithImpl<
          _AddVehicleAccessoriesPostBody>(this, _$identity);
}

abstract class _AddVehicleAccessoriesPostBody
    implements AddVehicleAccessoriesPostBody {
  const factory _AddVehicleAccessoriesPostBody(
          {@required int id,
          @required List<int> accessories,
          @required List<String> customAccessories}) =
      _$_AddVehicleAccessoriesPostBody;

  @override
  int get id;
  @override
  List<int> get accessories;
  @override
  List<String> get customAccessories;
  @override
  _$AddVehicleAccessoriesPostBodyCopyWith<_AddVehicleAccessoriesPostBody>
      get copyWith;
}
