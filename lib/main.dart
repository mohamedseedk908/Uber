import 'package:flutter/material.dart';
import 'package:uber/screens/auth/register_screen.dart';

void main() {
  runApp(const Uber());
}

class Uber extends StatelessWidget {
  const Uber({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
