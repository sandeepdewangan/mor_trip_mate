import 'package:flutter/material.dart';
import 'package:mor_trip_mate/core/constants/app_constants.dart';
import 'package:mor_trip_mate/core/constants/assets_constants.dart';
import 'package:mor_trip_mate/core/utils/utils.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: SafeArea(
          minimum: EdgeInsets.only(top: 50, bottom: 50),
          child: Center(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: getScreenHeight(context) * 0.50,
                  child: Image.asset(
                    AssetsConstants.logo,
                    width: getScreenWidth(context) * 0.90,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Create Account"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("Sign In"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
