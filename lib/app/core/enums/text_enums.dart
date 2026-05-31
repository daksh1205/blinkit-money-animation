import 'package:flutter/material.dart';

enum TextFont {
  gilroyRegular,
  gilroyMedium,
  gilroySemiBold,
  gilroyBold,
  gilroyExtraBold;

  String get font => 'Gilroy';

  FontWeight get weight {
    switch (this) {
      case TextFont.gilroyRegular:
        return FontWeight.w400;
      case TextFont.gilroyMedium:
        return FontWeight.w500;
      case TextFont.gilroySemiBold:
        return FontWeight.w600;
      case TextFont.gilroyBold:
        return FontWeight.w700;
      case TextFont.gilroyExtraBold:
        return FontWeight.w800;
    }
  }
}

enum TextSize {
  eb48(48, 64 / 48),
  s36(36, 56 / 36),
  s32(32, 48 / 32),
  s28(28, 40 / 28),
  s24(24, 36 / 24),
  s20(20, 28 / 20),
  s18(18, 28 / 18),
  s16(16, 24 / 16),
  s14(14, 20 / 14),
  s12(12, 16 / 12),
  s10(10, 16 / 10);

  final double size;
  final double height;

  const TextSize(this.size, this.height);
}
