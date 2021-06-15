// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'public_user_search_resoults_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PublicUserSearchResoultsEventTearOff {
  const _$PublicUserSearchResoultsEventTearOff();

// ignore: unused_element
  OnCloseTapped onCloseTapped() {
    return const OnCloseTapped();
  }

// ignore: unused_element
  OnRetryTapped onRetryTapped() {
    return const OnRetryTapped();
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
const $PublicUserSearchResoultsEvent = _$PublicUserSearchResoultsEventTearOff();

/// @nodoc
mixin _$PublicUserSearchResoultsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCloseTapped(),
    @required TResult onRetryTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    TResult onRetryTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCloseTapped(OnCloseTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PublicUserSearchResoultsEventCopyWith<$Res> {
  factory $PublicUserSearchResoultsEventCopyWith(
          PublicUserSearchResoultsEvent value,
          $Res Function(PublicUserSearchResoultsEvent) then) =
      _$PublicUserSearchResoultsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PublicUserSearchResoultsEventCopyWithImpl<$Res>
    implements $PublicUserSearchResoultsEventCopyWith<$Res> {
  _$PublicUserSearchResoultsEventCopyWithImpl(this._value, this._then);

  final PublicUserSearchResoultsEvent _value;
  // ignore: unused_field
  final $Res Function(PublicUserSearchResoultsEvent) _then;
}

/// @nodoc
abstract class $OnCloseTappedCopyWith<$Res> {
  factory $OnCloseTappedCopyWith(
          OnCloseTapped value, $Res Function(OnCloseTapped) then) =
      _$OnCloseTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCloseTappedCopyWithImpl<$Res>
    extends _$PublicUserSearchResoultsEventCopyWithImpl<$Res>
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
    return 'PublicUserSearchResoultsEvent.onCloseTapped()';
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
    @required TResult onRetryTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onCloseTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    TResult onRetryTapped(),
    TResult onFilterValueChanged(AddVehicleLookup value),
    TResult onAdTapped(int vehicleId),
    TResult getPageData(),
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
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onCloseTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    TResult onRetryTapped(OnRetryTapped value),
    TResult onFilterValueChanged(OnFilterValueChanged value),
    TResult onAdTapped(OnAdTapped value),
    TResult getPageData(GetPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCloseTapped != null) {
      return onCloseTapped(this);
    }
    return orElse();
  }
}

abstract class OnCloseTapped implements PublicUserSearchResoultsEvent {
  const factory OnCloseTapped() = _$OnCloseTapped;
}

/// @nodoc
abstract class $OnRetryTappedCopyWith<$Res> {
  factory $OnRetryTappedCopyWith(
          OnRetryTapped value, $Res Function(OnRetryTapped) then) =
      _$OnRetryTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRetryTappedCopyWithImpl<$Res>
    extends _$PublicUserSearchResoultsEventCopyWithImpl<$Res>
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
    return 'PublicUserSearchResoultsEvent.onRetryTapped()';
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
    @required TResult onCloseTapped(),
    @required TResult onRetryTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onRetryTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    TResult onRetryTapped(),
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
    @required TResult onCloseTapped(OnCloseTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onRetryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    TResult onRetryTapped(OnRetryTapped value),
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

abstract class OnRetryTapped implements PublicUserSearchResoultsEvent {
  const factory OnRetryTapped() = _$OnRetryTapped;
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
    extends _$PublicUserSearchResoultsEventCopyWithImpl<$Res>
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
    return 'PublicUserSearchResoultsEvent.onFilterValueChanged(value: $value)';
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
    @required TResult onCloseTapped(),
    @required TResult onRetryTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onFilterValueChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    TResult onRetryTapped(),
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
    @required TResult onCloseTapped(OnCloseTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onFilterValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    TResult onRetryTapped(OnRetryTapped value),
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

abstract class OnFilterValueChanged implements PublicUserSearchResoultsEvent {
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
class _$OnAdTappedCopyWithImpl<$Res>
    extends _$PublicUserSearchResoultsEventCopyWithImpl<$Res>
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
    return 'PublicUserSearchResoultsEvent.onAdTapped(vehicleId: $vehicleId)';
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
    @required TResult onCloseTapped(),
    @required TResult onRetryTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onAdTapped(vehicleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    TResult onRetryTapped(),
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
    @required TResult onCloseTapped(OnCloseTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return onAdTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    TResult onRetryTapped(OnRetryTapped value),
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

abstract class OnAdTapped implements PublicUserSearchResoultsEvent {
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
class _$GetPageDataCopyWithImpl<$Res>
    extends _$PublicUserSearchResoultsEventCopyWithImpl<$Res>
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
    return 'PublicUserSearchResoultsEvent.getPageData()';
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
    @required TResult onCloseTapped(),
    @required TResult onRetryTapped(),
    @required TResult onFilterValueChanged(AddVehicleLookup value),
    @required TResult onAdTapped(int vehicleId),
    @required TResult getPageData(),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return getPageData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCloseTapped(),
    TResult onRetryTapped(),
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
    @required TResult onCloseTapped(OnCloseTapped value),
    @required TResult onRetryTapped(OnRetryTapped value),
    @required TResult onFilterValueChanged(OnFilterValueChanged value),
    @required TResult onAdTapped(OnAdTapped value),
    @required TResult getPageData(GetPageData value),
  }) {
    assert(onCloseTapped != null);
    assert(onRetryTapped != null);
    assert(onFilterValueChanged != null);
    assert(onAdTapped != null);
    assert(getPageData != null);
    return getPageData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCloseTapped(OnCloseTapped value),
    TResult onRetryTapped(OnRetryTapped value),
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

abstract class GetPageData implements PublicUserSearchResoultsEvent {
  const factory GetPageData() = _$GetPageData;
}

/// @nodoc
class _$PublicUserSearchResoultsStateTearOff {
  const _$PublicUserSearchResoultsStateTearOff();

// ignore: unused_element
  _PublicUserSearchResoultsState call(
      {@required InventoryFilter inventoryFilter,
      @required List<PublicSearchListingModel> ads,
      @required int offset,
      @required bool isRichedTheEnd,
      @required bool isPaginationError,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) {
    return _PublicUserSearchResoultsState(
      inventoryFilter: inventoryFilter,
      ads: ads,
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
const $PublicUserSearchResoultsState = _$PublicUserSearchResoultsStateTearOff();

/// @nodoc
mixin _$PublicUserSearchResoultsState {
  InventoryFilter get inventoryFilter;
  List<PublicSearchListingModel> get ads;
  int get offset;
  bool get isRichedTheEnd;
  bool get isPaginationError;
  bool get isSubmitting;
  bool get isError;
  String get errorMessage;
  bool get noInternetConnection;

  $PublicUserSearchResoultsStateCopyWith<PublicUserSearchResoultsState>
      get copyWith;
}

/// @nodoc
abstract class $PublicUserSearchResoultsStateCopyWith<$Res> {
  factory $PublicUserSearchResoultsStateCopyWith(
          PublicUserSearchResoultsState value,
          $Res Function(PublicUserSearchResoultsState) then) =
      _$PublicUserSearchResoultsStateCopyWithImpl<$Res>;
  $Res call(
      {InventoryFilter inventoryFilter,
      List<PublicSearchListingModel> ads,
      int offset,
      bool isRichedTheEnd,
      bool isPaginationError,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class _$PublicUserSearchResoultsStateCopyWithImpl<$Res>
    implements $PublicUserSearchResoultsStateCopyWith<$Res> {
  _$PublicUserSearchResoultsStateCopyWithImpl(this._value, this._then);

  final PublicUserSearchResoultsState _value;
  // ignore: unused_field
  final $Res Function(PublicUserSearchResoultsState) _then;

  @override
  $Res call({
    Object inventoryFilter = freezed,
    Object ads = freezed,
    Object offset = freezed,
    Object isRichedTheEnd = freezed,
    Object isPaginationError = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_value.copyWith(
      inventoryFilter: inventoryFilter == freezed
          ? _value.inventoryFilter
          : inventoryFilter as InventoryFilter,
      ads: ads == freezed ? _value.ads : ads as List<PublicSearchListingModel>,
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
abstract class _$PublicUserSearchResoultsStateCopyWith<$Res>
    implements $PublicUserSearchResoultsStateCopyWith<$Res> {
  factory _$PublicUserSearchResoultsStateCopyWith(
          _PublicUserSearchResoultsState value,
          $Res Function(_PublicUserSearchResoultsState) then) =
      __$PublicUserSearchResoultsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {InventoryFilter inventoryFilter,
      List<PublicSearchListingModel> ads,
      int offset,
      bool isRichedTheEnd,
      bool isPaginationError,
      bool isSubmitting,
      bool isError,
      String errorMessage,
      bool noInternetConnection});
}

/// @nodoc
class __$PublicUserSearchResoultsStateCopyWithImpl<$Res>
    extends _$PublicUserSearchResoultsStateCopyWithImpl<$Res>
    implements _$PublicUserSearchResoultsStateCopyWith<$Res> {
  __$PublicUserSearchResoultsStateCopyWithImpl(
      _PublicUserSearchResoultsState _value,
      $Res Function(_PublicUserSearchResoultsState) _then)
      : super(_value, (v) => _then(v as _PublicUserSearchResoultsState));

  @override
  _PublicUserSearchResoultsState get _value =>
      super._value as _PublicUserSearchResoultsState;

  @override
  $Res call({
    Object inventoryFilter = freezed,
    Object ads = freezed,
    Object offset = freezed,
    Object isRichedTheEnd = freezed,
    Object isPaginationError = freezed,
    Object isSubmitting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
    Object noInternetConnection = freezed,
  }) {
    return _then(_PublicUserSearchResoultsState(
      inventoryFilter: inventoryFilter == freezed
          ? _value.inventoryFilter
          : inventoryFilter as InventoryFilter,
      ads: ads == freezed ? _value.ads : ads as List<PublicSearchListingModel>,
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
class _$_PublicUserSearchResoultsState
    implements _PublicUserSearchResoultsState {
  const _$_PublicUserSearchResoultsState(
      {@required this.inventoryFilter,
      @required this.ads,
      @required this.offset,
      @required this.isRichedTheEnd,
      @required this.isPaginationError,
      @required this.isSubmitting,
      @required this.isError,
      @required this.errorMessage,
      @required this.noInternetConnection})
      : assert(inventoryFilter != null),
        assert(ads != null),
        assert(offset != null),
        assert(isRichedTheEnd != null),
        assert(isPaginationError != null),
        assert(isSubmitting != null),
        assert(isError != null),
        assert(errorMessage != null),
        assert(noInternetConnection != null);

  @override
  final InventoryFilter inventoryFilter;
  @override
  final List<PublicSearchListingModel> ads;
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
    return 'PublicUserSearchResoultsState(inventoryFilter: $inventoryFilter, ads: $ads, offset: $offset, isRichedTheEnd: $isRichedTheEnd, isPaginationError: $isPaginationError, isSubmitting: $isSubmitting, isError: $isError, errorMessage: $errorMessage, noInternetConnection: $noInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublicUserSearchResoultsState &&
            (identical(other.inventoryFilter, inventoryFilter) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryFilter, inventoryFilter)) &&
            (identical(other.ads, ads) ||
                const DeepCollectionEquality().equals(other.ads, ads)) &&
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
      const DeepCollectionEquality().hash(inventoryFilter) ^
      const DeepCollectionEquality().hash(ads) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(isRichedTheEnd) ^
      const DeepCollectionEquality().hash(isPaginationError) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(noInternetConnection);

  @override
  _$PublicUserSearchResoultsStateCopyWith<_PublicUserSearchResoultsState>
      get copyWith => __$PublicUserSearchResoultsStateCopyWithImpl<
          _PublicUserSearchResoultsState>(this, _$identity);
}

abstract class _PublicUserSearchResoultsState
    implements PublicUserSearchResoultsState {
  const factory _PublicUserSearchResoultsState(
      {@required InventoryFilter inventoryFilter,
      @required List<PublicSearchListingModel> ads,
      @required int offset,
      @required bool isRichedTheEnd,
      @required bool isPaginationError,
      @required bool isSubmitting,
      @required bool isError,
      @required String errorMessage,
      @required bool noInternetConnection}) = _$_PublicUserSearchResoultsState;

  @override
  InventoryFilter get inventoryFilter;
  @override
  List<PublicSearchListingModel> get ads;
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
  _$PublicUserSearchResoultsStateCopyWith<_PublicUserSearchResoultsState>
      get copyWith;
}
