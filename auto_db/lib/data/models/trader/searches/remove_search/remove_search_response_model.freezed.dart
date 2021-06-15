// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remove_search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RemoveSearchResponseModel _$RemoveSearchResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RemoveSearchResponseModel.fromJson(json);
}

/// @nodoc
class _$RemoveSearchResponseModelTearOff {
  const _$RemoveSearchResponseModelTearOff();

// ignore: unused_element
  _RemoveSearchResponseModel call({@JsonKey(name: 'success') bool success}) {
    return _RemoveSearchResponseModel(
      success: success,
    );
  }

// ignore: unused_element
  RemoveSearchResponseModel fromJson(Map<String, Object> json) {
    return RemoveSearchResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveSearchResponseModel = _$RemoveSearchResponseModelTearOff();

/// @nodoc
mixin _$RemoveSearchResponseModel {
  @JsonKey(name: 'success')
  bool get success;

  Map<String, dynamic> toJson();
  $RemoveSearchResponseModelCopyWith<RemoveSearchResponseModel> get copyWith;
}

/// @nodoc
abstract class $RemoveSearchResponseModelCopyWith<$Res> {
  factory $RemoveSearchResponseModelCopyWith(RemoveSearchResponseModel value,
          $Res Function(RemoveSearchResponseModel) then) =
      _$RemoveSearchResponseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'success') bool success});
}

/// @nodoc
class _$RemoveSearchResponseModelCopyWithImpl<$Res>
    implements $RemoveSearchResponseModelCopyWith<$Res> {
  _$RemoveSearchResponseModelCopyWithImpl(this._value, this._then);

  final RemoveSearchResponseModel _value;
  // ignore: unused_field
  final $Res Function(RemoveSearchResponseModel) _then;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

/// @nodoc
abstract class _$RemoveSearchResponseModelCopyWith<$Res>
    implements $RemoveSearchResponseModelCopyWith<$Res> {
  factory _$RemoveSearchResponseModelCopyWith(_RemoveSearchResponseModel value,
          $Res Function(_RemoveSearchResponseModel) then) =
      __$RemoveSearchResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'success') bool success});
}

/// @nodoc
class __$RemoveSearchResponseModelCopyWithImpl<$Res>
    extends _$RemoveSearchResponseModelCopyWithImpl<$Res>
    implements _$RemoveSearchResponseModelCopyWith<$Res> {
  __$RemoveSearchResponseModelCopyWithImpl(_RemoveSearchResponseModel _value,
      $Res Function(_RemoveSearchResponseModel) _then)
      : super(_value, (v) => _then(v as _RemoveSearchResponseModel));

  @override
  _RemoveSearchResponseModel get _value =>
      super._value as _RemoveSearchResponseModel;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_RemoveSearchResponseModel(
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoveSearchResponseModel extends _RemoveSearchResponseModel {
  const _$_RemoveSearchResponseModel({@JsonKey(name: 'success') this.success})
      : super._();

  factory _$_RemoveSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoveSearchResponseModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;

  @override
  String toString() {
    return 'RemoveSearchResponseModel(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveSearchResponseModel &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @override
  _$RemoveSearchResponseModelCopyWith<_RemoveSearchResponseModel>
      get copyWith =>
          __$RemoveSearchResponseModelCopyWithImpl<_RemoveSearchResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoveSearchResponseModelToJson(this);
  }
}

abstract class _RemoveSearchResponseModel extends RemoveSearchResponseModel {
  const _RemoveSearchResponseModel._() : super._();
  const factory _RemoveSearchResponseModel(
      {@JsonKey(name: 'success') bool success}) = _$_RemoveSearchResponseModel;

  factory _RemoveSearchResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RemoveSearchResponseModel.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  _$RemoveSearchResponseModelCopyWith<_RemoveSearchResponseModel> get copyWith;
}
