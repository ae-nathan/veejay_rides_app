import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const VeejayRidesApp());
}

class VeejayRidesApp extends StatelessWidget {
  const VeejayRidesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veejay Rides',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
