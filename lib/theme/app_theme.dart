import 'package:flutter/material.dart';
import 'package:mor_trip_mate/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scafoldBackground,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    // elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonThemeLight,
  );
}

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    // Usage: Theme.of(context).textTheme.headlineLarge,
    headlineLarge: TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24.0,
      color: Colors.black87,
    ),
  );
}

class AppElevatedButtonTheme {
  static ElevatedButtonThemeData elevatedButtonThemeLight =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );

  static ElevatedButtonThemeData elevatedButtonThemeDark =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
}
