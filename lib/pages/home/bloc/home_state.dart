part of 'home_bloc.dart';

enum HomeStatus { incomplete, complete }

@freezed
class HomeState with _$HomeState {
  const factory HomeState.all({
    @Default(true) bool isLoading,
    @Default([]) List<Person> list,
    @Default('') String searchCriteria,
    @Default(false) bool isDownloadingData,
    @Default('') String error,
  }) = _HomeStateAll;
}
