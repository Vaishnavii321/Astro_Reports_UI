import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_galleria/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(24, 24, 36, 1)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

