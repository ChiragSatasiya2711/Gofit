import 'package:flutter/material.dart';
import 'package:gofit/screens/take_rest_screen.dart';
import 'package:gofit/screens/yoga_body_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const YogaBodyScreen(),
    );
  }
}
