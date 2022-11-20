import 'package:flutter/material.dart';
import 'package:mono/shared/text_styles/text_styles.dart';
import 'package:mono/shared/widgets/labels/label_component.dart';

class Label {
  static s50BoldWhite({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s50BoldWhite,
    );
  }

  static s36BoldGreen1Center({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s36BoldGreen1,
      textAlign: TextAlign.center,
    );
  }

  static s30BoldWhite({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s30BoldWhite,
    );
  }

  static s18SemiBoldWhite({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s18SemiBoldWhite,
    );
  }

  static s18SemiBoldBlack1({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s18SemiBoldBlack1,
    );
  }

  static s20SemiBoldWhite({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s20SemiBoldWhite,
    );
  }

  static s16MediumWhite({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s16MediumWhite,
    );
  }

  static s16SemiBoldWhite({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s16SemiBoldWhite,
    );
  }

  static s14RegularGray1({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s14RegularGray1,
    );
  }

  static s16MediumBlack1({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s16MediumBlack1,
    );
  }

  static s13RegularGray1({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s13RegularGray1,
    );
  }

  static s18SemiBoldGreen5({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s18SemiBoldGreen5,
    );
  }

  static s18SemiBoldRed1({required String text}) {
    return LabelComponent(
      text: text,
      style: TextStyles.s18SemiBoldRed1,
    );
  }
}
