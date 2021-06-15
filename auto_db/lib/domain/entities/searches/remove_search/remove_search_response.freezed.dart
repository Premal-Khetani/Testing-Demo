// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remove_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RemoveSearchResponseTearOff {
  const _$RemoveSearchResponseTearOff();

// ignore: unused_element
  _RemoveSearchResponse call({@required bool success}) {
    return _RemoveSearchResponse(
      success: success,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveSearchResponse = _$RemoveSearchResponseTearOff();

/// @nodoc
mixin _$RemoveSearchResponse {
  bool get success;

  $RemoveSearchResponseCopyWith<RemoveSearchResponse> get copyWith;
}

/// @nodoc
abstract class $RemoveSearchResponseCopyWith<$Res> {
  factory $RemoveSearchResponseCopyWith(RemoveSearchResponse value,
          $Res Function(RemoveSearchResponse) then) =
      _$RemoveSearchResponseCopyWithImpl<$Res>;
  $Res call({bool success});
}

/// @nodoc
class _$RemoveSearchResponseCopyWithImpl<$Res>
    implements $RemoveSearchResponseCopyWith<$Res> {
  _$RemoveSearchResponseCopyWithImpl(this._value, this._then);

  final RemoveSearchResponse _value;
  // ignore: unused_field
  final $Res Function(RemoveSearchResponse) _then;

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
abstract class _$RemoveSearchResponseCopyWith<$Res>
    implements $RemoveSearchResponseCopyWith<$Res> {
  factory _$RemoveSearchResponseCopyWith(_RemoveSearchResponse value,
          $Res Function(_RemoveSearchResponse) then) =
      __$RemoveSearchResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success});
}

/// @nodoc
class __$RemoveSearchResponseCopyWithImpl<$Res>
    extends _$RemoveSearchResponseCopyWithImpl<$Res>
    implements _$RemoveSearchResponseCopyWith<$Res> {
  __$RemoveSearchResponseCopyWithImpl(
      _RemoveSearchResponse _value, $Res Function(_RemoveSearchResponse) _then)
      : super(_value, (v) => _then(v as _RemoveSearchResponse));

  @override
  _RemoveSearchResponse get _value => super._value as _RemoveSearchResponse;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_RemoveSearchResponse(
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

/// @nodoc
class _$_RemoveSearchResponse implements _RemoveSearchResponse {
  const _$_RemoveSearchResponse({@required this.success})
      : assert(success != null);

  @override
  final bool success;

  @override
  String toString() {
    return 'RemoveSearchResponse(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveSearchResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @override
  _$RemoveSearchResponseCopyWith<_RemoveSearchResponse> get copyWith =>
      __$RemoveSearchResponseCopyWithImpl<_RemoveSearchResponse>(
          this, _$identity);
}

abstract class _RemoveSearchResponse implements RemoveSearchResponse {
  const factory _RemoveSearchResponse({@required bool success}) =
      _$_RemoveSearchResponse;

  @override
  bool get success;
  @override
  _$RemoveSearchResponseCopyWith<_RemoveSearchResponse> get copyWith;
}
