// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PhotosEventTearOff {
  const _$PhotosEventTearOff();

// ignore: unused_element
  Close close() {
    return const Close();
  }

// ignore: unused_element
  PhotoFromCamera photoFromCamera() {
    return const PhotoFromCamera();
  }

// ignore: unused_element
  Save save() {
    return const Save();
  }

// ignore: unused_element
  OnReorder onReorder({@required int oldIndex, @required int newIndex}) {
    return OnReorder(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

// ignore: unused_element
  OnDeletePhotoTapped onDeletePhotoTapped({@required Photo photo}) {
    return OnDeletePhotoTapped(
      photo: photo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhotosEvent = _$PhotosEventTearOff();

/// @nodoc
mixin _$PhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult photoFromCamera(),
    @required TResult save(),
    @required TResult onReorder(int oldIndex, int newIndex),
    @required TResult onDeletePhotoTapped(Photo photo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult photoFromCamera(),
    TResult save(),
    TResult onReorder(int oldIndex, int newIndex),
    TResult onDeletePhotoTapped(Photo photo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult photoFromCamera(PhotoFromCamera value),
    @required TResult save(Save value),
    @required TResult onReorder(OnReorder value),
    @required TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult photoFromCamera(PhotoFromCamera value),
    TResult save(Save value),
    TResult onReorder(OnReorder value),
    TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotosEventCopyWithImpl<$Res> implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  final PhotosEvent _value;
  // ignore: unused_field
  final $Res Function(PhotosEvent) _then;
}

/// @nodoc
abstract class $CloseCopyWith<$Res> {
  factory $CloseCopyWith(Close value, $Res Function(Close) then) =
      _$CloseCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $CloseCopyWith<$Res> {
  _$CloseCopyWithImpl(Close _value, $Res Function(Close) _then)
      : super(_value, (v) => _then(v as Close));

  @override
  Close get _value => super._value as Close;
}

/// @nodoc
class _$Close with DiagnosticableTreeMixin implements Close {
  const _$Close();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotosEvent.close()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PhotosEvent.close'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult photoFromCamera(),
    @required TResult save(),
    @required TResult onReorder(int oldIndex, int newIndex),
    @required TResult onDeletePhotoTapped(Photo photo),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return close();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult photoFromCamera(),
    TResult save(),
    TResult onReorder(int oldIndex, int newIndex),
    TResult onDeletePhotoTapped(Photo photo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult photoFromCamera(PhotoFromCamera value),
    @required TResult save(Save value),
    @required TResult onReorder(OnReorder value),
    @required TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult photoFromCamera(PhotoFromCamera value),
    TResult save(Save value),
    TResult onReorder(OnReorder value),
    TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class Close implements PhotosEvent {
  const factory Close() = _$Close;
}

/// @nodoc
abstract class $PhotoFromCameraCopyWith<$Res> {
  factory $PhotoFromCameraCopyWith(
          PhotoFromCamera value, $Res Function(PhotoFromCamera) then) =
      _$PhotoFromCameraCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoFromCameraCopyWithImpl<$Res>
    extends _$PhotosEventCopyWithImpl<$Res>
    implements $PhotoFromCameraCopyWith<$Res> {
  _$PhotoFromCameraCopyWithImpl(
      PhotoFromCamera _value, $Res Function(PhotoFromCamera) _then)
      : super(_value, (v) => _then(v as PhotoFromCamera));

  @override
  PhotoFromCamera get _value => super._value as PhotoFromCamera;
}

/// @nodoc
class _$PhotoFromCamera
    with DiagnosticableTreeMixin
    implements PhotoFromCamera {
  const _$PhotoFromCamera();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotosEvent.photoFromCamera()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PhotosEvent.photoFromCamera'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhotoFromCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult photoFromCamera(),
    @required TResult save(),
    @required TResult onReorder(int oldIndex, int newIndex),
    @required TResult onDeletePhotoTapped(Photo photo),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return photoFromCamera();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult photoFromCamera(),
    TResult save(),
    TResult onReorder(int oldIndex, int newIndex),
    TResult onDeletePhotoTapped(Photo photo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (photoFromCamera != null) {
      return photoFromCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult photoFromCamera(PhotoFromCamera value),
    @required TResult save(Save value),
    @required TResult onReorder(OnReorder value),
    @required TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return photoFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult photoFromCamera(PhotoFromCamera value),
    TResult save(Save value),
    TResult onReorder(OnReorder value),
    TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (photoFromCamera != null) {
      return photoFromCamera(this);
    }
    return orElse();
  }
}

abstract class PhotoFromCamera implements PhotosEvent {
  const factory PhotoFromCamera() = _$PhotoFromCamera;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;
}

/// @nodoc
class _$Save with DiagnosticableTreeMixin implements Save {
  const _$Save();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotosEvent.save()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PhotosEvent.save'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult photoFromCamera(),
    @required TResult save(),
    @required TResult onReorder(int oldIndex, int newIndex),
    @required TResult onDeletePhotoTapped(Photo photo),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult photoFromCamera(),
    TResult save(),
    TResult onReorder(int oldIndex, int newIndex),
    TResult onDeletePhotoTapped(Photo photo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult photoFromCamera(PhotoFromCamera value),
    @required TResult save(Save value),
    @required TResult onReorder(OnReorder value),
    @required TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult photoFromCamera(PhotoFromCamera value),
    TResult save(Save value),
    TResult onReorder(OnReorder value),
    TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements PhotosEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class $OnReorderCopyWith<$Res> {
  factory $OnReorderCopyWith(OnReorder value, $Res Function(OnReorder) then) =
      _$OnReorderCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class _$OnReorderCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $OnReorderCopyWith<$Res> {
  _$OnReorderCopyWithImpl(OnReorder _value, $Res Function(OnReorder) _then)
      : super(_value, (v) => _then(v as OnReorder));

  @override
  OnReorder get _value => super._value as OnReorder;

  @override
  $Res call({
    Object oldIndex = freezed,
    Object newIndex = freezed,
  }) {
    return _then(OnReorder(
      oldIndex: oldIndex == freezed ? _value.oldIndex : oldIndex as int,
      newIndex: newIndex == freezed ? _value.newIndex : newIndex as int,
    ));
  }
}

/// @nodoc
class _$OnReorder with DiagnosticableTreeMixin implements OnReorder {
  const _$OnReorder({@required this.oldIndex, @required this.newIndex})
      : assert(oldIndex != null),
        assert(newIndex != null);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotosEvent.onReorder(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotosEvent.onReorder'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnReorder &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @override
  $OnReorderCopyWith<OnReorder> get copyWith =>
      _$OnReorderCopyWithImpl<OnReorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult photoFromCamera(),
    @required TResult save(),
    @required TResult onReorder(int oldIndex, int newIndex),
    @required TResult onDeletePhotoTapped(Photo photo),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return onReorder(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult photoFromCamera(),
    TResult save(),
    TResult onReorder(int oldIndex, int newIndex),
    TResult onDeletePhotoTapped(Photo photo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onReorder != null) {
      return onReorder(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult photoFromCamera(PhotoFromCamera value),
    @required TResult save(Save value),
    @required TResult onReorder(OnReorder value),
    @required TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return onReorder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult photoFromCamera(PhotoFromCamera value),
    TResult save(Save value),
    TResult onReorder(OnReorder value),
    TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onReorder != null) {
      return onReorder(this);
    }
    return orElse();
  }
}

abstract class OnReorder implements PhotosEvent {
  const factory OnReorder({@required int oldIndex, @required int newIndex}) =
      _$OnReorder;

  int get oldIndex;
  int get newIndex;
  $OnReorderCopyWith<OnReorder> get copyWith;
}

/// @nodoc
abstract class $OnDeletePhotoTappedCopyWith<$Res> {
  factory $OnDeletePhotoTappedCopyWith(
          OnDeletePhotoTapped value, $Res Function(OnDeletePhotoTapped) then) =
      _$OnDeletePhotoTappedCopyWithImpl<$Res>;
  $Res call({Photo photo});
}

/// @nodoc
class _$OnDeletePhotoTappedCopyWithImpl<$Res>
    extends _$PhotosEventCopyWithImpl<$Res>
    implements $OnDeletePhotoTappedCopyWith<$Res> {
  _$OnDeletePhotoTappedCopyWithImpl(
      OnDeletePhotoTapped _value, $Res Function(OnDeletePhotoTapped) _then)
      : super(_value, (v) => _then(v as OnDeletePhotoTapped));

  @override
  OnDeletePhotoTapped get _value => super._value as OnDeletePhotoTapped;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(OnDeletePhotoTapped(
      photo: photo == freezed ? _value.photo : photo as Photo,
    ));
  }
}

/// @nodoc
class _$OnDeletePhotoTapped
    with DiagnosticableTreeMixin
    implements OnDeletePhotoTapped {
  const _$OnDeletePhotoTapped({@required this.photo}) : assert(photo != null);

  @override
  final Photo photo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotosEvent.onDeletePhotoTapped(photo: $photo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotosEvent.onDeletePhotoTapped'))
      ..add(DiagnosticsProperty('photo', photo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnDeletePhotoTapped &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @override
  $OnDeletePhotoTappedCopyWith<OnDeletePhotoTapped> get copyWith =>
      _$OnDeletePhotoTappedCopyWithImpl<OnDeletePhotoTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult close(),
    @required TResult photoFromCamera(),
    @required TResult save(),
    @required TResult onReorder(int oldIndex, int newIndex),
    @required TResult onDeletePhotoTapped(Photo photo),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return onDeletePhotoTapped(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult close(),
    TResult photoFromCamera(),
    TResult save(),
    TResult onReorder(int oldIndex, int newIndex),
    TResult onDeletePhotoTapped(Photo photo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onDeletePhotoTapped != null) {
      return onDeletePhotoTapped(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult close(Close value),
    @required TResult photoFromCamera(PhotoFromCamera value),
    @required TResult save(Save value),
    @required TResult onReorder(OnReorder value),
    @required TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
  }) {
    assert(close != null);
    assert(photoFromCamera != null);
    assert(save != null);
    assert(onReorder != null);
    assert(onDeletePhotoTapped != null);
    return onDeletePhotoTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult close(Close value),
    TResult photoFromCamera(PhotoFromCamera value),
    TResult save(Save value),
    TResult onReorder(OnReorder value),
    TResult onDeletePhotoTapped(OnDeletePhotoTapped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onDeletePhotoTapped != null) {
      return onDeletePhotoTapped(this);
    }
    return orElse();
  }
}

abstract class OnDeletePhotoTapped implements PhotosEvent {
  const factory OnDeletePhotoTapped({@required Photo photo}) =
      _$OnDeletePhotoTapped;

  Photo get photo;
  $OnDeletePhotoTappedCopyWith<OnDeletePhotoTapped> get copyWith;
}

/// @nodoc
class _$PhotosStateTearOff {
  const _$PhotosStateTearOff();

// ignore: unused_element
  _PhotosState call(
      {@required List<Photo> photos, @required bool isSubmitting}) {
    return _PhotosState(
      photos: photos,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhotosState = _$PhotosStateTearOff();

/// @nodoc
mixin _$PhotosState {
  List<Photo> get photos;
  bool get isSubmitting;

  $PhotosStateCopyWith<PhotosState> get copyWith;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
  $Res call({List<Photo> photos, bool isSubmitting});
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;

  @override
  $Res call({
    Object photos = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$PhotosStateCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$PhotosStateCopyWith(
          _PhotosState value, $Res Function(_PhotosState) then) =
      __$PhotosStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo> photos, bool isSubmitting});
}

/// @nodoc
class __$PhotosStateCopyWithImpl<$Res> extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosStateCopyWith<$Res> {
  __$PhotosStateCopyWithImpl(
      _PhotosState _value, $Res Function(_PhotosState) _then)
      : super(_value, (v) => _then(v as _PhotosState));

  @override
  _PhotosState get _value => super._value as _PhotosState;

  @override
  $Res call({
    Object photos = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_PhotosState(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_PhotosState with DiagnosticableTreeMixin implements _PhotosState {
  const _$_PhotosState({@required this.photos, @required this.isSubmitting})
      : assert(photos != null),
        assert(isSubmitting != null);

  @override
  final List<Photo> photos;
  @override
  final bool isSubmitting;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotosState(photos: $photos, isSubmitting: $isSubmitting)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotosState'))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotosState &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$PhotosStateCopyWith<_PhotosState> get copyWith =>
      __$PhotosStateCopyWithImpl<_PhotosState>(this, _$identity);
}

abstract class _PhotosState implements PhotosState {
  const factory _PhotosState(
      {@required List<Photo> photos,
      @required bool isSubmitting}) = _$_PhotosState;

  @override
  List<Photo> get photos;
  @override
  bool get isSubmitting;
  @override
  _$PhotosStateCopyWith<_PhotosState> get copyWith;
}
