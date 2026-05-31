import 'package:flutter/material.dart';

class BlinkitMoneyAppBar extends StatelessWidget {
  const BlinkitMoneyAppBar({super.key, required this.settingsOpacity});

  final Animation<double> settingsOpacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      right: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xFF3D382C),
            child: Icon(Icons.chevron_left, color: Colors.white),
          ),
          FadeTransition(
            opacity: settingsOpacity,
            child: const CircleAvatar(
              backgroundColor: Color(0xFF3D382C),
              child: Icon(Icons.settings, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
