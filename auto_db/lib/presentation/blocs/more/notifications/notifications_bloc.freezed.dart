// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

// ignore: unused_element
  _NotificationsState call(
      {@required NotificationEntity entity, @required bool isSubmitting}) {
    return _NotificationsState(
      entity: entity,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  NotificationEntity get entity;
  bool get isSubmitting;

  $NotificationsStateCopyWith<NotificationsState> get copyWith;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
  $Res call({NotificationEntity entity, bool isSubmitting});

  $NotificationEntityCopyWith<$Res> get entity;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;

  @override
  $Res call({
    Object entity = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      entity: entity == freezed ? _value.entity : entity as NotificationEntity,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }

  @override
  $NotificationEntityCopyWith<$Res> get entity {
    if (_value.entity == null) {
      return null;
    }
    return $NotificationEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationsStateCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$NotificationsStateCopyWith(
          _NotificationsState value, $Res Function(_NotificationsState) then) =
      __$NotificationsStateCopyWithImpl<$Res>;
  @override
  $Res call({NotificationEntity entity, bool isSubmitting});

  @override
  $NotificationEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$NotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$NotificationsStateCopyWith<$Res> {
  __$NotificationsStateCopyWithImpl(
      _NotificationsState _value, $Res Function(_NotificationsState) _then)
      : super(_value, (v) => _then(v as _NotificationsState));

  @override
  _NotificationsState get _value => super._value as _NotificationsState;

  @override
  $Res call({
    Object entity = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_NotificationsState(
      entity: entity == freezed ? _value.entity : entity as NotificationEntity,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_NotificationsState implements _NotificationsState {
  const _$_NotificationsState(
      {@required this.entity, @required this.isSubmitting})
      : assert(entity != null),
        assert(isSubmitting != null);

  @override
  final NotificationEntity entity;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'NotificationsState(entity: $entity, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsState &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$NotificationsStateCopyWith<_NotificationsState> get copyWith =>
      __$NotificationsStateCopyWithImpl<_NotificationsState>(this, _$identity);
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState(
      {@required NotificationEntity entity,
      @required bool isSubmitting}) = _$_NotificationsState;

  @override
  NotificationEntity get entity;
  @override
  bool get isSubmitting;
  @override
  _$NotificationsStateCopyWith<_NotificationsState> get copyWith;
}

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

// ignore: unused_element
  OnSave onSave() {
    return const OnSave();
  }

// ignore: unused_element
  OnClose onClose() {
    return const OnClose();
  }

// ignore: unused_element
  OnNotificationChange onNotificationChange(
      {@required NotificationsType notificationsType, @required bool value}) {
    return OnNotificationChange(
      notificationsType: notificationsType,
      value: value,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSave(),
    @required TResult onClose(),
    @required
        TResult onNotificationChange(
            NotificationsType notificationsType, bool value),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSave(),
    TResult onClose(),
    TResult onNotificationChange(
        NotificationsType notificationsType, bool value),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSave(OnSave value),
    @required TResult onClose(OnClose value),
    @required TResult onNotificationChange(OnNotificationChange value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSave(OnSave value),
    TResult onClose(OnClose value),
    TResult onNotificationChange(OnNotificationChange value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class $OnSaveCopyWith<$Res> {
  factory $OnSaveCopyWith(OnSave value, $Res Function(OnSave) then) =
      _$OnSaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSaveCopyWithImpl<$Res> extends _$NotificationsEventCopyWithImpl<$Res>
    implements $OnSaveCopyWith<$Res> {
  _$OnSaveCopyWithImpl(OnSave _value, $Res Function(OnSave) _then)
      : super(_value, (v) => _then(v as OnSave));

  @override
  OnSave get _value => super._value as OnSave;
}

/// @nodoc
class _$OnSave implements OnSave {
  const _$OnSave();

  @override
  String toString() {
    return 'NotificationsEvent.onSave()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnSave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSave(),
    @required TResult onClose(),
    @required
        TResult onNotificationChange(
            NotificationsType notificationsType, bool value),
  }) {
    assert(onSave != null);
    assert(onClose != null);
    assert(onNotificationChange != null);
    return onSave();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSave(),
    TResult onClose(),
    TResult onNotificationChange(
        NotificationsType notificationsType, bool value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSave != null) {
      return onSave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSave(OnSave value),
    @required TResult onClose(OnClose value),
    @required TResult onNotificationChange(OnNotificationChange value),
  }) {
    assert(onSave != null);
    assert(onClose != null);
    assert(onNotificationChange != null);
    return onSave(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSave(OnSave value),
    TResult onClose(OnClose value),
    TResult onNotificationChange(OnNotificationChange value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSave != null) {
      return onSave(this);
    }
    return orElse();
  }
}

abstract class OnSave implements NotificationsEvent {
  const factory OnSave() = _$OnSave;
}

/// @nodoc
abstract class $OnCloseCopyWith<$Res> {
  factory $OnCloseCopyWith(OnClose value, $Res Function(OnClose) then) =
      _$OnCloseCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCloseCopyWithImpl<$Res> extends _$NotificationsEventCopyWithImpl<$Res>
    implements $OnCloseCopyWith<$Res> {
  _$OnCloseCopyWithImpl(OnClose _value, $Res Function(OnClose) _then)
      : super(_value, (v) => _then(v as OnClose));

  @override
  OnClose get _value => super._value as OnClose;
}

/// @nodoc
class _$OnClose implements OnClose {
  const _$OnClose();

  @override
  String toString() {
    return 'NotificationsEvent.onClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSave(),
    @required TResult onClose(),
    @required
        TResult onNotificationChange(
            NotificationsType notificationsType, bool value),
  }) {
    assert(onSave != null);
    assert(onClose != null);
    assert(onNotificationChange != null);
    return onClose();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSave(),
    TResult onClose(),
    TResult onNotificationChange(
        NotificationsType notificationsType, bool value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onClose != null) {
      return onClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSave(OnSave value),
    @required TResult onClose(OnClose value),
    @required TResult onNotificationChange(OnNotificationChange value),
  }) {
    assert(onSave != null);
    assert(onClose != null);
    assert(onNotificationChange != null);
    return onClose(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSave(OnSave value),
    TResult onClose(OnClose value),
    TResult onNotificationChange(OnNotificationChange value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onClose != null) {
      return onClose(this);
    }
    return orElse();
  }
}

abstract class OnClose implements NotificationsEvent {
  const factory OnClose() = _$OnClose;
}

/// @nodoc
abstract class $OnNotificationChangeCopyWith<$Res> {
  factory $OnNotificationChangeCopyWith(OnNotificationChange value,
          $Res Function(OnNotificationChange) then) =
      _$OnNotificationChangeCopyWithImpl<$Res>;
  $Res call({NotificationsType notificationsType, bool value});
}

/// @nodoc
class _$OnNotificationChangeCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements $OnNotificationChangeCopyWith<$Res> {
  _$OnNotificationChangeCopyWithImpl(
      OnNotificationChange _value, $Res Function(OnNotificationChange) _then)
      : super(_value, (v) => _then(v as OnNotificationChange));

  @override
  OnNotificationChange get _value => super._value as OnNotificationChange;

  @override
  $Res call({
    Object notificationsType = freezed,
    Object value = freezed,
  }) {
    return _then(OnNotificationChange(
      notificationsType: notificationsType == freezed
          ? _value.notificationsType
          : notificationsType as NotificationsType,
      value: value == freezed ? _value.value : value as bool,
    ));
  }
}

/// @nodoc
class _$OnNotificationChange implements OnNotificationChange {
  const _$OnNotificationChange(
      {@required this.notificationsType, @required this.value})
      : assert(notificationsType != null),
        assert(value != null);

  @override
  final NotificationsType notificationsType;
  @override
  final bool value;

  @override
  String toString() {
    return 'NotificationsEvent.onNotificationChange(notificationsType: $notificationsType, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnNotificationChange &&
            (identical(other.notificationsType, notificationsType) ||
                const DeepCollectionEquality()
                    .equals(other.notificationsType, notificationsType)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationsType) ^
      const DeepCollectionEquality().hash(value);

  @override
  $OnNotificationChangeCopyWith<OnNotificationChange> get copyWith =>
      _$OnNotificationChangeCopyWithImpl<OnNotificationChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSave(),
    @required TResult onClose(),
    @required
        TResult onNotificationChange(
            NotificationsType notificationsType, bool value),
  }) {
    assert(onSave != null);
    assert(onClose != null);
    assert(onNotificationChange != null);
    return onNotificationChange(notificationsType, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSave(),
    TResult onClose(),
    TResult onNotificationChange(
        NotificationsType notificationsType, bool value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onNotificationChange != null) {
      return onNotificationChange(notificationsType, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSave(OnSave value),
    @required TResult onClose(OnClose value),
    @required TResult onNotificationChange(OnNotificationChange value),
  }) {
    assert(onSave != null);
    assert(onClose != null);
    assert(onNotificationChange != null);
    return onNotificationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSave(OnSave value),
    TResult onClose(OnClose value),
    TResult onNotificationChange(OnNotificationChange value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onNotificationChange != null) {
      return onNotificationChange(this);
    }
    return orElse();
  }
}

abstract class OnNotificationChange implements NotificationsEvent {
  const factory OnNotificationChange(
      {@required NotificationsType notificationsType,
      @required bool value}) = _$OnNotificationChange;

  NotificationsType get notificationsType;
  bool get value;
  $OnNotificationChangeCopyWith<OnNotificationChange> get copyWith;
}
