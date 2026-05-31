import 'package:flutter/material.dart';
import '../core/constants/icon_constants.dart';
import '../core/constants/style_constants.dart';

class BlinkitHeroCard extends StatelessWidget {
  const BlinkitHeroCard({
    super.key,
    required this.alignment,
    required this.walletScale,
    required this.blinkitOpacity,
    required this.blinkitSlide,
    required this.moneyOpacity,
    required this.moneySlide,
  });

  final Alignment alignment;
  final double walletScale;
  final Animation<double> blinkitOpacity;
  final Animation<Offset> blinkitSlide;
  final Animation<double> moneyOpacity;
  final Animation<Offset> moneySlide;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.scale(
            scale: walletScale,
            child: Image.asset(
              AppIcons.blinkitMoney,
              height: 120,
              errorBuilder: (_, __, ___) => Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8CB45),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child:
                      Icon(Icons.currency_rupee, size: 60, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FadeTransition(
            opacity: blinkitOpacity,
            child: FractionalTranslation(
              translation: blinkitSlide.value,
              child: Image.asset(
                AppIcons.blinkitLogo,
                height: 20,
                errorBuilder: (_, __, ___) => Text(
                  'blinkit',
                  style: AppStyles.sb20.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          FadeTransition(
            opacity: moneyOpacity,
            child: FractionalTranslation(
              translation: moneySlide.value,
              child: Text(
                'MONEY',
                style: AppStyles.eb48.copyWith(
                  color: Colors.white,
                  letterSpacing: 6,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
