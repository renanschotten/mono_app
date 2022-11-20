import 'package:flutter/material.dart';
import 'package:mono/shared/colors/app_colors.dart';
import 'package:mono/shared/widgets/labels/label.dart';
import 'package:mono/shared/widgets/pill_button/pull_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.green3,
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(height: 30.0),
                const Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage('./assets/images/onboarding_2.png'),
                  ),
                ),
                const SizedBox(height: 30.0),
                Label.s36BoldGreen1Center(
                  text: 'Spend Smarter\nSave More',
                ),
                const SizedBox(height: 26.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: PillButton.greenGradient(
                    label: 'Get Started',
                    onTap: () => Navigator.of(context).pushReplacementNamed(
                      '/home_page',
                    ),
                  ),
                ),
                const SizedBox(height: 24.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
