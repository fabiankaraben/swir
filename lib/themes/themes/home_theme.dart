import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:swir/layout/layout.dart';

/// {@template home_theme}
/// Template for creating custom home UI.
/// {@endtemplate}
abstract class HomeTheme extends Equatable {
  /// {@macro home_theme}
  const HomeTheme();

  /// The display name of this theme.
  String get name;

  /// Whether this theme displays the home timer.
  bool get hasTimer;

  /// Whether this theme displays the countdown
  /// from 3 to 0 seconds when the home is started.
  bool get hasCountdown;

  /// The background color of this theme.
  Color get backgroundColor;

  /// The default color of this theme.
  ///
  /// Used for home tiles and buttons.
  Color get defaultColor;

  /// The hover color of this theme.
  ///
  /// Used for the home tile that was hovered over.
  Color get hoverColor;

  /// The pressed color of this theme.
  ///
  /// Used for the home tile that was pressed.
  Color get pressedColor;

  /// The home layout delegate of this theme.
  ///
  /// Used for building sections of the home UI.
  // HomeLayoutDelegate get layoutDelegate;
}
