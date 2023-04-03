import 'package:flutter/material.dart';
import 'package:hospital/screens/splash_screen.dart';

void main() {
  runApp(Home_Screen());
}

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
