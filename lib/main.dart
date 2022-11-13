import 'package:flutter/material.dart';
import 'package:mono/modules/onboarding/onboarding_page.dart';
import 'package:mono/modules/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mono Expanse & Income App',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingPage(),
      },
    );
  }
}
