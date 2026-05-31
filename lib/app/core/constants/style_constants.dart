import 'package:blinkit_money_animation/app/core/enums/text_enums.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle getStyle({
    required TextSize size,
    required TextFont font,
    Color? color,
  }) =>
      TextStyle(
        fontSize: size.size,
        height: size.height,
        fontFamily: font.font,
        fontWeight: font.weight,
        color: color,
      );

  static TextStyle get eb48 =>
      getStyle(size: TextSize.eb48, font: TextFont.gilroyExtraBold);

  static TextStyle get b36 =>
      getStyle(size: TextSize.s36, font: TextFont.gilroyBold);
  static TextStyle get sb36 =>
      getStyle(size: TextSize.s36, font: TextFont.gilroySemiBold);
  static TextStyle get m36 =>
      getStyle(size: TextSize.s36, font: TextFont.gilroyMedium);
  static TextStyle get reg36 =>
      getStyle(size: TextSize.s36, font: TextFont.gilroyRegular);

  static TextStyle get b32 =>
      getStyle(size: TextSize.s32, font: TextFont.gilroyBold);
  static TextStyle get sb32 =>
      getStyle(size: TextSize.s32, font: TextFont.gilroySemiBold);
  static TextStyle get m32 =>
      getStyle(size: TextSize.s32, font: TextFont.gilroyMedium);
  static TextStyle get reg32 =>
      getStyle(size: TextSize.s32, font: TextFont.gilroyRegular);

  static TextStyle get b28 =>
      getStyle(size: TextSize.s28, font: TextFont.gilroyBold);
  static TextStyle get sb28 =>
      getStyle(size: TextSize.s28, font: TextFont.gilroySemiBold);
  static TextStyle get m28 =>
      getStyle(size: TextSize.s28, font: TextFont.gilroyMedium);
  static TextStyle get reg28 =>
      getStyle(size: TextSize.s28, font: TextFont.gilroyRegular);

  static TextStyle get b24 =>
      getStyle(size: TextSize.s24, font: TextFont.gilroyBold);
  static TextStyle get sb24 =>
      getStyle(size: TextSize.s24, font: TextFont.gilroySemiBold);
  static TextStyle get m24 =>
      getStyle(size: TextSize.s24, font: TextFont.gilroyMedium);
  static TextStyle get reg24 =>
      getStyle(size: TextSize.s24, font: TextFont.gilroyRegular);

  static TextStyle get b20 =>
      getStyle(size: TextSize.s20, font: TextFont.gilroyBold);
  static TextStyle get sb20 =>
      getStyle(size: TextSize.s20, font: TextFont.gilroySemiBold);
  static TextStyle get m20 =>
      getStyle(size: TextSize.s20, font: TextFont.gilroyMedium);
  static TextStyle get reg20 =>
      getStyle(size: TextSize.s20, font: TextFont.gilroyRegular);

  static TextStyle get b18 =>
      getStyle(size: TextSize.s18, font: TextFont.gilroyBold);
  static TextStyle get sb18 =>
      getStyle(size: TextSize.s18, font: TextFont.gilroySemiBold);
  static TextStyle get m18 =>
      getStyle(size: TextSize.s18, font: TextFont.gilroyMedium);
  static TextStyle get reg18 =>
      getStyle(size: TextSize.s18, font: TextFont.gilroyRegular);

  static TextStyle get b16 =>
      getStyle(size: TextSize.s16, font: TextFont.gilroyBold);
  static TextStyle get sb16 =>
      getStyle(size: TextSize.s16, font: TextFont.gilroySemiBold);
  static TextStyle get m16 =>
      getStyle(size: TextSize.s16, font: TextFont.gilroyMedium);
  static TextStyle get reg16 =>
      getStyle(size: TextSize.s16, font: TextFont.gilroyRegular);

  static TextStyle get b14 =>
      getStyle(size: TextSize.s14, font: TextFont.gilroyBold);
  static TextStyle get sb14 =>
      getStyle(size: TextSize.s14, font: TextFont.gilroySemiBold);
  static TextStyle get m14 =>
      getStyle(size: TextSize.s14, font: TextFont.gilroyMedium);
  static TextStyle get reg14 =>
      getStyle(size: TextSize.s14, font: TextFont.gilroyRegular);

  static TextStyle get b12 =>
      getStyle(size: TextSize.s12, font: TextFont.gilroyBold);
  static TextStyle get sb12 =>
      getStyle(size: TextSize.s12, font: TextFont.gilroySemiBold);
  static TextStyle get m12 =>
      getStyle(size: TextSize.s12, font: TextFont.gilroyMedium);
  static TextStyle get reg12 =>
      getStyle(size: TextSize.s12, font: TextFont.gilroyRegular);

  static TextStyle get b10 =>
      getStyle(size: TextSize.s10, font: TextFont.gilroyBold);
  static TextStyle get sb10 =>
      getStyle(size: TextSize.s10, font: TextFont.gilroySemiBold);
  static TextStyle get m10 =>
      getStyle(size: TextSize.s10, font: TextFont.gilroyMedium);
  static TextStyle get reg10 =>
      getStyle(size: TextSize.s10, font: TextFont.gilroyRegular);

  const AppStyles._();
}
