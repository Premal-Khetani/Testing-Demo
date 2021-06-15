// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rdw_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RDWPostRequestTearOff {
  const _$RDWPostRequestTearOff();

// ignore: unused_element
  _RDWPostRequest call({@required String licensePlate}) {
    return _RDWPostRequest(
      licensePlate: licensePlate,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RDWPostRequest = _$RDWPostRequestTearOff();

/// @nodoc
mixin _$RDWPostRequest {
  String get licensePlate;

  $RDWPostRequestCopyWith<RDWPostRequest> get copyWith;
}

/// @nodoc
abstract class $RDWPostRequestCopyWith<$Res> {
  factory $RDWPostRequestCopyWith(
          RDWPostRequest value, $Res Function(RDWPostRequest) then) =
      _$RDWPostRequestCopyWithImpl<$Res>;
  $Res call({String licensePlate});
}

/// @nodoc
class _$RDWPostRequestCopyWithImpl<$Res>
    implements $RDWPostRequestCopyWith<$Res> {
  _$RDWPostRequestCopyWithImpl(this._value, this._then);

  final RDWPostRequest _value;
  // ignore: unused_field
  final $Res Function(RDWPostRequest) _then;

  @override
  $Res call({
    Object licensePlate = freezed,
  }) {
    return _then(_value.copyWith(
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
    ));
  }
}

/// @nodoc
abstract class _$RDWPostRequestCopyWith<$Res>
    implements $RDWPostRequestCopyWith<$Res> {
  factory _$RDWPostRequestCopyWith(
          _RDWPostRequest value, $Res Function(_RDWPostRequest) then) =
      __$RDWPostRequestCopyWithImpl<$Res>;
  @override
  $Res call({String licensePlate});
}

/// @nodoc
class __$RDWPostRequestCopyWithImpl<$Res>
    extends _$RDWPostRequestCopyWithImpl<$Res>
    implements _$RDWPostRequestCopyWith<$Res> {
  __$RDWPostRequestCopyWithImpl(
      _RDWPostRequest _value, $Res Function(_RDWPostRequest) _then)
      : super(_value, (v) => _then(v as _RDWPostRequest));

  @override
  _RDWPostRequest get _value => super._value as _RDWPostRequest;

  @override
  $Res call({
    Object licensePlate = freezed,
  }) {
    return _then(_RDWPostRequest(
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
    ));
  }
}

/// @nodoc
class _$_RDWPostRequest implements _RDWPostRequest {
  const _$_RDWPostRequest({@required this.licensePlate})
      : assert(licensePlate != null);

  @override
  final String licensePlate;

  @override
  String toString() {
    return 'RDWPostRequest(licensePlate: $licensePlate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RDWPostRequest &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(licensePlate);

  @override
  _$RDWPostRequestCopyWith<_RDWPostRequest> get copyWith =>
      __$RDWPostRequestCopyWithImpl<_RDWPostRequest>(this, _$identity);
}

abstract class _RDWPostRequest implements RDWPostRequest {
  const factory _RDWPostRequest({@required String licensePlate}) =
      _$_RDWPostRequest;

  @override
  String get licensePlate;
  @override
  _$RDWPostRequestCopyWith<_RDWPostRequest> get copyWith;
}
