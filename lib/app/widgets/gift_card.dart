import 'package:flutter/material.dart';
import '../core/constants/icon_constants.dart';
import '../core/constants/style_constants.dart';

class BlinkitGiftCardTile extends StatelessWidget {
  const BlinkitGiftCardTile({super.key, required this.opacity});

  final Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF202027),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: 36,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xFF68430E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(AppIcons.giftCard, height: 24),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Claim Gift Card',
                      style: AppStyles.b16.copyWith(color: Colors.white)),
                  Text(
                    'Enter gift card details to claim your gift card',
                    style: AppStyles.reg12.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.white54),
          ],
        ),
      ),
    );
  }
}
