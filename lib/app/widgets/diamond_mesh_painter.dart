import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiamondMeshPainter extends CustomPainter {
  final double fadeOutLimit;

  DiamondMeshPainter({required this.fadeOutLimit});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFF8CB45).withAlpha(80)
      ..style = PaintingStyle.fill;

    const double spacingX = 14.0;
    const double spacingY = 10.0;
    const double maxSquareSize = 3.5;

    for (double y = 0; y < fadeOutLimit; y += spacingY) {
      double depthFactor = y / fadeOutLimit;
      double currentSize = maxSquareSize * (1.0 - depthFactor);

      if (currentSize <= 0.5) continue;

      bool isOffsetRow = (y / spacingY).round() % 2 != 0;
      double startX = isOffsetRow ? spacingX / 2 : 0;

      for (double x = startX; x < size.width; x += spacingX) {
        canvas.save();

        canvas.translate(x, y);
        canvas.rotate(math.pi / 4);

        canvas.drawRect(
          Rect.fromCenter(
            center: Offset.zero,
            width: currentSize,
            height: currentSize,
          ),
          paint,
        );

        canvas.restore();
      }
    }
  }

  @override
  bool shouldRepaint(covariant DiamondMeshPainter oldDelegate) {
    return oldDelegate.fadeOutLimit != fadeOutLimit;
  }
}
