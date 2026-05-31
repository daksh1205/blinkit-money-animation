import 'package:flutter/material.dart';
import '../core/constants/icon_constants.dart';
import '../core/constants/style_constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/background.dart';
import '../widgets/button.dart';
import '../widgets/feature_card.dart';
import '../widgets/hero_card.dart';

class BlinkitMoneyScreen extends StatefulWidget {
  const BlinkitMoneyScreen({super.key});

  @override
  State<BlinkitMoneyScreen> createState() => _BlinkitMoneyScreenState();
}

class _BlinkitMoneyScreenState extends State<BlinkitMoneyScreen>
    with TickerProviderStateMixin {
  late final AnimationController _seq = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 6000),
  );

  late final Animation<Alignment> _globalShift = TweenSequence<Alignment>([
    TweenSequenceItem(
      tween: AlignmentTween(
        begin: const Alignment(0, -0.2),
        end: const Alignment(0, 0),
      ).chain(CurveTween(curve: Curves.easeInCubic)),
      weight: 10,
    ),
    TweenSequenceItem(
      tween: ConstantTween(const Alignment(0, 0)),
      weight: 23.33,
    ),
    TweenSequenceItem(
      tween: AlignmentTween(
        begin: const Alignment(0, 0),
        end: const Alignment(0, -0.2),
      ).chain(CurveTween(curve: Curves.easeInOutCubic)),
      weight: 16.67,
    ),
    TweenSequenceItem(
      tween: ConstantTween(const Alignment(0, -0.2)),
      weight: 16.67,
    ),
    TweenSequenceItem(
      tween: AlignmentTween(
        begin: const Alignment(0, -0.2),
        end: const Alignment(0, -0.85),
      ).chain(CurveTween(curve: Curves.easeInOutCubic)),
      weight: 8.33,
    ),
    TweenSequenceItem(
      tween: ConstantTween(const Alignment(0, -0.85)),
      weight: 25,
    ),
  ]).animate(_seq);

  late final Animation<double> _walletScale = TweenSequence<double>([
    TweenSequenceItem(tween: ConstantTween(1.0), weight: 10),
    TweenSequenceItem(
      tween: Tween(begin: 1.0, end: 0.75)
          .chain(CurveTween(curve: Curves.easeOutCubic)),
      weight: 3.33,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0.75, end: 1.0)
          .chain(CurveTween(curve: Curves.easeInOutCubic)),
      weight: 3.33,
    ),
    TweenSequenceItem(tween: ConstantTween(1.0), weight: 83.34),
  ]).animate(_seq);

  late final Animation<double> _blinkitOpacity = _fade(0.500, 0.550);
  late final Animation<Offset> _blinkitSlide = _slideOffset(0.500, 0.550, 0.5);

  late final Animation<double> _moneyOpacity = _fade(0.550, 0.600);
  late final Animation<Offset> _moneySlide = _slideOffset(0.550, 0.600, 0.5);

  late final Animation<double> _settingsOpacity = _fade(0.666, 0.750);

  late final Animation<double> _card1Opacity = _fade(0.750, 0.816);
  late final Animation<Offset> _card1Slide = _slideOffset(0.750, 0.816, 0.3);

  late final Animation<double> _card2Opacity = _fade(0.783, 0.850);
  late final Animation<Offset> _card2Slide = _slideOffset(0.783, 0.850, 0.3);

  late final Animation<double> _card3Opacity = _fade(0.816, 0.883);
  late final Animation<Offset> _card3Slide = _slideOffset(0.816, 0.883, 0.3);

  late final Animation<double> _ctaOpacity = _fade(0.850, 0.930);
  late final Animation<double> _footerOpacity = _fade(0.900, 1.000);

  Animation<double> _fade(double begin, double end) =>
      Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _seq, curve: Interval(begin, end, curve: Curves.easeIn)),
      );

  Animation<Offset> _slideOffset(double begin, double end, double dy) =>
      Tween<Offset>(begin: Offset(0, dy), end: Offset.zero).animate(
        CurvedAnimation(
            parent: _seq,
            curve: Interval(begin, end, curve: Curves.easeOutCubic)),
      );

  @override
  void initState() {
    super.initState();
    _seq.forward();
  }

  @override
  void dispose() {
    _seq.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: BlinkitMoneyBackground()),
          SafeArea(
            child: SizedBox.expand(
              child: AnimatedBuilder(
                animation: _seq,
                builder: (context, _) => Stack(
                  alignment: Alignment.center,
                  children: [
                    BlinkitHeroCard(
                      alignment: _globalShift.value,
                      walletScale: _walletScale.value,
                      blinkitOpacity: _blinkitOpacity,
                      blinkitSlide: _blinkitSlide,
                      moneyOpacity: _moneyOpacity,
                      moneySlide: _moneySlide,
                    ),
                    BlinkitMoneyAppBar(settingsOpacity: _settingsOpacity),
                    if (_seq.value > 0.7)
                      Positioned(
                        bottom: 40,
                        left: 20,
                        right: 20,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BlinkitFeatureCard(
                              icon: AppIcons.tap,
                              title: 'Single tap payments',
                              subtitle:
                                  'Enjoy seamless payments without the wait\nfor OTPs',
                              opacity: _card1Opacity,
                              slide: _card1Slide,
                            ),
                            const SizedBox(height: 12),
                            BlinkitFeatureCard(
                              icon: AppIcons.network,
                              title: 'Zero failures',
                              subtitle:
                                  'Zero payment failures ensure you\nnever miss an order',
                              opacity: _card2Opacity,
                              slide: _card2Slide,
                            ),
                            const SizedBox(height: 12),
                            BlinkitFeatureCard(
                              icon: AppIcons.refunds,
                              title: 'Real-time refunds',
                              subtitle:
                                  'No need to wait for refunds. blinkit\nMoney refunds are instant!',
                              opacity: _card3Opacity,
                              slide: _card3Slide,
                            ),
                            const SizedBox(height: 16),
                            BlinkitCtaCard(opacity: _ctaOpacity),
                            const SizedBox(height: 24),
                            FadeTransition(
                              opacity: _footerOpacity,
                              child: Text(
                                'Enjoy seamless one tap payments',
                                style: AppStyles.reg12
                                    .copyWith(color: const Color(0xFF42434C)),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
