part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    @Default(false) bool online,
    // @Default('en') String lang,
  }) = _Initial;
}
