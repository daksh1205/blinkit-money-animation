import 'package:flutter/material.dart';

import 'diamond_mesh_painter.dart';

class BlinkitMoneyBackground extends StatelessWidget {
  const BlinkitMoneyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final canvasHeight = screenHeight * 0.5;
    final fadeOutLimit = screenHeight * 0.22;

    return Container(
      color: const Color(0xFF17171C),
      child: SizedBox(
        height: canvasHeight,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(-0.3, -1.2),
                  radius: 1.6,
                  colors: [Color(0x33F8CB45), Colors.transparent],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  center: Alignment(-0.8, -1.0),
                  radius: 1.3,
                  colors: [Colors.white, Colors.transparent],
                  stops: [0.1, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: CustomPaint(
                size: Size(double.infinity, canvasHeight),
                painter: DiamondMeshPainter(fadeOutLimit: fadeOutLimit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
