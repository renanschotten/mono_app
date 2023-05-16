import 'package:flutter/material.dart';
import 'package:mono/modules/home/home_page.dart';
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
      title: 'Mono Expanses & Incomes App',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingPage(),
        '/home_page': (context) => const HomePage(),
      },
    );
  }
}
