import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.all()) {
    on<_Started>((event, emit) {});
    on<_Connected>((event, emit) {
      emit(state.copyWith(isOnline: true));
    });
    on<_Disconnected>((event, emit) {
      emit(state.copyWith(isOnline: false));
    });
    on<_LanguageChanged>((event, emit) {
      emit(state.copyWith(lang: event.lang));
    });
  }
}
