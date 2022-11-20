import 'package:flutter/material.dart';
import 'package:mono/shared/colors/app_colors.dart';

class AppShadows {
  static const BoxShadow shadow1 = BoxShadow(
    color: AppColors.white,
    blurRadius: 7.0,
    spreadRadius: 1.5,
    offset: Offset(0, 2),
  );

  static const BoxShadow shadow2 = BoxShadow(
    color: AppColors.green4,
    blurRadius: 19.0,
    spreadRadius: 0.0,
    offset: Offset(0, 5),
  );

  static const BoxShadow shadow3 = BoxShadow(
    color: AppColors.green4,
    blurRadius: 19.0,
    spreadRadius: 0.0,
    offset: Offset(0, 7),
  );
}
