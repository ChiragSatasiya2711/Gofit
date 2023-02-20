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
                height: height / 18,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(
                    color: Color(0xFF7E5DFF),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width / 2.5),
                      child: Center(
                        child: Text(
                          "Get Fitter",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/select.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(
                    color: Color(0xFF7E5DFF),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width / 3),
                      child: Center(
                        child: Text(
                          "Gain Weight",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/select.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width / 3),
                      child: Center(
                        child: Text(
                          "Lose Weight",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/select.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(
                    color: Color(0xFF7E5DFF),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width / 4),
                      child: Center(
                        child: Text(
                          "Building Muscles",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/select.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width / 4.5),
                      child: Center(
                        child: Text(
                          "Improving Endurance",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/select.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width / 2.1),
                      child: Center(
                        child: Text(
                          "Others",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/select.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height / 10,
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
