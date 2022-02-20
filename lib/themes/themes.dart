import 'package:flutter/material.dart';

class WSRITheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Color(0xFF13B9FF),
      ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: const Color(0xFF13B9FF),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      toggleableActiveColor: const Color(0xFF13B9FF),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      fontFamily: 'Montserrat',
      primaryColor: const Color(0xFFCC0996),
      appBarTheme: AppBarTheme(
        color: Colors.white.withOpacity(.04),
        elevation: 0,
        centerTitle: true,
      ),
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        accentColor: const Color(0xFFCC0996),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      toggleableActiveColor: const Color(0xFFCC0996),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.black.withOpacity(.9),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFCC0996),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: const Color(0xFFCC0996),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? const Color(0xFFCC0996)
              : null,
        ),
        trackColor: MaterialStateProperty.all(Colors.white38),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.black.withOpacity(.93),
      ),
    );
  }
}
