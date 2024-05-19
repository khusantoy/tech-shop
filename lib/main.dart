import 'package:flutter/material.dart';
import 'package:tech_shop/pages/home_page.dart';
// import 'package:tech_shop/pages/onboarding_page.dart';
import 'package:tech_shop/pages/verification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DM Sans'),
      // home: const OnboardingPage(),
      home: const HomePage(),
    );
  }
}
