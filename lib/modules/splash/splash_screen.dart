import 'package:flutter/material.dart';
import 'package:mono/shared/gradients/app_gradients.dart';
import 'package:mono/shared/widgets/labels/label.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.addStatusListener(
      (status) {
        if (status.name == 'completed') {
          _animationController.reverse().then(
                (_) =>
                    Navigator.of(context).pushReplacementNamed('/onboarding'),
              );
        }
      },
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.greenGradient),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Label.s50BoldWhite(text: 'mono'),
          ),
        ),
      ),
    );
  }
}
