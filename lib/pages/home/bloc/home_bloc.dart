import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:swir/data/repositories/swapi_repository.dart';
import 'package:swir/data/models/models.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SWAPIRepository repository;

  HomeBloc({
    required this.repository,
  }) : super(const _HomeListLoading()) {
    on<HomeListEvent>((event, emit) async {
      emit(const HomeState.loading());
      try {
        await emit.forEach(repository.watchAllPeople(),
            onData: (List<Person> people) {
          if (people.isEmpty) {
            return const HomeState.empty();
          } else {
            return HomeState.content(list: people);
          }
        });
      } catch (_) {
        emit(const HomeState.error());
      }
    });
    on<DownloadDataPressed>((event, emit) async {
      if (state is _HomeListContent) {
        emit((state as _HomeListContent).copyWith(downloadingData: true));
        await repository.downloadData();
        emit((state as _HomeListContent).copyWith(downloadingData: false));
      }
    });
  }
}
