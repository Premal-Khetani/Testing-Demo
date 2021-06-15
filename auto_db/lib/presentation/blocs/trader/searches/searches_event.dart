part of 'searches_bloc.dart';

@freezed
abstract class SearchesEvent with _$SearchesEvent {
  const factory SearchesEvent.onRetryTapped() = OnRetryTapped;
  const factory SearchesEvent.onNewSearchTapped() = OnNewSearchTapped;
  const factory SearchesEvent.onEditSearchTapped({@required SearchListingModel search}) = OnEditSearchTapped;
  const factory SearchesEvent.onDeleteSearchTapped({@required SearchListingModel search}) = OnDeleteSearchTapped;
  const factory SearchesEvent.onHelpButtonTapped() = OnHelpButtonTapped;
}