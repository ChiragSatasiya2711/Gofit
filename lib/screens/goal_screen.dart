import 'package:flutter/material.dart';

import '../comman_screen/back_continue_comman.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
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
                "What is your Goal?",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                "You can choose mare than one.Don’t worry. \nyou can always change it later.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: height / 48, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height / 1.5,
              ),
              BackContinueComman(
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
