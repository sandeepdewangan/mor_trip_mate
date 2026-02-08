import 'package:flutter/material.dart';

Text headingLargeText(String title, BuildContext context) {
  return Text(
    title,
    style: Theme.of(context).textTheme.headlineLarge,
  );
}
