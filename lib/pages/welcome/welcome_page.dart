import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(),
            Text(
              "This is a sample test",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Create an Account")),
          ],
        ),
      ),
    );
  }
}
