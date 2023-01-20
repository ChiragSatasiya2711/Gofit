import 'package:flutter/material.dart';
import 'package:gofit/screens/next_screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NextScreenOne(),
    );
  }
}
