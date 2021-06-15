part of 'photos_bloc.dart';

//flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class PhotosEvent with _$PhotosEvent{
  const factory PhotosEvent.close() = Close;
  const factory PhotosEvent.photoFromCamera() = PhotoFromCamera;
  const factory PhotosEvent.save() = Save;
  const factory PhotosEvent.onReorder({@required int oldIndex, @required int newIndex}) = OnReorder;
  const factory PhotosEvent.onDeletePhotoTapped({@required Photo photo}) = OnDeletePhotoTapped;
}