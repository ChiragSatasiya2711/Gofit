import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/back_continue_comman.dart';

class PhysicalActivityLevelScreen extends StatefulWidget {
  const PhysicalActivityLevelScreen({Key? key}) : super(key: key);

  @override
  State<PhysicalActivityLevelScreen> createState() => _PhysicalActivityLevelScreenState();
}

class _PhysicalActivityLevelScreenState extends State<PhysicalActivityLevelScreen> {
  int _value = 0;
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
              GestureDetector(
                onTap: () => setState(() => _value = 0),
                child: Container(
                  height: 58,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: _value == 1 ? Colors.blue : Color(0xFFF2F2F2),
                  ),
                  child: const Center(
                    child: Text(
                      "Beginner",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 1),
                child: Container(
                  height: 58,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: _value == 0 ? Colors.blue : Color(0xFFF2F2F2),
                  ),
                  child: const Center(
                    child: Text(
                      "Intermediate",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 0),
                child: Container(
                  height: 58,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: _value == 0 ? Colors.blue : Color(0xFFF2F2F2),
                  ),
                  child: const Center(
                    child: Text(
                      "Advanced",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 4,
              ),
              const BackContinueComman(
                title: "Back",
                data: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
