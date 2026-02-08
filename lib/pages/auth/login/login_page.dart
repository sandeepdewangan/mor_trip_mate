import 'package:flutter/material.dart';
import 'package:mor_trip_mate/core/constants/app_constants.dart';
import 'package:mor_trip_mate/core/constants/assets_constants.dart';
import 'package:mor_trip_mate/core/utils/utils.dart';
import 'package:mor_trip_mate/pages/auth/widgets/auth_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Image.asset(
                  AssetsConstants.logo,
                  width: getScreenWidth(context) * 0.90,
                ),
                AuthSigninButton(
                  title: 'Google Sign In',
                  logo: AssetsConstants.google,
                  onCallback: () {},
                ),
                AuthSigninButton(
                  title: 'Apple Sign In',
                  logo: AssetsConstants.apple,
                  onCallback: () {},
                ),
                AuthSigninButton(
                  title: 'Facebook Sign In',
                  logo: AssetsConstants.facebook,
                  onCallback: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
