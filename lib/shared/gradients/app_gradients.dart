import 'package:flutter/material.dart';
import 'package:mono/shared/colors/app_colors.dart';

class AppGradients {
  static const LinearGradient greenGradient = LinearGradient(
    colors: [
      AppColors.green1,
      AppColors.green2,
    ],
    transform: GradientRotation(-1.3),
  );
  static const LinearGradient whiteGreenGradient = LinearGradient(
    colors: [
      AppColors.white,
      AppColors.green3,
    ],
    stops: [0.4, 0.5],
  );
}
