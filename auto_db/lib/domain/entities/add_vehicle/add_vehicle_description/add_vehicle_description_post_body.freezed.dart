// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_vehicle_description_post_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVehicleDescriptionPostBodyTearOff {
  const _$AddVehicleDescriptionPostBodyTearOff();

// ignore: unused_element
  _AddVehicleDescriptionPostBody call(
      {@required int id,
      @required String title,
      @required String description}) {
    return _AddVehicleDescriptionPostBody(
      id: id,
      title: title,
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVehicleDescriptionPostBody = _$AddVehicleDescriptionPostBodyTearOff();

/// @nodoc
mixin _$AddVehicleDescriptionPostBody {
  int get id;
  String get title;
  String get description;

  $AddVehicleDescriptionPostBodyCopyWith<AddVehicleDescriptionPostBody>
      get copyWith;
}

/// @nodoc
abstract class $AddVehicleDescriptionPostBodyCopyWith<$Res> {
  factory $AddVehicleDescriptionPostBodyCopyWith(
          AddVehicleDescriptionPostBody value,
          $Res Function(AddVehicleDescriptionPostBody) then) =
      _$AddVehicleDescriptionPostBodyCopyWithImpl<$Res>;
  $Res call({int id, String title, String description});
}

/// @nodoc
class _$AddVehicleDescriptionPostBodyCopyWithImpl<$Res>
    implements $AddVehicleDescriptionPostBodyCopyWith<$Res> {
  _$AddVehicleDescriptionPostBodyCopyWithImpl(this._value, this._then);

  final AddVehicleDescriptionPostBody _value;
  // ignore: unused_field
  final $Res Function(AddVehicleDescriptionPostBody) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$AddVehicleDescriptionPostBodyCopyWith<$Res>
    implements $AddVehicleDescriptionPostBodyCopyWith<$Res> {
  factory _$AddVehicleDescriptionPostBodyCopyWith(
          _AddVehicleDescriptionPostBody value,
          $Res Function(_AddVehicleDescriptionPostBody) then) =
      __$AddVehicleDescriptionPostBodyCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String description});
}

/// @nodoc
class __$AddVehicleDescriptionPostBodyCopyWithImpl<$Res>
    extends _$AddVehicleDescriptionPostBodyCopyWithImpl<$Res>
    implements _$AddVehicleDescriptionPostBodyCopyWith<$Res> {
  __$AddVehicleDescriptionPostBodyCopyWithImpl(
      _AddVehicleDescriptionPostBody _value,
      $Res Function(_AddVehicleDescriptionPostBody) _then)
      : super(_value, (v) => _then(v as _AddVehicleDescriptionPostBody));

  @override
  _AddVehicleDescriptionPostBody get _value =>
      super._value as _AddVehicleDescriptionPostBody;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_AddVehicleDescriptionPostBody(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_AddVehicleDescriptionPostBody
    implements _AddVehicleDescriptionPostBody {
  const _$_AddVehicleDescriptionPostBody(
      {@required this.id, @required this.title, @required this.description})
      : assert(id != null),
        assert(title != null),
        assert(description != null);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AddVehicleDescriptionPostBody(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddVehicleDescriptionPostBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$AddVehicleDescriptionPostBodyCopyWith<_AddVehicleDescriptionPostBody>
      get copyWith => __$AddVehicleDescriptionPostBodyCopyWithImpl<
          _AddVehicleDescriptionPostBody>(this, _$identity);
}

abstract class _AddVehicleDescriptionPostBody
    implements AddVehicleDescriptionPostBody {
  const factory _AddVehicleDescriptionPostBody(
      {@required int id,
      @required String title,
      @required String description}) = _$_AddVehicleDescriptionPostBody;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  _$AddVehicleDescriptionPostBodyCopyWith<_AddVehicleDescriptionPostBody>
      get copyWith;
}
