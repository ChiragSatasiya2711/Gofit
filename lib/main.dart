import 'package:flutter/material.dart';
import 'package:gofit/screens/take_rest_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TakeRestScreen(),
    );
  }
}
