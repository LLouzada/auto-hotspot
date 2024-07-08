import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: getColorScheme(isDarkMode: false),
      appBarTheme: getAppBarTheme(isDarkMode: false),
      scaffoldBackgroundColor: AppColors.background,
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: AppColors.accent,
      //   foregroundColor: Colors.white,
      // ),
      // buttonTheme: const ButtonThemeData(
      //   buttonColor: AppColors.accent,
      //   textTheme: ButtonTextTheme.primary,
      // ),
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: getColorScheme(isDarkMode: true),
      appBarTheme: getAppBarTheme(isDarkMode: true),
      scaffoldBackgroundColor: AppColors.primary,
      // textTheme: const TextTheme(),
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: AppColors.accent,
      //   foregroundColor: Colors.white,
      // ),
      // buttonTheme: const ButtonThemeData(
      //   buttonColor: AppColors.secondary,
      //   textTheme: ButtonTextTheme.primary,
      // ),
      useMaterial3: true,
    );
  }

  /// Returns a [ColorScheme] based on the [isDarkMode] parameter.
  static ColorScheme getColorScheme({@required isDarkMode}) {
    if (isDarkMode) {
      return const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.background,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
      );
    } else {
      return const ColorScheme.light(
        primary: AppColors.secondary,
        secondary: AppColors.accent,
        surface: AppColors.primary,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.white,
      );
    }
  }

  /// Returns an [AppBarTheme] based on the [isDarkMode] parameter.
  static AppBarTheme getAppBarTheme({@required isDarkMode}) {
    return const AppBarTheme(
      color: AppColors.accent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
      foregroundColor: Colors.white,
    );
  }
}
