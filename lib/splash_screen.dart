import 'dart:async';

import 'package:flutter/material.dart';
import 'package:site_galleria/onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    // Navigate to the home screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(24, 24, 36, 1),
    );
  }
}