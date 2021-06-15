// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vehicle_details_description_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VehicleDetailsDescriptionEventTearOff {
  const _$VehicleDetailsDescriptionEventTearOff();

// ignore: unused_element
  OnCloseTapped onCloseTapped() {
    return const OnCloseTapped();
  }
}

/// @nodoc
// ignore: unused_element
const $VehicleDetailsDescriptionEvent =
    _$VehicleDetailsDescriptionEventTearOff();

/// @nodoc
mixin _$VehicleDetailsDescriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCloseTapped(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCloseTapped(OnCloseTapped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VehicleDetailsDescriptionEventCopyWith<$Res> {
  factory $VehicleDetailsDescriptionEventCopyWith(
          VehicleDetailsDescriptionEvent value,
          $Res Function(VehicleDetailsDescriptionEvent) then) =
      _$VehicleDetailsDescriptionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehicleDetailsDescriptionEventCopyWithImpl<$Res>
    implements $VehicleDetailsDescriptionEventCopyWith<$Res> {
  _$VehicleDetailsDescriptionEventCopyWithImpl(this._value, this._then);

  final VehicleDetailsDescriptionEvent _value;
  // ignore: unused_field
  final $Res Function(VehicleDetailsDescriptionEvent) _then;
}

/// @nodoc
abstract class $OnCloseTappedCopyWith<$Res> {
  factory $OnCloseTappedCopyWith(
          OnCloseTapped value, $Res Function(OnCloseTapped) then) =
      _$OnCloseTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCloseTappedCopyWithImpl<$Res>
    extends _$VehicleDetailsDescriptionEventCopyWithImpl<$Res>
    implements $OnCloseTappedCopyWith<$Res> {
  _$OnCloseTappedCopyWithImpl(
      OnCloseTapped _value, $Res Function(OnCloseTapped) _then)
      : super(_value, (v) => _then(v as OnCloseTapped));

  @override
  OnCloseTapped get _value => super._value as OnCloseTapped;
}

/// @nodoc
class _$OnCloseTapped implements OnCloseTapped {
  const _$OnCloseTapped();

  @override
  String toString() {
    return 'VehicleDetailsDescriptionEvent.onCloseTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCloseTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCloseTapped(),
  }) {
    assert(onCloseTapped != null);
    return onCloseTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCloseTapped != null) {
      return onCloseTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCloseTapped(OnCloseTapped value),
  }) {
    assert(onCloseTapped != null);
    return onCloseTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCloseTapped != null) {
      return onCloseTapped(this);
    }
    return orElse();
  }
}

abstract class OnCloseTapped implements VehicleDetailsDescriptionEvent {
  const factory OnCloseTapped() = _$OnCloseTapped;
}

/// @nodoc
class _$VehicleDetailsDescriptionStateTearOff {
  const _$VehicleDetailsDescriptionStateTearOff();

// ignore: unused_element
  _VehicleDetailsDescriptionState call(
      {String title, String description, bool isSubmitting}) {
    return _VehicleDetailsDescriptionState(
      title: title,
      description: description,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VehicleDetailsDescriptionState =
    _$VehicleDetailsDescriptionStateTearOff();

/// @nodoc
mixin _$VehicleDetailsDescriptionState {
  String get title;
  String get description;
  bool get isSubmitting;

  $VehicleDetailsDescriptionStateCopyWith<VehicleDetailsDescriptionState>
      get copyWith;
}

/// @nodoc
abstract class $VehicleDetailsDescriptionStateCopyWith<$Res> {
  factory $VehicleDetailsDescriptionStateCopyWith(
          VehicleDetailsDescriptionState value,
          $Res Function(VehicleDetailsDescriptionState) then) =
      _$VehicleDetailsDescriptionStateCopyWithImpl<$Res>;
  $Res call({String title, String description, bool isSubmitting});
}

/// @nodoc
class _$VehicleDetailsDescriptionStateCopyWithImpl<$Res>
    implements $VehicleDetailsDescriptionStateCopyWith<$Res> {
  _$VehicleDetailsDescriptionStateCopyWithImpl(this._value, this._then);

  final VehicleDetailsDescriptionState _value;
  // ignore: unused_field
  final $Res Function(VehicleDetailsDescriptionState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$VehicleDetailsDescriptionStateCopyWith<$Res>
    implements $VehicleDetailsDescriptionStateCopyWith<$Res> {
  factory _$VehicleDetailsDescriptionStateCopyWith(
          _VehicleDetailsDescriptionState value,
          $Res Function(_VehicleDetailsDescriptionState) then) =
      __$VehicleDetailsDescriptionStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, bool isSubmitting});
}

/// @nodoc
class __$VehicleDetailsDescriptionStateCopyWithImpl<$Res>
    extends _$VehicleDetailsDescriptionStateCopyWithImpl<$Res>
    implements _$VehicleDetailsDescriptionStateCopyWith<$Res> {
  __$VehicleDetailsDescriptionStateCopyWithImpl(
      _VehicleDetailsDescriptionState _value,
      $Res Function(_VehicleDetailsDescriptionState) _then)
      : super(_value, (v) => _then(v as _VehicleDetailsDescriptionState));

  @override
  _VehicleDetailsDescriptionState get _value =>
      super._value as _VehicleDetailsDescriptionState;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_VehicleDetailsDescriptionState(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_VehicleDetailsDescriptionState
    implements _VehicleDetailsDescriptionState {
  const _$_VehicleDetailsDescriptionState(
      {this.title, this.description, this.isSubmitting});

  @override
  final String title;
  @override
  final String description;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'VehicleDetailsDescriptionState(title: $title, description: $description, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicleDetailsDescriptionState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$VehicleDetailsDescriptionStateCopyWith<_VehicleDetailsDescriptionState>
      get copyWith => __$VehicleDetailsDescriptionStateCopyWithImpl<
          _VehicleDetailsDescriptionState>(this, _$identity);
}

abstract class _VehicleDetailsDescriptionState
    implements VehicleDetailsDescriptionState {
  const factory _VehicleDetailsDescriptionState(
      {String title,
      String description,
      bool isSubmitting}) = _$_VehicleDetailsDescriptionState;

  @override
  String get title;
  @override
  String get description;
  @override
  bool get isSubmitting;
  @override
  _$VehicleDetailsDescriptionStateCopyWith<_VehicleDetailsDescriptionState>
      get copyWith;
}
