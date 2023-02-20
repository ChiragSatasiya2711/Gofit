import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/back_continue_comman.dart';

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
                height: height * 0.03,
              ),
              Text(
                "Choose your regular activity level.This will \nhelp us to personalize plans for you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: height / 50, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height / 5.6,
              ),
              CustomCheckBoxGroup(
                unSelectedColor: Color(0xFFF2F2F2),
                buttonLables: [
                  "Beginner",
                  "Intermediate",
                  "Advanced",
                ],
                buttonValuesList: [
                  "Beginner",
                  "Intermediate",
                  "Advanced",
                ],
                checkBoxButtonValues: (values) {
                  print(values);
                },
                horizontal: true,
                height: height * 0.07,
                selectedColor: Colors.blue,
                customShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Color(0xFFF2F2F2),
                    )),
                enableShape: true,
                padding: 5,
              ),
              SizedBox(
                height: height * 0.16,
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
