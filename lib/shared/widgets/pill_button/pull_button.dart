import 'package:flutter/material.dart';
import 'package:mono/shared/gradients/app_gradients.dart';
import 'package:mono/shared/shadows/app_shadows.dart';
import 'package:mono/shared/text_styles/text_styles.dart';
import 'package:mono/shared/widgets/pill_button/pill_button_component.dart';

class PillButton {
  static PillButtonComponent greenGradient({
    required String label,
    VoidCallback? onTap,
  }) {
    return PillButtonComponent(
      label: label,
      labelStyle: TextStyles.s18SemiBoldWhite,
      gradient: AppGradients.greenGradient,
      onTap: onTap,
      shadow: const [AppShadows.shadow1, AppShadows.shadow2],
    );
  }
}
