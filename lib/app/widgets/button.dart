import 'package:flutter/material.dart';
import '../core/constants/style_constants.dart';
import 'gift_card.dart';

class BlinkitCtaCard extends StatelessWidget {
  const BlinkitCtaCard({super.key, required this.opacity});

  final Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xFF328616),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text(
                'Add Money',
                style: AppStyles.b18.copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 24),
          BlinkitGiftCardTile(opacity: opacity),
        ],
      ),
    );
  }
}
