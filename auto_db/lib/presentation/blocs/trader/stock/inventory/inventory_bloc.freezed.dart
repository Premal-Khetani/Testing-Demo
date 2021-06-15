// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InventoryEventTearOff {
  const _$InventoryEventTearOff();

// ignore: unused_element
  OnAddVehicleTapped onAddVehicleTapped() {
    return const OnAddVehicleTapped();
  }

// ignore: unused_element
  OnRetryTapped onRetryTapped() {
    return const OnRetryTapped();
  }

// ignore: unused_element
  OnSearchTapped onSearchTapped() {
    return const OnSearchTapped();
  }

// ignore: unused_element
  OnFilterValueChanged onFilterValueChanged(
      {@required AddVehicleLookup value}) {
    return OnFilterValueChanged(
      value: value,
    );
  }

// ignore: unused_element
  OnAdTapped onAdTapped({@required int vehicleId}) {
    return OnAdTapped(
      vehicleId: vehicleId,
    );
  }

// ignore: unused_element
  GetPageData getPageData() {
    return const GetPageData();
  }
}

/// @nodoc
// ignore: unused_element
const $InventoryEvent = _$InventoryEventTearOff();

/// @nodoc
mixin _$InventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InventoryEventCopyWith<$Res> {
  factory $InventoryEventCopyWith(
          InventoryEvent value, $Res Function(InventoryEvent) then) =
      _$InventoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InventoryEventCopyWithImpl<$Res>
    implements $InventoryEventCopyWith<$Res> {
  _$InventoryEventCopyWithImpl(this._value, this._then);

  final InventoryEvent _value;
  // ignore: unused_field
  final $Res Function(InventoryEvent) _then;
}

/// @nodoc
abstract class $OnAddVehicleTappedCopyWith<$Res> {
  factory $OnAddVehicleTappedCopyWith(
          OnAddVehicleTapped value, $Res Function(OnAddVehicleTapped) then) =
      _$OnAddVehicleTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnAddVehicleTappedCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res>
    implements $OnAddVehicleTappedCopyWith<$Res> {
  _$OnAddVehicleTappedCopyWithImpl(
      OnAddVehicleTapped _value, $Res Function(OnAddVehicleTapped) _then)
      : super(_value, (v) => _then(v as OnAddVehicleTapped));

  @override
  OnAddVehicleTapped get _value => super._value as OnAddVehicleTapped;
}

/// @nodoc
class _$OnAddVehicleTapped implements OnAddVehicleTapped {
  const _$OnAddVehicleTapped();

  @override
  String toString() {
    return 'InventoryEvent.onAddVehicleTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnAddVehicleTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onAddVehicleTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAddVehicleTapped != null) {
      return onAddVehicleTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onAddVehicleTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAddVehicleTapped != null) {
      return onAddVehicleTapped(this);
    }
    return orElse();
  }
}

abstract class OnAddVehicleTapped implements InventoryEvent {
  const factory OnAddVehicleTapped() = _$OnAddVehicleTapped;
}

/// @nodoc
abstract class $OnRetryTappedCopyWith<$Res> {
  factory $OnRetryTappedCopyWith(
          OnRetryTapped value, $Res Function(OnRetryTapped) then) =
      _$OnRetryTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRetryTappedCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res>
    implements $OnRetryTappedCopyWith<$Res> {
  _$OnRetryTappedCopyWithImpl(
      OnRetryTapped _value, $Res Function(OnRetryTapped) _then)
      : super(_value, (v) => _then(v as OnRetryTapped));

  @override
  OnRetryTapped get _value => super._value as OnRetryTapped;
}

/// @nodoc
class _$OnRetryTapped implements OnRetryTapped {
  const _$OnRetryTapped();

  @override
  String toString() {
    return 'InventoryEvent.onRetryTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRetryTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onRetryTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRetryTapped != null) {
      return onRetryTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onRetryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRetryTapped != null) {
      return onRetryTapped(this);
    }
    return orElse();
  }
}

abstract class OnRetryTapped implements InventoryEvent {
  const factory OnRetryTapped() = _$OnRetryTapped;
}

/// @nodoc
abstract class $OnSearchTappedCopyWith<$Res> {
  factory $OnSearchTappedCopyWith(
          OnSearchTapped value, $Res Function(OnSearchTapped) then) =
      _$OnSearchTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSearchTappedCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res>
    implements $OnSearchTappedCopyWith<$Res> {
  _$OnSearchTappedCopyWithImpl(
      OnSearchTapped _value, $Res Function(OnSearchTapped) _then)
      : super(_value, (v) => _then(v as OnSearchTapped));

  @override
  OnSearchTapped get _value => super._value as OnSearchTapped;
}

/// @nodoc
class _$OnSearchTapped implements OnSearchTapped {
  const _$OnSearchTapped();

  @override
  String toString() {
    return 'InventoryEvent.onSearchTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnSearchTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onSearchTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSearchTapped != null) {
      return onSearchTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onSearchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSearchTapped != null) {
      return onSearchTapped(this);
    }
    return orElse();
  }
}

abstract class OnSearchTapped implements InventoryEvent {
  const factory OnSearchTapped() = _$OnSearchTapped;
}

/// @nodoc
abstract class $OnFilterValueChangedCopyWith<$Res> {
  factory $OnFilterValueChangedCopyWith(OnFilterValueChanged value,
          $Res Function(OnFilterValueChanged) then) =
      _$OnFilterValueChangedCopyWithImpl<$Res>;
  $Res call({AddVehicleLookup value});

  $AddVehicleLookupCopyWith<$Res> get value;
}

/// @nodoc
class _$OnFilterValueChangedCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res>
    implements $OnFilterValueChangedCopyWith<$Res> {
  _$OnFilterValueChangedCopyWithImpl(
      OnFilterValueChanged _value, $Res Function(OnFilterValueChanged) _then)
      : super(_value, (v) => _then(v as OnFilterValueChanged));

  @override
  OnFilterValueChanged get _value => super._value as OnFilterValueChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(OnFilterValueChanged(
      value: value == freezed ? _value.value : value as AddVehicleLookup,
    ));
  }

  @override
  $AddVehicleLookupCopyWith<$Res> get value {
    if (_value.value == null) {
      return null;
    }
    return $AddVehicleLookupCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
class _$OnFilterValueChanged implements OnFilterValueChanged {
  const _$OnFilterValueChanged({@required this.value}) : assert(value != null);

  @override
  final AddVehicleLookup value;

  @override
  String toString() {
    return 'InventoryEvent.onFilterValueChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnFilterValueChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $OnFilterValueChangedCopyWith<OnFilterValueChanged> get copyWith =>
      _$OnFilterValueChangedCopyWithImpl<OnFilterValueChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onFilterValueChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onFilterValueChanged != null) {
      return onFilterValueChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onFilterValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onFilterValueChanged != null) {
      return onFilterValueChanged(this);
    }
    return orElse();
  }
}

abstract class OnFilterValueChanged implements InventoryEvent {
  const factory OnFilterValueChanged({@required AddVehicleLookup value}) =
      _$OnFilterValueChanged;

  AddVehicleLookup get value;
  $OnFilterValueChangedCopyWith<OnFilterValueChanged> get copyWith;
}

/// @nodoc
abstract class $OnAdTappedCopyWith<$Res> {
  factory $OnAdTappedCopyWith(
          OnAdTapped value, $Res Function(OnAdTapped) then) =
      _$OnAdTappedCopyWithImpl<$Res>;
  $Res call({int vehicleId});
}

/// @nodoc
class _$OnAdTappedCopyWithImpl<$Res> extends _$InventoryEventCopyWithImpl<$Res>
    implements $OnAdTappedCopyWith<$Res> {
  _$OnAdTappedCopyWithImpl(OnAdTapped _value, $Res Function(OnAdTapped) _then)
      : super(_value, (v) => _then(v as OnAdTapped));

  @override
  OnAdTapped get _value => super._value as OnAdTapped;

  @override
  $Res call({
    Object vehicleId = freezed,
  }) {
    return _then(OnAdTapped(
      vehicleId: vehicleId == freezed ? _value.vehicleId : vehicleId as int,
    ));
  }
}

/// @nodoc
class _$OnAdTapped implements OnAdTapped {
  const _$OnAdTapped({@required this.vehicleId}) : assert(vehicleId != null);

  @override
  final int vehicleId;

  @override
  String toString() {
    return 'InventoryEvent.onAdTapped(vehicleId: $vehicleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnAdTapped &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicleId);

  @override
  $OnAdTappedCopyWith<OnAdTapped> get copyWith =>
      _$OnAdTappedCopyWithImpl<OnAdTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onAdTapped(vehicleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAdTapped != null) {
      return onAdTapped(vehicleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onAdTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAdTapped != null) {
      return onAdTapped(this);
    }
    return orElse();
  }
}

abstract class OnAdTapped implements InventoryEvent {
  const factory OnAdTapped({@required int vehicleId}) = _$OnAdTapped;

  int get vehicleId;
  $OnAdTappedCopyWith<OnAdTapped> get copyWith;
}

/// @nodoc
abstract class $GetPageDataCopyWith<$Res> {
  factory $GetPageDataCopyWith(
          GetPageData value, $Res Function(GetPageData) then) =
      _$GetPageDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPageDataCopyWithImpl<$Res> extends _$InventoryEventCopyWithImpl<$Res>
    implements $GetPageDataCopyWith<$Res> {
  _$GetPageDataCopyWithImpl(
      GetPageData _value, $Res Function(GetPageData) _then)
      : super(_value, (v) => _then(v as GetPageData));

  @override
  GetPageData get _value => super._value as GetPageData;
}

/// @nodoc
class _$GetPageData implements GetPageData {
  const _$GetPageData();

  @override
  String toString() {
    return 'InventoryEvent.getPageData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPageData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onAddVehicleTapped(),
    @required TResult onRetryTapped(),
    @required TResult onSearchTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return getPageData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onAddVehicleTapped(),
    TResult onRetryTapped(),
    TResult onSearchTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPageData != null) {
      return getPageData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onAddVehicleTapped(OnAddVehicleTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onSearchTapped(OnSearchTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onAddVehicleTapped != null);
    assert(onRetryTapped != null);
    assert(onSearchTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return getPageData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onAddVehicleTapped(OnAddVehicleTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onSearchTapped(OnSearchTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPageData != null) {
      return getPageData(this);
    }
    return orElse();
  }
}

abstract class GetPageData implements InventoryEvent {
  const factory GetPageData() = _$GetPageData;
}

/// @nodoc
class _$InventoryStateTearOff {
  const _$InventoryStateTearOff();

// ignore: unused_element
  _InventoryState call(
      {@required bool haveCarsInInventory,
      @required bool isCheckedForNumberOfVehiclesInInventory,
      @required InventoryFilter inventoryFilter,
      @required String vehicleBrand,
      @required List<InventoryAd> ads,
      @required int numberOfVehicles,
      @required int offset,
      @required bool isRichedTheEnd,
      @required bool isPaginationError,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) {
    return _InventoryState(
      haveCarsInInventory: haveCarsInInventory,
      isCheckedForNumberOfVehiclesInInventory:
          isCheckedForNumberOfVehiclesInInventory,
      inventoryFilter: inventoryFilter,
      vehicleBrand: vehicleBrand,
      ads: ads,
      numberOfVehicles: numberOfVehicles,
      offset: offset,
      isRichedTheEnd: isRichedTheEnd,
      isPaginationError: isPaginationError,
      isSubmitting: isSubmitting,
      isError: isError,
      errorMessage: errorMessage,
      noInternetConnection: noInternetConnection,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InventoryState = _$InventoryStateTearOff();

/// @nodoc
mixin _$InventoryState {
  bool get haveCarsInInventory;
  bool get isCheckedForNumberOfVehiclesInInventory;
  InventoryFilter get inventoryFilter;
  String get vehicleBrand;
  List<InventoryAd> get ads;
  int get numberOfVehicles;
  int get offset;
  bool get isRichedTheEnd;
  bool get isPaginationError;
  bool get isSubmitting;
  bool get isError;
  String get errorMessage;
  bool get noInternetConnection;

  $InventoryStateCopyWith<InventoryState> get copyWith;
}

/// @nodoc
abstract class $InventoryStateCopyWith<$Res> {
  factory $InventoryStateCopyWith(
          InventoryState value, $Res Function(InventoryState) then) =
      _$InventoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool haveCarsInInventory,
      bool isCheckedForNumberOfVehiclesInInventory,
      InventoryFilter inventoryFilter,
      String vehicleBrand,
      List<InventoryAd> ads,
      int numberOfVehicles,
      int offset,
      bool isRichedTheEnd,
      bool isPaginationError,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class _$InventoryStateCopyWithImpl<$Res>
    implements $InventoryStateCopyWith<$Res> {
  _$InventoryStateCopyWithImpl(this._value, this._then);

  final InventoryState _value;
  // ignore: unused_field
  final $Res Function(InventoryState) _then;

  @override
  $Res call({
    Object haveCarsInInventory = freezed,
    Object isCheckedForNumberOfVehiclesInInventory = freezed,
    Object inventoryFilter = freezed,
    Object vehicleBrand = freezed,
    Object ads = freezed,
    Object numberOfVehicles = freezed,
    Object offset = freezed,
    Object isRichedTheEnd = freezed,
    Object isPaginationError = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_value.copyWith(
      haveCarsInInventory: haveCarsInInventory == freezed
          ? _value.haveCarsInInventory
          : haveCarsInInventory as bool,
      isCheckedForNumberOfVehiclesInInventory:
          isCheckedForNumberOfVehiclesInInventory == freezed
              ? _value.isCheckedForNumberOfVehiclesInInventory
              : isCheckedForNumberOfVehiclesInInventory as bool,
      inventoryFilter: inventoryFilter == freezed
          ? _value.inventoryFilter
          : inventoryFilter as InventoryFilter,
      vehicleBrand: vehicleBrand == freezed
          ? _value.vehicleBrand
          : vehicleBrand as String,
      ads: ads == freezed ? _value.ads : ads as List<InventoryAd>,
      numberOfVehicles: numberOfVehicles == freezed
          ? _value.numberOfVehicles
          : numberOfVehicles as int,
      offset: offset == freezed ? _value.offset : offset as int,
      isRichedTheEnd: isRichedTheEnd == freezed
          ? _value.isRichedTheEnd
          : isRichedTheEnd as bool,
      isPaginationError: isPaginationError == freezed
          ? _value.isPaginationError
          : isPaginationError as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      noInternetConnection: noInternetConnection == freezed
          ? _value.noInternetConnection
          : noInternetConnection as bool,
    ));
  }
}

/// @nodoc
abstract class _$InventoryStateCopyWith<$Res>
    implements $InventoryStateCopyWith<$Res> {
  factory _$InventoryStateCopyWith(
          _InventoryState value, $Res Function(_InventoryState) then) =
      __$InventoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool haveCarsInInventory,
      bool isCheckedForNumberOfVehiclesInInventory,
      InventoryFilter inventoryFilter,
      String vehicleBrand,
      List<InventoryAd> ads,
      int numberOfVehicles,
      int offset,
      bool isRichedTheEnd,
      bool isPaginationError,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class __$InventoryStateCopyWithImpl<$Res>
    extends _$InventoryStateCopyWithImpl<$Res>
    implements _$InventoryStateCopyWith<$Res> {
  __$InventoryStateCopyWithImpl(
      _InventoryState _value, $Res Function(_InventoryState) _then)
      : super(_value, (v) => _then(v as _InventoryState));

  @override
  _InventoryState get _value => super._value as _InventoryState;

  @override
  $Res call({
    Object haveCarsInInventory = freezed,
    Object isCheckedForNumberOfVehiclesInInventory = freezed,
    Object inventoryFilter = freezed,
    Object vehicleBrand = freezed,
    Object ads = freezed,
    Object numberOfVehicles = freezed,
    Object offset = freezed,
    Object isRichedTheEnd = freezed,
    Object isPaginationError = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_InventoryState(
      haveCarsInInventory: haveCarsInInventory == freezed
          ? _value.haveCarsInInventory
          : haveCarsInInventory as bool,
      isCheckedForNumberOfVehiclesInInventory:
          isCheckedForNumberOfVehiclesInInventory == freezed
              ? _value.isCheckedForNumberOfVehiclesInInventory
              : isCheckedForNumberOfVehiclesInInventory as bool,
      inventoryFilter: inventoryFilter == freezed
          ? _value.inventoryFilter
          : inventoryFilter as InventoryFilter,
      vehicleBrand: vehicleBrand == freezed
          ? _value.vehicleBrand
          : vehicleBrand as String,
      ads: ads == freezed ? _value.ads : ads as List<InventoryAd>,
      numberOfVehicles: numberOfVehicles == freezed
          ? _value.numberOfVehicles
          : numberOfVehicles as int,
      offset: offset == freezed ? _value.offset : offset as int,
      isRichedTheEnd: isRichedTheEnd == freezed
          ? _value.isRichedTheEnd
          : isRichedTheEnd as bool,
      isPaginationError: isPaginationError == freezed
          ? _value.isPaginationError
          : isPaginationError as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      noInternetConnection: noInternetConnection == freezed
          ? _value.noInternetConnection
          : noInternetConnection as bool,
    ));
  }
}

/// @nodoc
class _$_InventoryState implements _InventoryState {
  const _$_InventoryState(
      {@required this.haveCarsInInventory,
      @required this.isCheckedForNumberOfVehiclesInInventory,
      @required this.inventoryFilter,
      @required this.vehicleBrand,
      @required this.ads,
      @required this.numberOfVehicles,
      @required this.offset,
      @required this.isRichedTheEnd,
      @required this.isPaginationError,
      @required this.isSubmitting,
      @required this.isError,
      @required this.errorMessage,
      @required this.noInternetConnection})
      : assert(haveCarsInInventory != null),
        assert(isCheckedForNumberOfVehiclesInInventory != null),
        assert(inventoryFilter != null),
        assert(vehicleBrand != null),
        assert(ads != null),
        assert(numberOfVehicles != null),
        assert(offset != null),
        assert(isRichedTheEnd != null),
        assert(isPaginationError != null),
        assert(isSubmitting != null),
        assert(isError != null),
        assert(errorMessage != null),
        assert(noInternetConnection != null);

  @override
  final bool haveCarsInInventory;
  @override
  final bool isCheckedForNumberOfVehiclesInInventory;
  @override
  final InventoryFilter inventoryFilter;
  @override
  final String vehicleBrand;
  @override
  final List<InventoryAd> ads;
  @override
  final int numberOfVehicles;
  @override
  final int offset;
  @override
  final bool isRichedTheEnd;
  @override
  final bool isPaginationError;
  @override
  final bool isSubmitting;
  @override
  final bool isError;
  @override
  final String errorMessage;
  @override
  final bool noInternetConnection;

  @override
  String toString() {
    return 'InventoryState(haveCarsInInventory: $haveCarsInInventory, isCheckedForNumberOfVehiclesInInventory: $isCheckedForNumberOfVehiclesInInventory, inventoryFilter: $inventoryFilter, vehicleBrand: $vehicleBrand, ads: $ads, numberOfVehicles: $numberOfVehicles, offset: $offset, isRichedTheEnd: $isRichedTheEnd, isPaginationError: $isPaginationError, isSubmitting: $isSubmitting, isError: $isError, errorMessage: $errorMessage, noInternetConnection: $noInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InventoryState &&
            (identical(other.haveCarsInInventory, haveCarsInInventory) ||
                const DeepCollectionEquality()
                    .equals(other.haveCarsInInventory, haveCarsInInventory)) &&
            (identical(other.isCheckedForNumberOfVehiclesInInventory,
                    isCheckedForNumberOfVehiclesInInventory) ||
                const DeepCollectionEquality().equals(
                    other.isCheckedForNumberOfVehiclesInInventory,
                    isCheckedForNumberOfVehiclesInInventory)) &&
            (identical(other.inventoryFilter, inventoryFilter) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryFilter, inventoryFilter)) &&
            (identical(other.vehicleBrand, vehicleBrand) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleBrand, vehicleBrand)) &&
            (identical(other.ads, ads) ||
                const DeepCollectionEquality().equals(other.ads, ads)) &&
            (identical(other.numberOfVehicles, numberOfVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfVehicles, numberOfVehicles)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.isRichedTheEnd, isRichedTheEnd) ||
                const DeepCollectionEquality()
                    .equals(other.isRichedTheEnd, isRichedTheEnd)) &&
            (identical(other.isPaginationError, isPaginationError) ||
                const DeepCollectionEquality()
                    .equals(other.isPaginationError, isPaginationError)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.noInternetConnection, noInternetConnection) ||
                const DeepCollectionEquality()
                    .equals(other.noInternetConnection, noInternetConnection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(haveCarsInInventory) ^
      const DeepCollectionEquality()
          .hash(isCheckedForNumberOfVehiclesInInventory) ^
      const DeepCollectionEquality().hash(inventoryFilter) ^
      const DeepCollectionEquality().hash(vehicleBrand) ^
      const DeepCollectionEquality().hash(ads) ^
      const DeepCollectionEquality().hash(numberOfVehicles) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(isRichedTheEnd) ^
      const DeepCollectionEquality().hash(isPaginationError) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(noInternetConnection);

  @override
  _$InventoryStateCopyWith<_InventoryState> get copyWith =>
      __$InventoryStateCopyWithImpl<_InventoryState>(this, _$identity);
}

abstract class _InventoryState implements InventoryState {
  const factory _InventoryState(
      {@required bool haveCarsInInventory,
      @required bool isCheckedForNumberOfVehiclesInInventory,
      @required InventoryFilter inventoryFilter,
      @required String vehicleBrand,
      @required List<InventoryAd> ads,
      @required int numberOfVehicles,
      @required int offset,
      @required bool isRichedTheEnd,
      @required bool isPaginationError,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) = _$_InventoryState;

  @override
  bool get haveCarsInInventory;
  @override
  bool get isCheckedForNumberOfVehiclesInInventory;
  @override
  InventoryFilter get inventoryFilter;
  @override
  String get vehicleBrand;
  @override
  List<InventoryAd> get ads;
  @override
  int get numberOfVehicles;
  @override
  int get offset;
  @override
  bool get isRichedTheEnd;
  @override
  bool get isPaginationError;
  @override
  bool get isSubmitting;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  bool get noInternetConnection;
  @override
  _$InventoryStateCopyWith<_InventoryState> get copyWith;
}
