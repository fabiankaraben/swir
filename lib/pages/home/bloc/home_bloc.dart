import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:swir/data/repositories/app_repository.dart';
import 'package:swir/data/models/models.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppRepository repository;

  HomeBloc({
    required this.repository,
  }) : super(const HomeState.all(isLoading: true)) {
    on<_Started>((event, emit) async {
      try {
        await emit.forEach(repository.watchAllPeople(),
            onData: (List<Person> people) {
          return state.copyWith(
            isLoading: false,
            list: people,
            error: '',
          );
        });
      } catch (e) {
        emit(state.copyWith(error: e.toString()));
      }
    });
    on<_DownloadDataPressed>((event, emit) async {
      emit(state.copyWith(isLoading: true, isDownloadingData: true));
      try {
        await repository.downloadData();
        emit(state.copyWith(
          isLoading: false,
          isDownloadingData: false,
          error: '',
        ));
      } catch (e) {
        emit(state.copyWith(error: e.toString()));
      }
    });
    on<_SearchCriteriaChanged>((event, emit) async {
      emit(state.copyWith(searchCriteria: event.criteria));
    });
  }
}
