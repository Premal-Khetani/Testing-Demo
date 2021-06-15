part of 'view_ad_bloc.dart';

@freezed
abstract class ViewAdEvent with _$ViewAdEvent {
  const factory ViewAdEvent.close() = Close;
  const factory ViewAdEvent.onOKTapped() = OnOKTapped; 
}