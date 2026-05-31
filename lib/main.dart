import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/pages/blinkit_money_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
  );
  runApp(const BlinkitApp());
}

class BlinkitApp extends StatelessWidget {
  const BlinkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blinkit Money',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
        useMaterial3: true,
      ),
      home: const BlinkitMoneyScreen(),
    );
  }
}
