import 'package:flutter/material.dart';
import 'package:mor_trip_mate/pages/auth/login/login_page.dart';
import 'package:mor_trip_mate/pages/welcome/welcome_page.dart';
import 'package:mor_trip_mate/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mor Trip Mate',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      home: LoginPage(),
    );
  }
}
