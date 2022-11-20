import 'package:flutter/material.dart';

class PillButtonComponent extends StatelessWidget {
  final String label;
  final TextStyle labelStyle;
  final Color? color;
  final VoidCallback? onTap;
  final List<BoxShadow>? shadow;
  final LinearGradient? gradient;

  const PillButtonComponent({
    super.key,
    required this.label,
    required this.labelStyle,
    this.color,
    this.onTap,
    this.shadow,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 10.0,
      child: Container(
        height: 54,
        width: 358,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(40.0),
            right: Radius.circular(40.0),
          ),
          boxShadow: shadow,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: labelStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
