// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'delete_vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeleteVehicleEventTearOff {
  const _$DeleteVehicleEventTearOff();

// ignore: unused_element
  OnCancelTapped onCancelTapped() {
    return const OnCancelTapped();
  }

// ignore: unused_element
  OnRemoveVehicleTapped onRemoveVehicleTapped() {
    return const OnRemoveVehicleTapped();
  }
}

/// @nodoc
// ignore: unused_element
const $DeleteVehicleEvent = _$DeleteVehicleEventTearOff();

/// @nodoc
mixin _$DeleteVehicleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCancelTapped(),
    @required TResult onRemoveVehicleTapped(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCancelTapped(),
    TResult onRemoveVehicleTapped(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCancelTapped(OnCancelTapped value),
    @required TResult onRemoveVehicleTapped(OnRemoveVehicleTapped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCancelTapped(OnCancelTapped value),
    TResult onRemoveVehicleTapped(OnRemoveVehicleTapped value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DeleteVehicleEventCopyWith<$Res> {
  factory $DeleteVehicleEventCopyWith(
          DeleteVehicleEvent value, $Res Function(DeleteVehicleEvent) then) =
      _$DeleteVehicleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteVehicleEventCopyWithImpl<$Res>
    implements $DeleteVehicleEventCopyWith<$Res> {
  _$DeleteVehicleEventCopyWithImpl(this._value, this._then);

  final DeleteVehicleEvent _value;
  // ignore: unused_field
  final $Res Function(DeleteVehicleEvent) _then;
}

/// @nodoc
abstract class $OnCancelTappedCopyWith<$Res> {
  factory $OnCancelTappedCopyWith(
          OnCancelTapped value, $Res Function(OnCancelTapped) then) =
      _$OnCancelTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCancelTappedCopyWithImpl<$Res>
    extends _$DeleteVehicleEventCopyWithImpl<$Res>
    implements $OnCancelTappedCopyWith<$Res> {
  _$OnCancelTappedCopyWithImpl(
      OnCancelTapped _value, $Res Function(OnCancelTapped) _then)
      : super(_value, (v) => _then(v as OnCancelTapped));

  @override
  OnCancelTapped get _value => super._value as OnCancelTapped;
}

/// @nodoc
class _$OnCancelTapped implements OnCancelTapped {
  const _$OnCancelTapped();

  @override
  String toString() {
    return 'DeleteVehicleEvent.onCancelTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCancelTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCancelTapped(),
    @required TResult onRemoveVehicleTapped(),
  }) {
    assert(onCancelTapped != null);
    assert(onRemoveVehicleTapped != null);
    return onCancelTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCancelTapped(),
    TResult onRemoveVehicleTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCancelTapped != null) {
      return onCancelTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCancelTapped(OnCancelTapped value),
    @required TResult onRemoveVehicleTapped(OnRemoveVehicleTapped value),
  }) {
    assert(onCancelTapped != null);
    assert(onRemoveVehicleTapped != null);
    return onCancelTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCancelTapped(OnCancelTapped value),
    TResult onRemoveVehicleTapped(OnRemoveVehicleTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCancelTapped != null) {
      return onCancelTapped(this);
    }
    return orElse();
  }
}

abstract class OnCancelTapped implements DeleteVehicleEvent {
  const factory OnCancelTapped() = _$OnCancelTapped;
}

/// @nodoc
abstract class $OnRemoveVehicleTappedCopyWith<$Res> {
  factory $OnRemoveVehicleTappedCopyWith(OnRemoveVehicleTapped value,
          $Res Function(OnRemoveVehicleTapped) then) =
      _$OnRemoveVehicleTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRemoveVehicleTappedCopyWithImpl<$Res>
    extends _$DeleteVehicleEventCopyWithImpl<$Res>
    implements $OnRemoveVehicleTappedCopyWith<$Res> {
  _$OnRemoveVehicleTappedCopyWithImpl(
      OnRemoveVehicleTapped _value, $Res Function(OnRemoveVehicleTapped) _then)
      : super(_value, (v) => _then(v as OnRemoveVehicleTapped));

  @override
  OnRemoveVehicleTapped get _value => super._value as OnRemoveVehicleTapped;
}

/// @nodoc
class _$OnRemoveVehicleTapped implements OnRemoveVehicleTapped {
  const _$OnRemoveVehicleTapped();

  @override
  String toString() {
    return 'DeleteVehicleEvent.onRemoveVehicleTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRemoveVehicleTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCancelTapped(),
    @required TResult onRemoveVehicleTapped(),
  }) {
    assert(onCancelTapped != null);
    assert(onRemoveVehicleTapped != null);
    return onRemoveVehicleTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCancelTapped(),
    TResult onRemoveVehicleTapped(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRemoveVehicleTapped != null) {
      return onRemoveVehicleTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCancelTapped(OnCancelTapped value),
    @required TResult onRemoveVehicleTapped(OnRemoveVehicleTapped value),
  }) {
    assert(onCancelTapped != null);
    assert(onRemoveVehicleTapped != null);
    return onRemoveVehicleTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCancelTapped(OnCancelTapped value),
    TResult onRemoveVehicleTapped(OnRemoveVehicleTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRemoveVehicleTapped != null) {
      return onRemoveVehicleTapped(this);
    }
    return orElse();
  }
}

abstract class OnRemoveVehicleTapped implements DeleteVehicleEvent {
  const factory OnRemoveVehicleTapped() = _$OnRemoveVehicleTapped;
}

/// @nodoc
class _$DeleteVehicleStateTearOff {
  const _$DeleteVehicleStateTearOff();

// ignore: unused_element
  _DeleteVehicleState call(
      {@required String image,
      String licensePlate,
      String stockNumber,
      @required String price,
      @required String year,
      @required String mileage,
      @required String fuel,
      @required String engine,
      @required String transmission,
      @required String power,
      @required bool isReserved,
      @required bool isSubmitting}) {
    return _DeleteVehicleState(
      image: image,
      licensePlate: licensePlate,
      stockNumber: stockNumber,
      price: price,
      year: year,
      mileage: mileage,
      fuel: fuel,
      engine: engine,
      transmission: transmission,
      power: power,
      isReserved: isReserved,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeleteVehicleState = _$DeleteVehicleStateTearOff();

/// @nodoc
mixin _$DeleteVehicleState {
  String get image;
  String get licensePlate;
  String get stockNumber;
  String get price;
  String get year;
  String get mileage;
  String get fuel;
  String get engine;
  String get transmission;
  String get power;
  bool get isReserved;
  bool get isSubmitting;

  $DeleteVehicleStateCopyWith<DeleteVehicleState> get copyWith;
}

/// @nodoc
abstract class $DeleteVehicleStateCopyWith<$Res> {
  factory $DeleteVehicleStateCopyWith(
          DeleteVehicleState value, $Res Function(DeleteVehicleState) then) =
      _$DeleteVehicleStateCopyWithImpl<$Res>;
  $Res call(
      {String image,
      String licensePlate,
      String stockNumber,
      String price,
      String year,
      String mileage,
      String fuel,
      String engine,
      String transmission,
      String power,
      bool isReserved,
      bool isSubmitting});
}

/// @nodoc
class _$DeleteVehicleStateCopyWithImpl<$Res>
    implements $DeleteVehicleStateCopyWith<$Res> {
  _$DeleteVehicleStateCopyWithImpl(this._value, this._then);

  final DeleteVehicleState _value;
  // ignore: unused_field
  final $Res Function(DeleteVehicleState) _then;

  @override
  $Res call({
    Object image = freezed,
    Object licensePlate = freezed,
    Object stockNumber = freezed,
    Object price = freezed,
    Object year = freezed,
    Object mileage = freezed,
    Object fuel = freezed,
    Object engine = freezed,
    Object transmission = freezed,
    Object power = freezed,
    Object isReserved = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as String,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      stockNumber:
          stockNumber == freezed ? _value.stockNumber : stockNumber as String,
      price: price == freezed ? _value.price : price as String,
      year: year == freezed ? _value.year : year as String,
      mileage: mileage == freezed ? _value.mileage : mileage as String,
      fuel: fuel == freezed ? _value.fuel : fuel as String,
      engine: engine == freezed ? _value.engine : engine as String,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission as String,
      power: power == freezed ? _value.power : power as String,
      isReserved:
          isReserved == freezed ? _value.isReserved : isReserved as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$DeleteVehicleStateCopyWith<$Res>
    implements $DeleteVehicleStateCopyWith<$Res> {
  factory _$DeleteVehicleStateCopyWith(
          _DeleteVehicleState value, $Res Function(_DeleteVehicleState) then) =
      __$DeleteVehicleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      String licensePlate,
      String stockNumber,
      String price,
      String year,
      String mileage,
      String fuel,
      String engine,
      String transmission,
      String power,
      bool isReserved,
      bool isSubmitting});
}

/// @nodoc
class __$DeleteVehicleStateCopyWithImpl<$Res>
    extends _$DeleteVehicleStateCopyWithImpl<$Res>
    implements _$DeleteVehicleStateCopyWith<$Res> {
  __$DeleteVehicleStateCopyWithImpl(
      _DeleteVehicleState _value, $Res Function(_DeleteVehicleState) _then)
      : super(_value, (v) => _then(v as _DeleteVehicleState));

  @override
  _DeleteVehicleState get _value => super._value as _DeleteVehicleState;

  @override
  $Res call({
    Object image = freezed,
    Object licensePlate = freezed,
    Object stockNumber = freezed,
    Object price = freezed,
    Object year = freezed,
    Object mileage = freezed,
    Object fuel = freezed,
    Object engine = freezed,
    Object transmission = freezed,
    Object power = freezed,
    Object isReserved = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_DeleteVehicleState(
      image: image == freezed ? _value.image : image as String,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      stockNumber:
          stockNumber == freezed ? _value.stockNumber : stockNumber as String,
      price: price == freezed ? _value.price : price as String,
      year: year == freezed ? _value.year : year as String,
      mileage: mileage == freezed ? _value.mileage : mileage as String,
      fuel: fuel == freezed ? _value.fuel : fuel as String,
      engine: engine == freezed ? _value.engine : engine as String,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission as String,
      power: power == freezed ? _value.power : power as String,
      isReserved:
          isReserved == freezed ? _value.isReserved : isReserved as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_DeleteVehicleState implements _DeleteVehicleState {
  const _$_DeleteVehicleState(
      {@required this.image,
      this.licensePlate,
      this.stockNumber,
      @required this.price,
      @required this.year,
      @required this.mileage,
      @required this.fuel,
      @required this.engine,
      @required this.transmission,
      @required this.power,
      @required this.isReserved,
      @required this.isSubmitting})
      : assert(image != null),
        assert(price != null),
        assert(year != null),
        assert(mileage != null),
        assert(fuel != null),
        assert(engine != null),
        assert(transmission != null),
        assert(power != null),
        assert(isReserved != null),
        assert(isSubmitting != null);

  @override
  final String image;
  @override
  final String licensePlate;
  @override
  final String stockNumber;
  @override
  final String price;
  @override
  final String year;
  @override
  final String mileage;
  @override
  final String fuel;
  @override
  final String engine;
  @override
  final String transmission;
  @override
  final String power;
  @override
  final bool isReserved;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'DeleteVehicleState(image: $image, licensePlate: $licensePlate, stockNumber: $stockNumber, price: $price, year: $year, mileage: $mileage, fuel: $fuel, engine: $engine, transmission: $transmission, power: $power, isReserved: $isReserved, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteVehicleState &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
            (identical(other.stockNumber, stockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.stockNumber, stockNumber)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.fuel, fuel) ||
                const DeepCollectionEquality().equals(other.fuel, fuel)) &&
            (identical(other.engine, engine) ||
                const DeepCollectionEquality().equals(other.engine, engine)) &&
            (identical(other.transmission, transmission) ||
                const DeepCollectionEquality()
                    .equals(other.transmission, transmission)) &&
            (identical(other.power, power) ||
                const DeepCollectionEquality().equals(other.power, power)) &&
            (identical(other.isReserved, isReserved) ||
                const DeepCollectionEquality()
                    .equals(other.isReserved, isReserved)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(stockNumber) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(fuel) ^
      const DeepCollectionEquality().hash(engine) ^
      const DeepCollectionEquality().hash(transmission) ^
      const DeepCollectionEquality().hash(power) ^
      const DeepCollectionEquality().hash(isReserved) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$DeleteVehicleStateCopyWith<_DeleteVehicleState> get copyWith =>
      __$DeleteVehicleStateCopyWithImpl<_DeleteVehicleState>(this, _$identity);
}

abstract class _DeleteVehicleState implements DeleteVehicleState {
  const factory _DeleteVehicleState(
      {@required String image,
      String licensePlate,
      String stockNumber,
      @required String price,
      @required String year,
      @required String mileage,
      @required String fuel,
      @required String engine,
      @required String transmission,
      @required String power,
      @required bool isReserved,
      @required bool isSubmitting}) = _$_DeleteVehicleState;

  @override
  String get image;
  @override
  String get licensePlate;
  @override
  String get stockNumber;
  @override
  String get price;
  @override
  String get year;
  @override
  String get mileage;
  @override
  String get fuel;
  @override
  String get engine;
  @override
  String get transmission;
  @override
  String get power;
  @override
  bool get isReserved;
  @override
  bool get isSubmitting;
  @override
  _$DeleteVehicleStateCopyWith<_DeleteVehicleState> get copyWith;
}
