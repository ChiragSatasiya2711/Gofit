import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gofit/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xFF6842FF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: width / 4, top: height / 3.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/new_image.png"),
              SizedBox(
                height: height / 3,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
              // Image.asset("assets/images/new_image_1.png"),
            ],
          ),
        ),
      ),
    );
  }
}
