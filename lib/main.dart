import 'package:flutter/material.dart';
import 'package:widgets_basic/screen/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingScreen(), // Use your onboarding screen as the home screen
    );
  }
}
