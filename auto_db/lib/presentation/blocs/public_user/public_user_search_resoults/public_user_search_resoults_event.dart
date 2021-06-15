part of 'public_user_search_resoults_bloc.dart';

@freezed
abstract class PublicUserSearchResoultsEvent with _$PublicUserSearchResoultsEvent {
  const factory PublicUserSearchResoultsEvent.onCloseTapped() = OnCloseTapped;
  const factory PublicUserSearchResoultsEvent.onRetryTapped() = OnRetryTapped;
  const factory PublicUserSearchResoultsEvent.onFilterValueChanged({@required AddVehicleLookup value}) = OnFilterValueChanged;
  const factory PublicUserSearchResoultsEvent.onAdTapped({@required int vehicleId}) = OnAdTapped;
  const factory PublicUserSearchResoultsEvent.getPageData() = GetPageData;
}