import 'package:flutter/material.dart';
import 'package:mor_trip_mate/theme/app_colors.dart';

class AppElevatedButtonTheme {
  static ElevatedButtonThemeData elevatedButtonThemeLight =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      );
  static OutlinedButtonThemeData outlinedButtonThemeLight =
      OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      );

  static ElevatedButtonThemeData elevatedButtonThemeDark =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      );
}

class AppOutlinedButtonTheme {
  static OutlinedButtonThemeData outlinedButtonThemeLight =
      OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          side: BorderSide(color: AppColors.primaryColor),
        ),
      );

  static OutlinedButtonThemeData outlinedButtonThemeDark =
      OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          side: BorderSide(color: AppColors.primaryColor),
        ),
      );
}
