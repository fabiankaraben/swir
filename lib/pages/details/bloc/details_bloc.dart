import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swir/data/models/models.dart';
import 'package:swir/data/repositories/app_repository.dart';

part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final AppRepository repository;

  DetailsBloc({
    required this.repository,
  }) : super(const DetailsState.all()) {
    on<_Started>((event, emit) async {});
    on<_ReportRequested>((event, emit) async {
      emit(state.copyWith(isSendingReport: true));
      try {
        await repository.sendInvaderReport(event.person);
        emit(state.copyWith(isSendingReport: false, error: ''));
      } catch (e) {
        emit(state.copyWith(isSendingReport: false, error: e.toString()));
      }
    });
  }
}
