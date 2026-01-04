import 'package:flutter/material.dart';
import 'package:mor_trip_mate/theme/app_colors.dart';
import 'package:mor_trip_mate/theme/button_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scafoldBackground,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonThemeLight,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonThemeLight,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.scafoldBackgroundDark,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonThemeDark,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonThemeDark,
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

  static TextTheme darkTextTheme = TextTheme();
}
