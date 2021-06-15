part of 'photos_bloc.dart';

@freezed
abstract class PhotosState with _$PhotosState {
  const factory PhotosState({
    @required List<Photo> photos,
    @required bool isSubmitting
  }) = _PhotosState;

  factory PhotosState.initial() => PhotosState(
      photos: List<Photo>(),
      isSubmitting: false
  );
}