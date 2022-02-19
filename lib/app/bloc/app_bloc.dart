import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const AppState.initial(online: false));
    });
    on<_Connected>((event, emit) {
      emit(state.copyWith(online: true));
    });
    on<_Disconnected>((event, emit) {
      emit(state.copyWith(online: false));
    });
    on<_ChangeLanguage>((event, emit) {
      emit(state.copyWith(lang: event.lang));
    });
  }
}
