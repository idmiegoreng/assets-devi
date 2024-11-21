import 'package:flutter/material.dart';
import 'slide_fadil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SlideFadilJaidi(),
    );
  }
}