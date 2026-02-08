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
    // Sets the global focus color for borders, labels, and icons when focused.
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
    ),
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

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
    ),
  );
}

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    // Usage: Theme.of(context).textTheme.headlineLarge,
    headlineLarge: TextStyle().copyWith(
      fontSize: 40.0,
      color: Colors.black87,
    ),
    // titleLarge: TextStyle().copyWith(
    //   fontSize: 25.0,
    //   color: Colors.black87,
    //   fontWeight: FontWeight.w500,
    // ),
    titleMedium: TextStyle().copyWith(
      fontSize: 20.0,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),

    // headlineMedium: TextStyle().copyWith(
    //   fontSize: 30.0,
    //   color: Colors.black87,
    // ),
    // bodyMedium: TextStyle().copyWith(
    //   fontSize: 18.0,
    //   color: Colors.black87,
    // ),
    bodySmall: TextStyle().copyWith(
      fontSize: 16.0,
      color: Colors.black87,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    // Usage: Theme.of(context).textTheme.headlineLarge,
    headlineLarge: TextStyle().copyWith(
      fontSize: 40.0,
      color: Colors.white,
    ),
    // titleLarge: TextStyle().copyWith(
    //   fontSize: 25.0,
    //   color: Colors.white,
    //   fontWeight: FontWeight.w500,
    // ),
    titleMedium: TextStyle().copyWith(
      fontSize: 20.0,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),

    // headlineMedium: TextStyle().copyWith(
    //   fontSize: 30.0,
    //   color: Colors.white,
    // ),
    // bodyMedium: TextStyle().copyWith(
    //   fontSize: 18.0,
    //   color: Colors.white,
    // ),
    bodySmall: TextStyle().copyWith(
      fontSize: 16.0,
      color: Colors.white,
    ),
  );
}
