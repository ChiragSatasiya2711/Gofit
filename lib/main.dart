import 'package:flutter/material.dart';
import 'package:gofit/screens/home_screen.dart';
import 'package:gofit/screens/mybookmark_screen.dart';
import 'package:gofit/screens/notifaction2_screen.dart';
import 'package:gofit/screens/profile_screen.dart';
import 'package:gofit/screens/splash_screen.dart';
import 'package:gofit/screens/take_rest_screen.dart';
import 'package:gofit/screens/workoutLevel_screen.dart';
import 'package:gofit/screens/workout_activity_screen.dart';

import 'screens/search_screen.dart';
import 'screens/slider_screen.dart';

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
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}
