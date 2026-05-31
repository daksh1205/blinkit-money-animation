import 'package:flutter/material.dart';
import '../core/constants/style_constants.dart';

class BlinkitFeatureCard extends StatelessWidget {
  const BlinkitFeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.opacity,
    required this.slide,
  });

  final String icon;
  final String title;
  final String subtitle;
  final Animation<double> opacity;
  final Animation<Offset> slide;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: FractionalTranslation(
        translation: slide.value,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF3F3E41),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFF4D4C50)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                decoration: BoxDecoration(
                  color: const Color(0xFF17161B),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(icon, height: 50),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: AppStyles.b16.copyWith(color: Colors.white)),
                    const SizedBox(height: 4),
                    Text(subtitle,
                        style: AppStyles.reg14.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
