import 'package:flutter/material.dart';

class PhysicalActivityLevelScreen extends StatefulWidget {
  const PhysicalActivityLevelScreen({Key? key}) : super(key: key);

  @override
  State<PhysicalActivityLevelScreen> createState() => _PhysicalActivityLevelScreenState();
}

class _PhysicalActivityLevelScreenState extends State<PhysicalActivityLevelScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: height / 20),
          child: Column(
            children: [
              Text(
                "Physical Activity Level?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                "Choose your regular activity level.This will \nhelp us to personalize plans for you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: height / 50, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height / 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  children: [],
                ),
              ),
              SizedBox(height: height / 6),
            ],
          ),
        ),
      ),
    );
  }
}
