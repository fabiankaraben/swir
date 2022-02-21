import 'dart:ui';

import 'package:swir/themes/colors/colors.dart';
import 'package:swir/themes/themes/themes.dart';

/// {@template simple_theme}
/// The simple home theme.
/// {@endtemplate}
class SimpleTheme extends HomeTheme {
  /// {@macro simple_theme}
  const SimpleTheme() : super();

  @override
  String get name => 'Simple';

  @override
  bool get hasTimer => false;

  @override
  bool get hasCountdown => false;

  @override
  Color get backgroundColor => HomeColors.white;

  @override
  Color get defaultColor => HomeColors.primary5;

  @override
  Color get hoverColor => HomeColors.primary3;

  @override
  Color get pressedColor => HomeColors.primary7;

  // @override
  // HomeLayoutDelegate get layoutDelegate => const SimpleHomeLayoutDelegate();

  // @override
  // List<Object?> get props => [
  //       name,
  //       hasTimer,
  //       hasCountdown,
  //       backgroundColor,
  //       defaultColor,
  //       hoverColor,
  //       pressedColor,
  //       // layoutDelegate,
  //     ];
}
