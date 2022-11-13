import 'package:flutter/material.dart';
import 'package:mono/shared/gradients/app_gradients.dart';
import 'package:mono/shared/text_styles/text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage('./assets/images/onboarding_1.png'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                const Text(
                  'Spend Smarter\nSave More',
                  style: TextStyles.s36BoldInterGreen1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Container(
                    height: 64,
                    width: 358,
                    /* constraints: const BoxConstraints(
                      minHeight: 67,
                      minWidth: 358,
                    ), */
                    decoration: const BoxDecoration(
                      gradient: AppGradients.greenGradient,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(40.0),
                        right: Radius.circular(40.0),
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text('Get Started', textAlign: TextAlign.center),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
