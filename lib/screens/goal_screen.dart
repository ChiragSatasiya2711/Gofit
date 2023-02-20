import 'package:flutter/material.dart';
import 'package:gofit/screens/physical_activity_level_screen.dart';

import '../comman_screen/back_continue_comman.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  Map data = {
    "data": [
      {"data1": "Get Fitter", "data2": false},
      {"data1": "Gain Weight", "data2": false},
      {"data1": "Lose Weight", "data2": false},
      {"data1": "Building Muscles", "data2": false},
      {"data1": "Improving Endurance", "data2": false},
      {"data1": "Others", "data2": false},
    ],
  };

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
                height: height / 1.6,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: data["data"].length,
                  itemBuilder: (context, index) => Container(
                    height: height / 15,
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Color(0xFF7E5DFF),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "${data["data"][index]["data1"]}",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ),
                        Checkbox(
                          value: data["data"][index]["data2"],
                          onChanged: (bool? value) {
                            setState(() {
                              data["data"][index]["data2"] = value!;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              BackContinueComman(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhysicalActivityLevelScreen(),
                      ));
                },
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
