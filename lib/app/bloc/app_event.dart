part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = _Started;
  const factory AppEvent.connected() = _Connected;
  const factory AppEvent.disconnected() = _Disconnected;
}
