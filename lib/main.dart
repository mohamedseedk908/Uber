import 'package:flutter/material.dart';
import 'package:uber/screens/app_splash_screens.dart';

void main() {
  runApp(const Uber());
}

class Uber extends StatelessWidget {
  const Uber({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppSplashScreen(),
    );
  }
}
