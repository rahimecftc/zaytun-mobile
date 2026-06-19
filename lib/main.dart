import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ZaytunApp());
}

class ZaytunApp extends StatelessWidget {
  const ZaytunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZAYTUN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6B7A52),
          primary: const Color(0xFF6B7A52),
          secondary: const Color(0xFFC9784A),
          background: const Color(0xFFF6F1E9),
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
