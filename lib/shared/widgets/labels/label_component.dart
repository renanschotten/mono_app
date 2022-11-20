import 'package:flutter/material.dart';

class LabelComponent extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;

  const LabelComponent({
    super.key,
    required this.text,
    required this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
