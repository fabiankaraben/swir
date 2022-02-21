part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.all({
    @Default(false) bool isSendingReport,
    @Default('') String error,
  }) = _DetailsStateAll;
}
