part of 'home_bloc.dart';

enum HomeStatus { incomplete, complete }

@freezed
class HomeState with _$HomeState {
  // const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _HomeListLoading;
  const factory HomeState.empty() = _HomeListEmpty;
  const factory HomeState.content({
    required List<Person> list,
    @Default(false) bool downloadingData,
  }) = _HomeListContent;
  const factory HomeState.error() = _HomeListError;
}
