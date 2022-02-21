part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.started() = _Started;
  const factory DetailsEvent.reportRequested({required Person person}) =
      _ReportRequested;
}
