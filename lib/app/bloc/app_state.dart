part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.all({
    @Default(false) bool isOnline,
    @Default('en') String lang,
  }) = _AppStateAll;
}
