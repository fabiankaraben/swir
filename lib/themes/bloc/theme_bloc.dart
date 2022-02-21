// ignore_for_file: public_member_api_docs

import 'package:bloc/bloc.dart';
import 'package:swir/themes/theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({required this.themes}) : super(const ThemeState()) {
    on<ThemeChanged>(_onThemeChanged);
  }

  final List<HomeTheme> themes;

  void _onThemeChanged(ThemeChanged event, Emitter<ThemeState> emit) {
    emit(ThemeState(theme: themes[event.themeIndex]));
  }
}
